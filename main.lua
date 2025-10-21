local vu = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)

local Window = WindUI:CreateWindow({
    Title = "柯丽χ极速脚本",
    Icon = "rbxassetid://139743288604595",
    Author = "by kolilxi",
    Size = UDim2.fromOffset(300, 400),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 100,
    HasOutline = true,
    FontSize = 10,
    ItemHeight = 25
})

Window:EditOpenButton({
    Title = "柯丽χ极速脚本",
    Icon = "zap",
    CornerRadius = UDim.new(0, 5),
    StrokeThickness = 1,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    )
})

_G.EffectRemover = {
    Enabled = false,
    OriginalStates = {},
    RemovedObjects = {},
    DisabledParticles = {},
    DisabledLights = {},
    DisabledPostEffects = {}
}

local function saveOriginalState(object)
    if not _G.EffectRemover.OriginalStates[object] then
        _G.EffectRemover.OriginalStates[object] = {
            Enabled = object.Enabled,
            Visible = if object:IsA("BasePart") then object.Visible else nil,
            Transparency = if object:IsA("BasePart") then object.Transparency else nil
        }
    end
end

local function removeEffects()
    if _G.EffectRemover.Enabled then return end
    
    _G.EffectRemover.Enabled = true
    
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Smoke") or 
           obj:IsA("Sparkles") or obj:IsA("Beam") or obj:IsA("Trail") then
            saveOriginalState(obj)
            obj.Enabled = false
            table.insert(_G.EffectRemover.DisabledParticles, obj)
            
        elseif obj:IsA("PointLight") or obj:IsA("SurfaceLight") or obj:IsA("SpotLight") then
            saveOriginalState(obj)
            obj.Enabled = false
            table.insert(_G.EffectRemover.DisabledLights, obj)
            
        elseif obj:IsA("Decal") or obj:IsA("Texture") then
            if obj.Name:lower():find("effect") or obj.Name:lower():find("glow") then
                saveOriginalState(obj)
                obj.Transparency = 1
                table.insert(_G.EffectRemover.RemovedObjects, obj)
            end
        end
    end
    
    local plr = Players.LocalPlayer
    if plr.Character then
        for _, obj in pairs(plr.Character:GetDescendants()) do
            if obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Smoke") or 
               obj:IsA("Sparkles") or obj:IsA("Beam") or obj.Name:find("Effect") then
                saveOriginalState(obj)
                if obj:IsA("ParticleEmitter") then
                    obj.Enabled = false
                elseif obj:IsA("BasePart") then
                    obj.Transparency = 1
                end
                table.insert(_G.EffectRemover.RemovedObjects, obj)
            end
        end
    end
    
    local uiElementsToRemove = {
        "sweatPart", "airPart", "breathPart", "energyPart",
        "strengthFrame", "durabilityFrame", "agilityFrame",
        "EffectGui", "ParticleGui", "GlowEffect", "ShineEffect"
    }
    
    for _, elementName in pairs(uiElementsToRemove) do
        local element = workspace:FindFirstChild(elementName)
        if element then
            saveOriginalState(element)
            element:Destroy()
            table.insert(_G.EffectRemover.RemovedObjects, element)
        end
        
        if plr.Character then
            local charElement = plr.Character:FindFirstChild(elementName)
            if charElement then
                saveOriginalState(charElement)
                charElement:Destroy()
                table.insert(_G.EffectRemover.RemovedObjects, charElement)
            end
        end
    end
    
    local repStorage = game:GetService("ReplicatedStorage")
    for _, elementName in pairs(uiElementsToRemove) do
        local element = repStorage:FindFirstChild(elementName)
        if element then
            saveOriginalState(element)
            element:Destroy()
            table.insert(_G.EffectRemover.RemovedObjects, element)
        end
    end
    
    local lightingEffects = {
        "Blur", "ColorCorrection", "SunRays", "DepthOfField",
        "Bloom", "Atmosphere", "Sky"
    }
    
    for _, effectName in pairs(lightingEffects) do
        local effect = Lighting:FindFirstChild(effectName)
        if effect then
            saveOriginalState(effect)
            if effect:IsA("BlurEffect") or effect:IsA("ColorCorrectionEffect") or 
               effect:IsA("SunRaysEffect") or effect:IsA("BloomEffect") then
                effect.Enabled = false
                table.insert(_G.EffectRemover.DisabledPostEffects, effect)
            end
        end
    end
    
    if Lighting:FindFirstChildOfClass("Sky") then
        local sky = Lighting:FindFirstChildOfClass("Sky")
        saveOriginalState(sky)
        sky.SkyboxBk = "rbxasset://textures/sky/sky_512_bk.tex"
        sky.SkyboxDn = "rbxasset://textures/sky/sky_512_dn.tex"
        sky.SkyboxFt = "rbxasset://textures/sky/sky_512_ft.tex"
        sky.SkyboxLf = "rbxasset://textures/sky/sky_512_lf.tex"
        sky.SkyboxRt = "rbxasset://textures/sky/sky_512_rt.tex"
        sky.SkyboxUp = "rbxasset://textures/sky/sky_512_up.tex"
    end
