-- 白名单验证系统
local function ShowVerificationUI(isSuccess)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WhitelistVerification"
    screenGui.Parent = game.CoreGui
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 400, 0, 200)
    mainFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BorderSizePixel = 0
    mainFrame.BackgroundTransparency = 0.1
    mainFrame.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = mainFrame
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = isSuccess and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    stroke.Thickness = 3
    stroke.Parent = mainFrame
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 60)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.Text = isSuccess and "Verification Passed" or "Verification Failed"
    title.TextColor3 = isSuccess and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    title.TextScaled = true
    title.Font = Enum.Font.GothamBold
    title.Parent = mainFrame
    
    local message = Instance.new("TextLabel")
    message.Size = UDim2.new(0.9, 0, 0, 80)
    message.Position = UDim2.new(0.05, 0, 0.3, 0)
    message.BackgroundTransparency = 1
    message.Text = isSuccess and "Welcome to use script!\nUser: " .. game.Players.LocalPlayer.Name or "Unauthorized use\nPlease contact author for permission"
    message.TextColor3 = Color3.fromRGB(255, 255, 255)
    message.TextScaled = true
    message.Font = Enum.Font.Gotham
    message.TextWrapped = true
    message.Parent = mainFrame
    
    local countdown = Instance.new("TextLabel")
    countdown.Size = UDim2.new(1, 0, 0, 30)
    countdown.Position = UDim2.new(0, 0, 0.8, 0)
    countdown.BackgroundTransparency = 1
    countdown.Text = "Auto close in 3 seconds"
    countdown.TextColor3 = Color3.fromRGB(200, 200, 200)
    countdown.TextScaled = true
    countdown.Font = Enum.Font.Gotham
    countdown.Parent = mainFrame
    
    spawn(function()
        for i = 3, 1, -1 do
            countdown.Text = i .. " seconds left"
            wait(1)
        end
        screenGui:Destroy()
    end)
    
    return screenGui
end

local function UltimateValidation()
    local playerName = game.Players.LocalPlayer.Name
    
    local success, isWhitelisted = pcall(function()
        -- 使用你的 GitHub Raw 链接
        local response = game:HttpGet("https://raw.githubusercontent.com/qiaoxxyxx/Roblox/refs/heads/main/whitelist.txt")
        local whitelist = {}
        for name in response:gmatch("[^,]+") do
            whitelist[name:gsub("%s+", "")] = true
        end
        return whitelist[playerName] == true
    end)
    
    if success and isWhitelisted then
        ShowVerificationUI(true)
        wait(3)
        return true
    else
        ShowVerificationUI(false)
        wait(3)
        return false
    end
end

-- 首先执行白名单验证
if not UltimateValidation() then
    return
end

-- 加载主脚本
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/iyoulin/iyoulin/refs/heads/main/ato"))()

local Window = WindUI:CreateWindow({
    Title = "Kolixi",
    Icon = "rbxassetid://139743288604595",
    Author = "Ysia",
    Folder = "",
    Size = UDim2.fromOffset(290, 340),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 130,
    HasOutline = true
})

Window:EditOpenButton({
    Title = " Cr4zy",
    Icon = "image-upscale",
    CornerRadius = UDim.new(0, 10),
    StrokeThickness = 3,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    )
})

local MainTab = Window:Tab({
    Title = "Main Functions",
    Icon = ""
})

_G.autoqie1 = false
_G.autoqie2 = false
_G.autopetreb = false
_G.farmreb = false
_G.auto_zhuanp = false

function autoqie1()
    while _G.autoqie1 do
        wait(0.3)
        pcall(function()
            local fi = 1000 + 5000 * game.Players.LocalPlayer.leaderstats.Rebirths.Value / 2
            if game.Players.LocalPlayer.leaderstats.Strength.Value >= fi then
                for _, v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren()) do
                    if v.Name == "Tribal Overlord" then
                        game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", v)
                    end
                end
            end
        end)
    end
end

function autoqie2()
    while _G.autoqie2 do
        wait(0.3)
        pcall(function()
            local fi = 1000 + 5000 * game.Players.LocalPlayer.leaderstats.Rebirths.Value / 2
            if game.Players.LocalPlayer.leaderstats.Strength.Value < fi then
                for _, v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren()) do
                    if v.Name == "Swift Samurai" then
                        game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet", v)
                    end
                end
            end
        end)
    end
end

MainTab:Toggle({
    Title = "Auto Pet Switch",
    Value = false,
    Callback = function(state)
        _G.autoqie1 = state
        _G.autoqie2 = state
        if state then
            autoqie1()
            autoqie2()
        end
    end
})

function autopetreb()
    while _G.autopetreb do
        wait()
        pcall(function()
            if tostring(game.Players.LocalPlayer.equippedPets.pet1.Value) == "Tribal Overlord" then
                game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            end
        end)
    end
end

MainTab:Toggle({
    Title = "Auto Rebirth",
    Value = false,
    Callback = function(state)
        _G.autopetreb = state
        autopetreb()
    end
})

function farmreb()
    while _G.farmreb do
        wait()
        pcall(function()
            if tostring(game.Players.LocalPlayer.equippedPets.pet1.Value) == "Swift Samurai" then
                for _ = 1, 10 do
                    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
                end
            end
        end)
    end
end

MainTab:Toggle({
    Title = "Auto Train",
    Value = false,
    Callback = function(state)
        _G.farmreb = state
        farmreb()
    end
})

function auto_zhuanp()
    while _G.auto_zhuanp do
        wait()
        pcall(function()
            local args = {
                [1] = "openFortuneWheel",
                [2] = game:GetService("ReplicatedStorage").fortuneWheelChances:FindFirstChild("Fortune Wheel")
            }
            game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer(unpack(args))
        end)
    end
end

MainTab:Toggle({
    Title = "Auto Wheel",
    Value = false,
    Callback = function(state)
        _G.auto_zhuanp = state
        auto_zhuanp()
    end
})

function extremeFPS()
    local l,p,lp = game:GetService("Lighting"),game:GetService("Players"),game:GetService("Players").LocalPlayer
    settings().Rendering.QualityLevel,settings().Physics.PhysicsEnvironmentalThrottle = 0,3
    l.Brightness,l.Ambient,l.OutdoorAmbient,l.GlobalShadows = 0.1,Color3.new(0,0,0),Color3.new(0,0,0),false
    for _,v in pairs(l:GetChildren()) do pcall(function() v:Destroy() end) end
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then v.Transparency,v.CanCollide,v.CastShadow = 1,false,false
        else pcall(function() v:Destroy() end) end
    end
    for _,v in pairs(p:GetPlayers()) do
        if v ~= lp and v.Character then pcall(function() v.Character:Destroy() end) end
    end
    if lp.PlayerGui then for _,v in pairs(lp.PlayerGui:GetDescendants()) do pcall(function() v:Destroy() end) end end
    if lp.Character then for _,v in pairs(lp.Character:GetDescendants()) do if v:IsA("BasePart") then v.Transparency = 1 end end end
    print("FPS Optimized")
end

MainTab:Button({
    Title = "Extreme FPS",
    Callback = function()
        extremeFPS()
    end
})
