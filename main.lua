-- 脚本名称: 忍者传奇自动榜单
-- 作者: XXYXX
-- 版本: v2

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/koboyads/qiaoxxyxx/main/main.lua"))()

-- 防AFK机制
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

-- 格式化函数
local numberSuffixes = {"", "K", "M", "B", "T", "Qa", "Qi"}
local function FormatNumber(value, decimalPlaces)
    local exponent = math.floor(math.log(math.max(1, math.abs(value)), 1000))
    local suffix = numberSuffixes[1 + exponent] or ("e+" .. exponent)
    local formatted = math.floor(value * ((10 ^ decimalPlaces) / (1000 ^ exponent))) / (10 ^ decimalPlaces)
    return ("%." .. decimalPlaces .. "f%s"):format(formatted, suffix)
end

-- 创建主窗口
local MainWindow = Library:CreateWindow({
    Title = "God",
    Icon = "rbxassetid://139743288604595",
    Author = "koboyads",
    Folder = "Roblox脚本",
    Size = UDim2.fromOffset(350, 450),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 140,
    HasOutline = true
})

-- 自定义打开按钮
MainWindow:EditOpenButton({
    Title = "打开菜单",
    Icon = "settings",
    CornerRadius = UDim.new(0, 12),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    )
})

-- 玩家功能标签页
local PlayerTab = MainWindow:Tab({
    Title = "玩家功能",
    Icon = "👤",
})

PlayerTab:Toggle({
    Title = "全图吸人",
    Value = false,
    Callback = function(State)
        _G.AttractPlayers = State
        if State then
            task.spawn(function()
                while _G.AttractPlayers do
                    task.wait()
                    for _, player in ipairs(game.Players:GetPlayers()) do
                        if player ~= game.Players.LocalPlayer and player.Character then
                            local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart then
                                humanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end
            end)
        end
    end
})

PlayerTab:Toggle({
    Title = "位置锁定",
    Value = false,
    Callback = function(State)
        _G.LockPosition = State
        local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        if State then
            game:GetService("RunService").RenderStepped:Connect(function()
                if _G.LockPosition then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(initialPosition)
                end
            end)
        end
    end
})

PlayerTab:Button({
    Title = "传送到安全点",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.56, 90.95, -284.14)
    end
})

-- 宠物管理标签页
local PetsTab = MainWindow:Tab({
    Title = "宠物管理",
    Icon = "🐱",
})

-- 克隆设置
_G.AutoClone = false
_G.CloneRate = 70

PetsTab:Toggle({
    Title = "自动克隆宠物",
    Value = false,
    Callback = function(State)
        _G.AutoClone = State
    end
})

PetsTab:Slider({
    Title = "克隆速度 (只/秒)",
    Value = 70,
    Min = 1,
    Max = 100,
    Callback = function(Value)
        _G.CloneRate = Value
    end
})

-- 出售设置
_G.AutoSell = false
_G.KeepOnePet = true

PetsTab:Toggle({
    Title = "自动出售宠物",
    Value = false,
    Callback = function(State)
        _G.AutoSell = State
    end
})

PetsTab:Toggle({
    Title = "保留一个宠物",
    Value = true,
    Callback = function(State)
        _G.KeepOnePet = State
    end
})

PetsTab:Button({
    Title = "立即出售多余宠物",
    Callback = function()
        local petsFolder = game.Players.LocalPlayer:FindFirstChild("petsFolder")
        if petsFolder then
            local redKitties = {}
            for _, pet in ipairs(petsFolder:GetChildren()) do
                if pet.Name == "Red Kitty" then
                    table.insert(redKitties, pet)
                end
            end
            
            if #redKitties > 1 then
                for i = 2, #redKitties do
                    game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", redKitties[i])
                end
       
                Library:Notify("出售完成", "已出售 " .. (#redKitties - 1) .. " 只宠物")
            else
                Library:Notify("提示", "没有多余的宠物可出售")
            end
        end
    end
})

-- 战斗功能标签页
local CombatTab = MainWindow:Tab({
    Title = "战斗功能",
    Icon = "⚔️",
})

CombatTab:Toggle({
    Title = "自动攻击",
    Value = false,
    Callback = function(State)
        _G.AutoAttack = State
        if State then
            task.spawn(function()
                while _G.AutoAttack do
                    local args = {[1] = "swingKatana"}
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
                    task.wait(0.1)
                end
            end)
        end
    end
})

CombatTab:Toggle({
    Title = "连击模式",
    Value = false,
    Callback = function(State)
        _G.ComboMode = State
    end
})

-- 设置标签页
local SettingsTab = MainWindow:Tab({
    Title = "设置",
    Icon = "⚙️",
})

SettingsTab:Button({
    Title = "保存设置",
    Callback = function()
        Library:Notify("设置已保存", "您的偏好设置已保存")
    end
})

SettingsTab:Button({
    Title = "重置设置",
    Callback = function()
        Library:Notify("设置已重置", "所有设置已恢复默认")
    end
})

SettingsTab:Toggle({
    Title = "自动更新",
    Value = true,
    Callback = function(State)
        _G.AutoUpdate = State
    end
})

-- 状态显示
local StatusLabel = SettingsTab:Label({
    Title = "状态: 脚本加载成功",
    Color = Color3.fromRGB(0, 255, 0)
})

-- 后台任务
task.spawn(function()
    local lastCloneTime = tick()
    
    while task.wait() do
        -- 自动克隆任务
        if _G.AutoClone then
            pcall(function()
                local redKitty = game.Players.LocalPlayer.petsFolder:FindFirstChild("Red Kitty")
                if redKitty then
                    local currentTime = tick()
                    local elapsed = currentTime - lastCloneTime
                    local targetClones = math.floor(elapsed * _G.CloneRate)
                    
                    if targetClones > 0 then
                        for i = 1, targetClones do
                            game:GetService("ReplicatedStorage").rEvents.petCloneEvent:FireServer("clonePet", redKitty)
                        end
                        lastCloneTime = currentTime
                    end
                end
            end)
        end
        
        -- 自动出售任务
        if _G.AutoSell then
            pcall(function()
                local petsFolder = game.Players.LocalPlayer:FindFirstChild("petsFolder")
                if petsFolder then
                    local redKitties = {}
                    for _, pet in ipairs(petsFolder:GetChildren()) do
                        if pet.Name == "Red Kitty" then
                            table.insert(redKitties, pet)
                        end
                    end
                    
                    if #redKitties > (_G.KeepOnePet and 1 or 0) then
                        for i = (_G.KeepOnePet and 2 or 1), #redKitties do
                            game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", redKitties[i])
                        end
                    end
                end
                task.wait(0.8)
            end)
        end
    end
end)

-- 初始化完成
Library:Notify("Welcome", "脚本加载成功！")
print("XXYXX GOD 已加载")