end

local function restoreEffects()
    if not _G.EffectRemover.Enabled then return end
    
    for _, obj in pairs(_G.EffectRemover.DisabledParticles) do
        if obj and obj.Parent then
            local original = _G.EffectRemover.OriginalStates[obj]
            if original then
                obj.Enabled = original.Enabled
            end
        end
    end
    
    for _, obj in pairs(_G.EffectRemover.DisabledLights) do
        if obj and obj.Parent then
            local original = _G.EffectRemover.OriginalStates[obj]
            if original then
                obj.Enabled = original.Enabled
            end
        end
    end
    
    for _, obj in pairs(_G.EffectRemover.DisabledPostEffects) do
        if obj and obj.Parent then
            local original = _G.EffectRemover.OriginalStates[obj]
            if original then
                obj.Enabled = original.Enabled
            end
        end
    end
    
    for _, obj in pairs(_G.EffectRemover.RemovedObjects) do
        if obj and obj.Parent then
            local original = _G.EffectRemover.OriginalStates[obj]
            if original then
                if obj:IsA("BasePart") then
                    obj.Transparency = original.Transparency or 0
                    if original.Visible ~= nil then
                        obj.Visible = original.Visible
                    end
                elseif obj:IsA("ParticleEmitter") then
                    obj.Enabled = original.Enabled
                end
            end
        end
    end
    
    _G.EffectRemover.Enabled = false
    _G.EffectRemover.RemovedObjects = {}
    _G.EffectRemover.DisabledParticles = {}
    _G.EffectRemover.DisabledLights = {}
    _G.EffectRemover.DisabledPostEffects = {}
end

_G.fpsBoost = false
_G.removeEffects = false

local optimizeTab = Window:Tab({Title = "优化", Icon = "cpu"})

optimizeTab:Toggle({
    Title = "黑屏",
    Value = false,
    Callback = function(state)
        _G.fpsBoost = state
        if not _G.blackScreen then
            _G.blackScreen = Instance.new("ScreenGui")
            local blackFrame = Instance.new("Frame")
            blackFrame.Size = UDim2.new(1, 0, 1, 0)
            blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
            blackFrame.BorderSizePixel = 0
            blackFrame.Parent = _G.blackScreen
            _G.blackScreen.Parent = Players.LocalPlayer.PlayerGui
        end
        
        _G.blackScreen.Enabled = state
        
        if state then
            RunService:Set3dRenderingEnabled(false)
        else
            RunService:Set3dRenderingEnabled(true)
        end
    end
})

optimizeTab:Toggle({
    Title = "删除特效",
    Value = false,
    Callback = function(state)
        _G.removeEffects = state
        if state then
            removeEffects()
        else
            restoreEffects()
        end
    end
})

optimizeTab:Button({
    Title = "强力删除特效",
    Callback = function()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Smoke") or 
               obj:IsA("Sparkles") or obj:IsA("Beam") or obj:IsA("Trail") then
                obj:Destroy()
            end
        end
        
        local plr = Players.LocalPlayer
        if plr.Character then
            for _, obj in pairs(plr.Character:GetDescendants()) do
                if obj:IsA("ParticleEmitter") or obj.Name:find("Effect") then
                    obj:Destroy()
                end
            end
        end
        
        local uiElements = {"sweatPart", "airPart", "strengthFrame", "durabilityFrame", "agilityFrame"}
        for _, element in pairs(uiElements) do
            local found = workspace:FindFirstChild(element)
            if found then found:Destroy() end
            
            if plr.Character then
                local charElement = plr.Character:FindFirstChild(element)
                if charElement then charElement:Destroy() end
            end
        end
    end
})

