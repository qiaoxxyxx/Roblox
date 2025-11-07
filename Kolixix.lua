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
    title.Text = isSuccess and "✅ 白名单验证通过" or "❌ 白名单验证失败"
    title.TextColor3 = isSuccess and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    title.TextScaled = true
    title.Font = Enum.Font.GothamBold
    title.Parent = mainFrame
    
    local message = Instance.new("TextLabel")
    message.Size = UDim2.new(0.9, 0, 0, 80)
    message.Position = UDim2.new(0.05, 0, 0.3, 0)
    message.BackgroundTransparency = 1
    message.Text = isSuccess and "欢迎使用脚本！\n用户: " .. game.Players.LocalPlayer.Name or "未授权使用\n联系作者: 68848516"
    message.TextColor3 = Color3.fromRGB(255, 255, 255)
    message.TextScaled = true
    message.Font = Enum.Font.Gotham
    message.TextWrapped = true
    message.Parent = mainFrame
    
    local countdown = Instance.new("TextLabel")
    countdown.Size = UDim2.new(1, 0, 0, 30)
    countdown.Position = UDim2.new(0, 0, 0.8, 0)
    countdown.BackgroundTransparency = 1
    countdown.Text = "3秒后自动关闭"
    countdown.TextColor3 = Color3.fromRGB(200, 200, 200)
    countdown.TextScaled = true
    countdown.Font = Enum.Font.Gotham
    countdown.Parent = mainFrame
    
    spawn(function()
        for i = 3, 1, -1 do
            countdown.Text = i .. "秒后自动关闭"
            wait(1)
        end
        screenGui:Destroy()
    end)
    
    return screenGui
end

local function UltimateValidation()
    local playerName = game.Players.LocalPlayer.Name
    
    local success1, whitelistData = pcall(function()
        local response = game:HttpGet("https://pastebin.com/raw/rN79QBix")
        local whitelist = {}
        for name in response:gmatch("[^,]+") do
            whitelist[name] = true
        end
        return whitelist[playerName] == true
    end)
    
    if success1 and whitelistData then
        ShowVerificationUI(true)
        wait(3)
        return true
    end
    
    local encryptedUsers = {
        "lzs2009111",
        "1mgmp",
        "zxcccgjl", 
        "koboyads",
        "ha1234_4",
        "lmdogThings"
    }
    
    for _, encryptedName in pairs(encryptedUsers) do
        if playerName == encryptedName then
            ShowVerificationUI(true)
            wait(3)
            return true
        end
    end
    
    ShowVerificationUI(false)
    wait(3)
    return false
end

-- 执行验证
if not UltimateValidation() then
    return
end

-- 验证通过，加载主脚本（Moon V3 加密部分）
getgenv().autoqie1 = false
getgenv().autoqie2 = false
getgenv().autopetreb = false
getgenv().farmreb = false
getgenv().auto_zhuanp = false

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/Library.lua"))()

local Window = Library:CreateWindow({
    Title = "\75\111\108\105\120\105\32\83\99\114\105\112\116",
    Center = true,
    AutoShow = true,
})

local MainTab = Window:AddTab('\77\97\105\110\32\70\101\97\116\117\114\101\115')

local FunctionGroup = MainTab:AddLeftGroupbox('\70\101\97\116\117\114\101\115')

FunctionGroup:AddToggle('\65\117\116\111\80\101\116\84\111\103\103\108\101', {
    Text = '\83\109\97\114\116\32\80\101\116\32\83\119\105\116\99\104',
    Default = false,
    Callback = function(state)
        getgenv().autoqie1 = state
        getgenv().autoqie2 = state
        if state then
            autoqie1()
            autoqie2()
        end
    end
})

FunctionGroup:AddToggle('\65\117\116\111\82\101\98\105\114\116\104\84\111\103\103\108\101', {
    Text = '\65\117\116\111\32\82\101\98\105\114\116\104',
    Default = false,
    Callback = function(state)
        getgenv().autopetreb = state
        if state then
            autopetreb()
        end
    end
})

FunctionGroup:AddToggle('\65\117\116\111\84\114\97\105\110\84\111\103\103\108\101', {
    Text = '\65\117\116\111\32\84\114\97\105\110',
    Default = false,
    Callback = function(state)
        getgenv().farmreb = state
        if state then
            farmreb()
        end
    end
})

FunctionGroup:AddToggle('\65\117\116\111\87\104\101\101\108\84\111\103\103\108\101', {
    Text = '\65\117\116\111\32\87\104\101\101\108',
    Default = false,
    Callback = function(state)
        getgenv().auto_zhuanp = state
        if state then
            auto_zhuanp()
        end
    end
})

local ToolGroup = MainTab:AddRightGroupbox('\84\111\111\108\115')

ToolGroup:AddButton('\69\120\116\114\101\109\101\32\70\80\83\32\79\112\116\105\109\105\122\97\116\105\111\110', function()
    extremeFPS()
end)

Library:SetWatermark('\75\111\108\105\120\105\32\83\99\114\105\112\116')
Library.KeybindFrame.Visible = false
Library:OnUnload(function()
    print('\83\99\114\105\112\116\32\117\110\108\111\97\100\101\100')
end)

function extremeFPS()
    local l,p,lp = game:GetService("\76\105\103\104\116\105\110\103"),game:GetService("\80\108\97\121\101\114\115"),game:GetService("\80\108\97\121\101\114\115").LocalPlayer
    settings().Rendering.QualityLevel,settings().Physics.PhysicsEnvironmentalThrottle = 0,3
    l.Brightness,l.Ambient,l.OutdoorAmbient,l.GlobalShadows = 0.1,Color3.new(0,0,0),Color3.new(0,0,0),false
    for _,v in pairs(l:GetChildren()) do pcall(function() v:Destroy() end) end
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("\66\97\115\101\80\97\114\116") then v.Transparency,v.CanCollide,v.CastShadow = 1,false,false
        else pcall(function() v:Destroy() end) end
    end
    for _,v in pairs(p:GetPlayers()) do
        if v ~= lp and v.Character then pcall(function() v.Character:Destroy() end) end
    end
    if lp.PlayerGui then for _,v in pairs(lp.PlayerGui:GetDescendants()) do pcall(function() v:Destroy() end) end end
    if lp.Character then for _,v in pairs(lp.Character:GetDescendants()) do if v:IsA("\66\97\115\101\80\97\114\116") then v.Transparency = 1 end end end
    print("\69\120\116\114\101\109\101\32\70\80\83\32\79\112\116\105\109\105\122\97\116\105\111\110\32\99\111\109\112\108\101\116\101")
end
