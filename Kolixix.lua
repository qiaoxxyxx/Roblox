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
        local response = game:HttpGet("https://pastebin.com/raw/rN79QBix")
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

-- 简单的测试功能
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/iyoulin/iyoulin/refs/heads/main/ato"))()

local Window = WindUI:CreateWindow({
    Title = "Kolixi Test",
    Icon = "rbxassetid://139743288604595",
    Author = "Ysia",
    Folder = "",
    Size = UDim2.fromOffset(290, 200),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 130,
    HasOutline = true
})

local MainTab = Window:Tab({
    Title = "Test Functions",
    Icon = ""
})

-- 简单的测试按钮
MainTab:Button({
    Title = "Test Button 1",
    Callback = function()
        print("Test Button 1 Clicked - Whitelist Working!")
    end
})

MainTab:Button({
    Title = "Test Button 2", 
    Callback = function()
        print("Test Button 2 Clicked - Whitelist Working!")
    end
})

MainTab:Button({
    Title = "Show Player Info",
    Callback = function()
        local player = game.Players.LocalPlayer
        print("Player Name:", player.Name)
        print("Whitelist Verified Successfully!")
    end
})

print("Script loaded successfully! Whitelist verification passed.")
