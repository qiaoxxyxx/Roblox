local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/iyoulin/iyoulin/refs/heads/main/ato"))()
local vu,RS,Plrs,Lighting = game:GetService("VirtualUser"),game:GetService("RunService"),game:GetService("Players"),game:GetService("Lighting")

-- 防挂机
Plrs.LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- 创建窗口
local Window = WindUI:CreateWindow({
    Title = "柯丽χ极速脚本", Icon = "rbxassetid://139743288604595", Author = "by kolilxi",
    Size = UDim2.fromOffset(300,400), Transparent = true, Theme = "Dark",
    SideBarWidth = 100, HasOutline = true, FontSize = 10, ItemHeight = 25
})

Window:EditOpenButton({
    Title = "柯丽χ极速脚本", Icon = "zap", CornerRadius = UDim.new(0,5), StrokeThickness = 1,
    Color = ColorSequence.new(Color3.fromHex("FF0F7B"),Color3.fromHex("F89B29"))
})

-- 特效管理
_G.EffectRemover = {Enabled=false,OriginalStates={},RemovedObjects={},DisabledParticles={},DisabledLights={},DisabledPostEffects={}}

local function saveState(obj)
    if not _G.EffectRemover.OriginalStates[obj] then
        _G.EffectRemover.OriginalStates[obj] = {
            Enabled = obj.Enabled,
            Visible = if obj:IsA("BasePart") then obj.Visible else nil,
            Transparency = if obj:IsA("BasePart") then obj.Transparency else nil
        }
    end
end

local function removeEffects()
    if _G.EffectRemover.Enabled then return end
    _G.EffectRemover.Enabled = true
    
    local effects = {"ParticleEmitter","Fire","Smoke","Sparkles","Beam","Trail"}
    local lights = {"PointLight","SurfaceLight","SpotLight"}
    local uiElements = {"sweatPart","airPart","breathPart","energyPart","strengthFrame","durabilityFrame","agilityFrame","EffectGui","ParticleGui","GlowEffect","ShineEffect"}
    local lightingEffects = {"Blur","ColorCorrection","SunRays","DepthOfField","Bloom","Atmosphere","Sky"}
    
    for _,obj in pairs(workspace:GetDescendants()) do
        if table.find(effects, obj.ClassName) then
            saveState(obj) obj.Enabled = false table.insert(_G.EffectRemover.DisabledParticles, obj)
        elseif table.find(lights, obj.ClassName) then
            saveState(obj) obj.Enabled = false table.insert(_G.EffectRemover.DisabledLights, obj)
        elseif (obj:IsA("Decal") or obj:IsA("Texture")) and (obj.Name:lower():find("effect") or obj.Name:lower():find("glow")) then
            saveState(obj) obj.Transparency = 1 table.insert(_G.EffectRemover.RemovedObjects, obj)
        end
    end
    
    local plr = Plrs.LocalPlayer
    if plr.Character then
        for _,obj in pairs(plr.Character:GetDescendants()) do
            if table.find(effects, obj.ClassName) or obj.Name:find("Effect") then
                saveState(obj)
                if obj:IsA("ParticleEmitter") then obj.Enabled = false elseif obj:IsA("BasePart") then obj.Transparency = 1 end
                table.insert(_G.EffectRemover.RemovedObjects, obj)
            end
        end
    end
    
    for _,name in pairs(uiElements) do
        for _,loc in pairs({workspace, plr.Character, game:GetService("ReplicatedStorage")}) do
            if loc and loc:FindFirstChild(name) then
                local elem = loc:FindFirstChild(name) saveState(elem) elem:Destroy()
                table.insert(_G.EffectRemover.RemovedObjects, elem)
            end
        end
    end
    
    for _,effect in pairs(lightingEffects) do
        local e = Lighting:FindFirstChild(effect)
        if e then saveState(e) e.Enabled = false table.insert(_G.EffectRemover.DisabledPostEffects, e) end
    end
    
    local sky = Lighting:FindFirstChildOfClass("Sky")
    if sky then
        saveState(sky)
        local tex = "rbxasset://textures/sky/sky_512_"
        for _,side in pairs({"Bk","Dn","Ft","Lf","Rt","Up"}) do sky["Skybox"..side] = tex..side:lower()..".tex" end
    end
end

local function restoreEffects()
    if not _G.EffectRemover.Enabled then return end
    
    local function restoreList(list, prop) 
        for _,obj in pairs(list) do 
            if obj and obj.Parent then 
                local orig = _G.EffectRemover.OriginalStates[obj] 
                if orig then obj[prop] = orig[prop] end 
            end 
        end 
    end
    
    restoreList(_G.EffectRemover.DisabledParticles, "Enabled")
    restoreList(_G.EffectRemover.DisabledLights, "Enabled") 
    restoreList(_G.EffectRemover.DisabledPostEffects, "Enabled")
    
    for _,obj in pairs(_G.EffectRemover.RemovedObjects) do
        if obj and obj.Parent then
            local orig = _G.EffectRemover.OriginalStates[obj]
            if orig then
                if obj:IsA("BasePart") then 
                    obj.Transparency = orig.Transparency or 0 
                    if orig.Visible ~= nil then obj.Visible = orig.Visible end
                elseif obj:IsA("ParticleEmitter") then obj.Enabled = orig.Enabled end
            end
        end
    end
    
    _G.EffectRemover = {Enabled=false,OriginalStates={},RemovedObjects={},DisabledParticles={},DisabledLights={},DisabledPostEffects={}}
end