optimizeTab:Button({
    Title = "恢复默认",
    Callback = function()
        _G.fpsBoost = false
        _G.removeEffects = false
        
        if _G.blackScreen then
            _G.blackScreen.Enabled = false
        end
        RunService:Set3dRenderingEnabled(true)
        
        restoreEffects()
    end
})

local function createOrbCollector(orbType, location)
    return function()
        for i = 1, 70 do
            local args = {[1] = "collectOrb", [2] = orbType, [3] = location}
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
        end
    end
end

local teleportTab = Window:Tab({Title = "传送", Icon = "navigation"})

local teleportLocations = {
    {name = "丛林", coords = Vector3.new(-15269.2353515625, 399.1441955566406, 5571.48583984375)},
    {name = "传奇公路", coords = Vector3.new(-13096.9658203125, 217.78936767578125, 5910.5673828125)},
    {name = "雪地", coords = Vector3.new(-11044.193359375, 59.82936477661133, 4071.960205078125)},
    {name = "岩浆城", coords = Vector3.new(-13079.0673828125, 59.82936477661133, 4074.359619140625)}
}

local function safeTeleport(position)
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        if character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 then
            character.HumanoidRootPart.CFrame = CFrame.new(position)
        end
    end
end

for _, location in ipairs(teleportLocations) do
    teleportTab:Button({
        Title = location.name,
        Callback = function()
            safeTeleport(location.coords)
        end
    })
end

local regions = {
    {
        name = "雪地",
        icon = "cloud-snow",
        location = "Snow City",
        orbs = {"红", "橙", "黄"}
    },
    {
        name = "丛林", 
        icon = "tree",
        location = "Speed Jungle",
        orbs = {"蓝", "红", "以太", "橙", "黄"}
    },
    {
        name = "岩浆城",
        icon = "flame", 
        location = "Magma City",
        orbs = {"黄", "橙", "红", "以太"}
    },
    {
        name = "传奇公路",
        icon = "award",
        location = "Legends Highway", 
        orbs = {"以太", "橙", "蓝", "黄", "红"}
    }
}

for _, region in ipairs(regions) do
    local tab = Window:Tab({Title = region.name, Icon = region.icon})
    
    local orbMapping = {
        ["红"] = "Red Orb",
        ["橙"] = "Orange Orb", 
        ["黄"] = "Yellow Orb",
        ["蓝"] = "Blue Orb",
        ["以太"] = "Ethereal Orb"
    }
    
    for _, orbName in ipairs(region.orbs) do
        local orbType = orbMapping[orbName]
        local toggleName = "auto" .. orbType:gsub(" ", "") .. region.name:gsub(" ", "")
        
        _G[toggleName] = false
        
        local function autoCollect()
            while _G[toggleName] do
                local success, err = pcall(function()
                    createOrbCollector(orbType, region.location)()
                end)
                if not success then
                    _G[toggleName] = false
                    break
                end
                wait(0.1)
            end
        end
        
        tab:Toggle({
            Title = orbName,
            Value = false,
            Callback = function(state)
                _G[toggleName] = state
                if state then
                    spawn(autoCollect)
                end
            end
        })
    end
end

local petShopTab = Window:Tab({Title = "宠物", Icon = "shopping-bag"})

local petsToBuy = {
    "Hypersonic",
    "1st Trail"
}

for _, petName in ipairs(petsToBuy) do
    petShopTab:Button({
        Title = petName,
        Callback = function()
            local fullName = petName
            if petName == "Hypersonic" then
                fullName = "Hypersonic Pegasus"
            end
            local pet = game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild(fullName)
            if pet then
                local success, err = pcall(function()
                    local args = {[1] = pet}
                    game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(unpack(args))
                end)
            end
        end
    })
end

local rebirthTab = Window:Tab({Title = "重生", Icon = "refresh-cw"})

_G.autoRebirth = false

function autoRebirthFunction()
    while _G.autoRebirth do
        local success, err = pcall(function()
            local args = {[1] = "rebirthRequest"}
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
        end)
        if not success then
            _G.autoRebirth = false
            break
        end
        wait(0.5)
    end
end

rebirthTab:Toggle({
    Title = "自动重生",
    Value = false,
    Callback = function(state)
        _G.autoRebirth = state
        if state then
            spawn(autoRebirthFunction)
        end
    end
})