-- 优化标签页
local optTab = Window:Tab({Title = "优化", Icon = "cpu"})

optTab:Toggle({Title = "黑屏", Value = false, Callback = function(state)
    _G.fpsBoost = state
    if not _G.blackScreen then
        _G.blackScreen = Instance.new("ScreenGui")
        local f = Instance.new("Frame") 
        f.Size,f.BackgroundColor3,f.BorderSizePixel = UDim2.new(1,0,1,0),Color3.new(0,0,0),0
        f.Parent = _G.blackScreen 
        _G.blackScreen.Parent = Plrs.LocalPlayer.PlayerGui
    end
    _G.blackScreen.Enabled = state 
    RS:Set3dRenderingEnabled(not state)
end})

optTab:Toggle({Title = "删除特效", Value = false, Callback = function(state)
    _G.removeEffects = state
    if state then removeEffects() else restoreEffects() end
end})

optTab:Button({Title = "强力删除特效", Callback = function()
    for _,obj in pairs(workspace:GetDescendants()) do 
        if table.find({"ParticleEmitter","Fire","Smoke","Sparkles","Beam","Trail"}, obj.ClassName) then 
            obj:Destroy() 
        end 
    end
    local plr = Plrs.LocalPlayer 
    if plr.Character then 
        for _,obj in pairs(plr.Character:GetDescendants()) do 
            if obj:IsA("ParticleEmitter") or obj.Name:find("Effect") then 
                obj:Destroy() 
            end 
        end 
    end
    for _,name in pairs({"sweatPart","airPart","strengthFrame","durabilityFrame","agilityFrame"}) do 
        for _,loc in pairs({workspace, plr.Character}) do 
            if loc and loc:FindFirstChild(name) then loc:FindFirstChild(name):Destroy() end 
        end 
    end
end})

optTab:Button({Title = "恢复默认", Callback = function()
    _G.fpsBoost, _G.removeEffects = false, false
    if _G.blackScreen then _G.blackScreen.Enabled = false end
    RS:Set3dRenderingEnabled(true) 
    restoreEffects()
end})

-- 吸球功能
local function orbCollect(orbType, location) 
    return function() 
        for i=1,74 do 
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb",orbType,location) 
        end 
    end 
end

-- 传送功能
local tpTab = Window:Tab({Title = "传送", Icon = "navigation"})
local locations = {
    {name = "丛林", coords = Vector3.new(-15269.25, 399.16, 5571.45)},
    {name = "传奇公路", coords = Vector3.new(-13096.9, 217.78, 5910.55)},
    {name = "雪地", coords = Vector3.new(-11044.15, 59.8, 4071.9)},
    {name = "岩浆城", coords = Vector3.new(-13079.05, 59.82, 4074.3)}
}

for _,loc in ipairs(locations) do 
    tpTab:Button({Title = loc.name, Callback = function()
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
            char.HumanoidRootPart.CFrame = CFrame.new(loc.coords)
        end
    end}) 
end

-- 自动吸球系统
local orbMap = {
    ["红"]="Red Orb",["橙"]="Orange Orb",["黄"]="Yellow Orb",
    ["蓝"]="Blue Orb",["以太"]="Ethereal Orb",["地狱宝石"]="Infernal Gem"
}

local regions = {
    {name = "雪地", icon = "cloud-snow", location = "Snow City", orbs = {"红","橙","黄"}},
    {name = "丛林", icon = "tree", location = "Speed Jungle", orbs = {"蓝","红","以太","橙","黄"}},
    {name = "岩浆城", icon = "flame", location = "Magma City", orbs = {"黄","橙","红","以太"}},
    {name = "传奇公路", icon = "award", location = "Legends Highway", orbs = {"以太","橙","蓝","黄","红"}},
    {name = "城市", icon = "building", location = "City", orbs = {"红","橙","黄","蓝","地狱宝石"}}
}

for _,reg in ipairs(regions) do
    local tab = Window:Tab({Title = reg.name, Icon = reg.icon})
    for _,orb in ipairs(reg.orbs) do
        local toggleName = "auto"..orbMap[orb]:gsub(" ","")..reg.name:gsub(" ","")
        _G[toggleName] = false
        tab:Toggle({Title = orb, Value = false, Callback = function(state)
            _G[toggleName] = state
            if state then 
                spawn(function() 
                    while _G[toggleName] do 
                        pcall(orbCollect(orbMap[orb], reg.location)) 
                        wait(0.1) 
                    end 
                end) 
            end
        end})
    end
end

-- 宠物商店
local petTab = Window:Tab({Title = "宠物", Icon = "shopping-bag"})
for _,pet in ipairs({"Hypersonic","Swift Samurai","1st Trail"}) do 
    petTab:Button({Title = pet, Callback = function()
        local fullName = pet == "Hypersonic" and "Hypersonic Pegasus" or pet
        local p = game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild(fullName)
        if p then 
            local success = pcall(function() 
                game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(p) 
            end)
            print(success and "成功购买宠物: "..fullName or "购买失败: "..fullName)
        else
            print("未找到宠物: "..fullName)
        end
    end}) 
end

-- 自动重生
local rebirthTab = Window:Tab({Title = "重生", Icon = "refresh-cw"})
_G.autoRebirth = false
rebirthTab:Toggle({Title = "自动重生", Value = false, Callback = function(state)
    _G.autoRebirth = state
    if state then 
        spawn(function() 
            while _G.autoRebirth do 
                pcall(function() 
                    game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest") 
                end) 
                wait(0.1) 
            end 
        end) 
    end
end})
