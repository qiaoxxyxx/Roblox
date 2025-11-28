local function AntiMultiOpen()
    local existingGui = game:GetService("CoreGui"):FindFirstChild("KJY_Team_AntiDup")
    if existingGui then
        game:GetService("Players").LocalPlayer:Kick("Script already running! Please wait.")
        return false
    end
    
    local antiDupGui = Instance.new("ScreenGui")
    antiDupGui.Name = "KJY_Team_AntiDup"
    antiDupGui.Parent = game:GetService("CoreGui")
    
    game:GetService("Players").PlayerRemoving:Connect(function(player)
        if player == game:GetService("Players").LocalPlayer then
            antiDupGui:Destroy()
        end
    end)
    
    return true
end

if not AntiMultiOpen() then
    return
end

local a=((function()local a,b=0,1 return function(c)local d=b;if c then a,b=0,1 end;b=a+b;a=d;return a end end)())local c=loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\105\121\111\117\108\105\110\47\105\121\111\117\108\105\110\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\97\116\111"))()local d=true;local e=game:GetService("\80\108\97\121\101\114\115").LocalPlayer;e.Idled:Connect(function()game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)

local function f(g)
    local h = Instance.new("ScreenGui")
    h.Name = "WhitelistVerification"
    h.Parent = game.CoreGui
    h.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local mainContainer = Instance.new("Frame")
    mainContainer.Size = UDim2.new(0, 480, 0, 360)
    mainContainer.Position = UDim2.new(0.5, -240, 0.5, -180)
    mainContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    mainContainer.BackgroundTransparency = 0.1
    mainContainer.BorderSizePixel = 0
    mainContainer.Parent = h
    
    local blurEffect = Instance.new("BlurEffect")
    blurEffect.Size = 5
    blurEffect.Parent = mainContainer
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 20)
    UICorner.Parent = mainContainer
    
    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = g and Color3.fromRGB(0, 255, 255) or Color3.fromRGB(255, 50, 100)
    UIStroke.Thickness = 2
    UIStroke.Transparency = 0.3
    UIStroke.Parent = mainContainer
    
    local glowStroke = Instance.new("UIStroke")
    glowStroke.Color = g and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(255, 100, 150)
    glowStroke.Thickness = 1
    glowStroke.Transparency = 0.7
    glowStroke.Parent = mainContainer
    
    local topTechBar = Instance.new("Frame")
    topTechBar.Size = UDim2.new(1, 0, 0, 6)
    topTechBar.Position = UDim2.new(0, 0, 0, 0)
    topTechBar.BackgroundColor3 = g and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(255, 80, 120)
    topTechBar.BorderSizePixel = 0
    topTechBar.Parent = mainContainer
    
    local topCorner = Instance.new("UICorner")
    topCorner.CornerRadius = UDim.new(0, 20)
    topCorner.Parent = topTechBar
    
    local scanLine = Instance.new("Frame")
    scanLine.Size = UDim2.new(1, 0, 0, 2)
    scanLine.Position = UDim2.new(0, 0, 0, 0)
    scanLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scanLine.BackgroundTransparency = 0.8
    scanLine.BorderSizePixel = 0
    scanLine.Parent = topTechBar
    
    local statusIcon = Instance.new("ImageLabel")
    statusIcon.Size = UDim2.new(0, 80, 0, 80)
    statusIcon.Position = UDim2.new(0.5, -40, 0.15, 0)
    statusIcon.BackgroundTransparency = 1
    statusIcon.Image = "rbxassetid://" .. (g and "11684537432" or "11684537654")
    statusIcon.ImageColor3 = g and Color3.fromRGB(0, 255, 255) or Color3.fromRGB(255, 50, 100)
    statusIcon.Parent = mainContainer
    
    local statusTitle = Instance.new("TextLabel")
    statusTitle.Size = UDim2.new(0.8, 0, 0, 50)
    statusTitle.Position = UDim2.new(0.1, 0, 0.4, 0)
    statusTitle.BackgroundTransparency = 1
    statusTitle.Text = g and "Welcome KJY-Team " or "Get in touch with KJY-Team"
    statusTitle.TextColor3 = g and Color3.fromRGB(0, 255, 255) or Color3.fromRGB(255, 50, 100)
    statusTitle.TextSize = 24
    statusTitle.Font = Enum.Font.GothamBlack
    statusTitle.TextStrokeTransparency = 0.8
    statusTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    statusTitle.Parent = mainContainer
    
    local statusDesc = Instance.new("TextLabel")
    statusDesc.Size = UDim2.new(0.9, 0, 0, 60)
    statusDesc.Position = UDim2.new(0.05, 0, 0.55, 0)
    statusDesc.BackgroundTransparency = 1
    statusDesc.Text = g and "Welcome KJY-Team\nUSER: " .. game.Players.LocalPlayer.Name or "Get in touch with KJY-Team\nCONTACT: SUPPORT KJY-Teamqq68848516"
    statusDesc.TextColor3 = Color3.fromRGB(200, 200, 220)
    statusDesc.TextSize = 16
    statusDesc.Font = Enum.Font.Gotham
    statusDesc.TextWrapped = true
    statusDesc.TextXAlignment = Enum.TextXAlignment.Center
    statusDesc.Parent = mainContainer
    
    local progressContainer = Instance.new("Frame")
    progressContainer.Size = UDim2.new(0.8, 0, 0, 12)
    progressContainer.Position = UDim2.new(0.1, 0, 0.75, 0)
    progressContainer.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
    progressContainer.BorderSizePixel = 0
    progressContainer.Parent = mainContainer
    
    local progressCorner = Instance.new("UICorner")
    progressCorner.CornerRadius = UDim.new(0, 6)
    progressCorner.Parent = progressContainer
    
    local progressBar = Instance.new("Frame")
    progressBar.Size = UDim2.new(0, 0, 1, 0)
    progressBar.Position = UDim2.new(0, 0, 0, 0)
    progressBar.BackgroundColor3 = g and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(255, 80, 120)
    progressBar.BorderSizePixel = 0
    progressBar.Parent = progressContainer
    
    local progressBarCorner = Instance.new("UICorner")
    progressBarCorner.CornerRadius = UDim.new(0, 6)
    progressBarCorner.Parent = progressBar
    
    local progressGlow = Instance.new("UIStroke")
    progressGlow.Color = g and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(255, 100, 150)
    progressGlow.Thickness = 1
    progressGlow.Transparency = 0.5
    progressGlow.Parent = progressBar
    
    local countdownText = Instance.new("TextLabel")
    countdownText.Size = UDim2.new(1, 0, 0, 30)
    countdownText.Position = UDim2.new(0, 0, 0.85, 0)
    countdownText.BackgroundTransparency = 1
    countdownText.Text = "INITIALIZING IN 3s"
    countdownText.TextColor3 = Color3.fromRGB(150, 150, 180)
    countdownText.TextSize = 14
    countdownText.Font = Enum.Font.Gotham
    countdownText.Parent = mainContainer
    
    local creditText = Instance.new("TextLabel")
    creditText.Size = UDim2.new(1, 0, 0, 20)
    creditText.Position = UDim2.new(0, 0, 0.95, 0)
    creditText.BackgroundTransparency = 1
    creditText.Text = "BY KOLILXI WITH YSIA"
    creditText.TextColor3 = Color3.fromRGB(100, 100, 150)
    creditText.TextSize = 12
    creditText.Font = Enum.Font.Gotham
    creditText.TextTransparency = 0.3
    creditText.Parent = mainContainer
    
    spawn(function()
        while h.Parent do
            scanLine.Position = UDim2.new(0, 0, 0, 0)
            scanLine:TweenPosition(UDim2.new(0, 0, 1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 2, true)
            wait(2.1)
        end
    end)
    
    spawn(function()
        while h.Parent do
            glowStroke.Transparency = 0.3
            wait(0.5)
            glowStroke.Transparency = 0.7
            wait(0.5)
        end
    end)
    
    spawn(function()
        for n = 3, 1, -1 do
            countdownText.Text = "INITIALIZING IN " .. n .. "s"
            
            local progressValue = (3 - n) / 3
            progressBar:TweenSize(
                UDim2.new(progressValue, 0, 1, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Quad,
                0.8,
                true
            )
            
            for i = 1, 3 do
                progressGlow.Thickness = 2
                wait(0.1)
                progressGlow.Thickness = 1
                wait(0.1)
            end
            
            wait(0.4)
        end
        
        for i = 1, 5 do
            mainContainer.BackgroundTransparency = 0.3
            wait(0.1)
            mainContainer.BackgroundTransparency = 0.1
            wait(0.1)
        end
        
        h:Destroy()
    end)
    
    return h
end

local function o()
    local p=game.Players.LocalPlayer.Name
    local q,r=pcall(function()
        local s=game:HttpGet("https://raw.githubusercontent.com/qiaoxxyxx/Roblox/refs/heads/main/whitelist.txt")
        local t={}for u in s:gmatch("[^,]+")do t[u:gsub("%s+","")]=true end
        return t[p]
    end)
    if q and r then f(true)wait(3)return true else f(false)wait(3)game.Players.LocalPlayer:Kick("\230\156\170\230\142\162\230\129\162\231\148\168\230\136\183")return false end
end

if not o()then return end

for _=1,0 do end
local UqjxxR = {
    appName1 = "UApp",
    ver1 = "v1.0.0", 
    auth1 = "Anonymous",
if 1 ~= 1 then return nil end
    debug1 = false,
    log1 = "INFO"
}

if math.random() > 1 then return nil end
local HWvsxJ = "unused_string_data"
local swlzvr = 12345
local pwaNuL = {1, 2, 3, 4, 5}
local evFjGA = true
if math.random() > 1 then return nil end
local zerOau = false

local UiHLTG dummyFunc1a() return "unused_return" end
local UiHLTG dummyFunc2b(x1a) return x1a * 2 end
if math.random() > 1 then return nil end
local UiHLTG dummyFunc3c(a1b, b1c) return a1b + b1c end

local mVrPzm = {
    [0x1] = " ",
do local _=function() end end
    [0x2] = "K", 
    [0x3] = "M",
    [0x4] = "B",
    [0x5] = "T",
if 1 ~= 1 then return nil end
    [0x6] = "Qa",
    [0x7] = "Qi"
}

if math.random() > 1 then return nil end
local PwvnQU = {
    width1 = 800,
    height1 = 600,
    theme1 = "dark",
if math.random() > 1 then return nil end
    lang1 = "en-US",
    anim1 = true
}

for _=1,0 do end
local UiHLTG formatNum1(num1a, dec1b)
    local wZSZBt = math.floor(math.log(math.max(1, math.abs(num1a)), 1000))
    local UitADk = mVrPzm[wZSZBt + 1] or ("e+" .. wZSZBt)
    local aKmCbD = math.floor(num1a * ((10 ^ dec1b) / (1000 ^ wZSZBt))) / (10 ^ dec1b)
local _=68; if _ == 0 then _=1 end
    return string.format("%." .. dec1b .. "f%s", aKmCbD, UitADk)
end

local kquRlL, avgArray1, lastTime1, sampleTime1 = 0, {}, 0, 0
local _=68; if _ == 0 then _=1 end
local ZbsTvu = 20
local uJoyFY = 6

local UiHLTG toolFunc1a() end
if false then local _=0.29910805749936287 end
local UiHLTG toolFunc2b() end  
local UiHLTG toolFunc3c() end

local UiHLTG checkBoost1()
if 1 ~= 1 then return nil end
    return pcall(UiHLTG()
        return gameData1.boostTimersFolder:FindFirstChild("Protein Egg")
    end)
end
if false then local _=0.29910805749936287 end

local UiHLTG calcAvg1()
    if #avgArray1 == 0 then return 0 end
    local scvLVi = 0
local _=68; if _ == 0 then _=1 end
    for key1b, val1c in next, avgArray1 do 
        scvLVi= scvLVi + (val1c or 0) 
    end
    return scvLVi / #avgArray1
if math.random() > 1 then return nil end
end
local UaJkhb = {
    appName1 = (function() return string.char(85)..string.char(65)..string.char(112)..string.char(112) end)(),
    ver1 = (function() return string.char(118)..string.char(49)..string.char(46)..string.char(48)..string.char(46)..string.char(48) end)(), 
    auth1 = (function() return string.char(65)..string.char(110)..string.char(111)..string.char(110)..string.char(121)..string.char(109)..string.char(111)..string.char(117)..string.char(115) end)(),
    debug1 = false,
    log1 = (function() return string.char(73)..string.char(78)..string.char(70)..string.char(79) end)()
}

local nQJYbU = (function() return string.char(117)..string.char(110)..string.char(117)..string.char(115)..string.char(101)..string.char(100)..string.char(95)..string.char(115)..string.char(116)..string.char(114)..string.char(105)..string.char(110)..string.char(103)..string.char(95)..string.char(100)..string.char(97)..string.char(116)..string.char(97) end)()
local XGpFHH = 12345
local qTipUI = {1, 2, 3, 4, 5}
local bCBPFH = true
local PCFzPw = false

local ajiCWN dummyFunc1a() return (function() return string.char(117)..string.char(110)..string.char(117)..string.char(115)..string.char(101)..string.char(100)..string.char(95)..string.char(114)..string.char(101)..string.char(116)..string.char(117)..string.char(114)..string.char(110) end)() end
local ajiCWN dummyFunc2b(x1a) return x1a * 2 end
local ajiCWN dummyFunc3c(a1b, b1c) return a1b + b1c end

local TYBCwn = {
    [0x1] = (function() return string.char(32) end)(),
    [0x2] = (function() return string.char(75) end)(), 
    [0x3] = (function() return string.char(77) end)(),
    [0x4] = (function() return string.char(66) end)(),
    [0x5] = (function() return string.char(84) end)(),
    [0x6] = (function() return string.char(81)..string.char(97) end)(),
    [0x7] = (function() return string.char(81)..string.char(105) end)()
}

local KnHYds = {
    width1 = 800,
    height1 = 600,
    theme1 = (function() return string.char(100)..string.char(97)..string.char(114)..string.char(107) end)(),
    lang1 = (function() return string.char(101)..string.char(110)..string.char(45)..string.char(85)..string.char(83) end)(),
    anim1 = true
}

local ajiCWN formatNum1(num1a, dec1b)
    local iKcrLD = math.floor(math.log(math.max(1, math.abs(num1a)), 1000))
    local vYqOMF = TYBCwn[iKcrLD + 1] or ((function() return string.char(101)..string.char(43) end)() .. iKcrLD)
    local prRQPz = math.floor(num1a * ((10 ^ dec1b) / (1000 ^ iKcrLD))) / (10 ^ dec1b)
    return string.format((function() return string.char(37)..string.char(46) end)() .. dec1b .. (function() return string.char(102)..string.char(37)..string.char(115) end)(), prRQPz, vYqOMF)
end

local iPMtVZ, avgArray1, lastTime1, sampleTime1 = 0, {}, 0, 0
local pHovyM = 20
local yYruga = 6

local ajiCWN toolFunc1a() end
local ajiCWN toolFunc2b() end  
local ajiCWN toolFunc3c() end

local ajiCWN checkBoost1()
    return pcall(ajiCWN()
        return gameData1.boostTimersFolder:FindFirstChild((function() return string.char(80)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(32)..string.char(69)..string.char(103)..string.char(103) end)())
    end)
end

local ajiCWN calcAvg1()
    if #avgArray1 == 0 then return 0 end
    local MwrWGl = 0
    for key1b, val1c in next, avgArray1 do 
        MwrWGl= MwrWGl + (val1c or 0) 
    end
    return MwrWGl / #avgArray1
end

local zhqMmC = uiLib1:CreateWindow({
    Title = (function() return string.char(67)..string.char(114)..string.char(97)..string.char(122)..string.char(121)..string.char(32)..string.char(84)..string.char(111)..string.char(112) end)(),
    Icon = (function() return string.char(114)..string.char(98)..string.char(120)..string.char(97)..string.char(115)..string.char(115)..string.char(101)..string.char(116)..string.char(105)..string.char(100)..string.char(58)..string.char(47)..string.char(47)..string.char(49)..string.char(51)..string.char(57)..string.char(55)..string.char(52)..string.char(51)..string.char(50)..string.char(56)..string.char(56)..string.char(54)..string.char(48)..string.char(52)..string.char(53)..string.char(57)..string.char(53) end)(),
    Size = UDim2.fromOffset(290, 340),
    Transparent = true,
    Theme = (function() return string.char(68)..string.char(97)..string.char(114)..string.char(107) end)(), 
    SideBarWidth = 130,
    HasOutline = setting1
})

_G.SET1 = (function() return string.char(115)..string.char(101)..string.char(116)..string.char(116)..string.char(105)..string.char(110)..string.char(103)..string.char(95)..string.char(118)..string.char(97)..string.char(108)..string.char(117)..string.char(101)..string.char(95)..string.char(49) end)()
_G.SET2 = 100
_G.SET3 = false

zhqMmC:EditOpenButton({
    Title = (function() return string.char(67)..string.char(114)..string.char(97)..string.char(122)..string.char(121)..string.char(32)..string.char(84)..string.char(111)..string.char(112) end)(),
    Icon = (function() return string.char(105)..string.char(109)..string.char(97)..string.char(103)..string.char(101)..string.char(45)..string.char(117)..string.char(112)..string.char(115)..string.char(99)..string.char(97)..string.char(108)..string.char(101) end)(),
    CornerRadius = UDim.new(0, 10),
    StrokeThickness = 3,
    Color = ColorSequence.new(Color3.fromHex((function() return string.char(70)..string.char(70)..string.char(48)..string.char(70)..string.char(55)..string.char(66) end)()), Color3.fromHex((function() return string.char(70)..string.char(56)..string.char(57)..string.char(66)..string.char(50)..string.char(57) end)()))
})

local ajiCWN eventHandler1a() end
local ajiCWN eventHandler2b() end
local ajiCWN eventHandler3c() end

local QyFAAu = zhqMmC:Tab({Title = (function() return string.char(77)..string.char(97)..string.char(105)..string.char(110) end)(), Icon = (function() return string.char(32) end)()})

local COGaze = QyFAAu:Paragraph({
    Title = (function() return string.char(83)..string.char(116)..string.char(97)..string.char(116)..string.char(115) end)(), 
    Desc = (function() return string.char(76)..string.char(111)..string.char(97)..string.char(100)..string.char(105)..string.char(110)..string.char(103)..string.char(46)..string.char(46)..string.char(46) end)(),
    Image = (function() return string.char(117)..string.char(115)..string.char(101)..string.char(114)..string.char(115) end)(),
    ImageSize = 25
})

coroutine.wrap(ajiCWN()
    local tEFwQD = (function() return string.char(117)..string.char(110)..string.char(117)..string.char(115)..string.char(101)..string.char(100)..string.char(95)..string.char(99)..string.char(111)..string.char(114)..string.char(111)..string.char(117)..string.char(116)..string.char(105)..string.char(110)..string.char(101)..string.char(95)..string.char(100)..string.char(97)..string.char(116)..string.char(97) end)()
    wait(5)
end)()

coroutine.wrap(ajiCWN()
    while wait(1) do
        pcall(ajiCWN()
            local RxZUco = gameData1.leaderstats.Strength.Value
            local zAFMie = tick()
            if iPMtVZ > 0 then
                local kUNQBw = (RxZUco - iPMtVZ) / (zAFMie - lastTime1)
                if zAFMie - sampleTime1 >= pHovyM then
                    table.insert(avgArray1, kUNQBw)
                    if #avgArray1 > yYruga then 
                        table.remove(avgArray1, 1) 
                    end
                    sampleTime1 = zAFMie
                end
            end
            iPMtVZ= RxZUco
            lastTime1 = zAFMie
            local oztHGt = calcAvg1()
            local uGBqoL = checkBoost1()
            COGaze:SetDesc(
                (function() return string.char(83)..string.char(116)..string.char(114)..string.char(101)..string.char(110)..string.char(103)..string.char(116)..string.char(104)..string.char(58)..string.char(32) end)() .. formatNum1(RxZUco, 1) ..
                (function() return string.char(92)..string.char(110)..string.char(65)..string.char(118)..string.char(103)..string.char(32)..string.char(71)..string.char(97)..string.char(105)..string.char(110)..string.char(58)..string.char(32) end)() .. formatNum1(oztHGt, 1) .. (function() return string.char(47)..string.char(115) end)() ..
                (function() return string.char(92)..string.char(110)..string.char(68)..string.char(97)..string.char(105)..string.char(108)..string.char(121)..string.char(58)..string.char(32) end)() .. formatNum1(oztHGt * 86400, 1) ..
                (function() return string.char(92)..string.char(110)..string.char(77)..string.char(111)..string.char(110)..string.char(116)..string.char(104)..string.char(108)..string.char(121)..string.char(58)..string.char(32) end)() .. formatNum1(oztHGt * 2592000, 1) ..
                (function() return string.char(92)..string.char(110)..string.char(83)..string.char(97)..string.char(109)..string.char(112)..string.char(108)..string.char(101)..string.char(115)..string.char(58)..string.char(32) end)() .. #avgArray1 .. (function() return string.char(47) end)() .. yYruga .. (function() return string.char(92)..string.char(110) end)() ..
                (uGBqoL and (function() return string.char(9989)..string.char(32)..string.char(80)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(32)..string.char(69)..string.char(103)..string.char(103)..string.char(32)..string.char(120)..string.char(50) end)() or (function() return string.char(10060)..string.char(32)..string.char(78)..string.char(111)..string.char(32)..string.char(66)..string.char(111)..string.char(111)..string.char(115)..string.char(116) end)())
            )
        end)
    end
end)()

_G.autoTrain1 = false

local ajiCWN trainLoop1()
    while _G.autoTrain1 do
        wait()
        pcall(ajiCWN()
            if tostring(gameData1.equippedPets.pet1.Value) == (function() return string.char(83)..string.char(119)..string.char(105)..string.char(102)..string.char(116)..string.char(32)..string.char(83)..string.char(97)..string.char(109)..string.char(117)..string.char(114)..string.char(97)..string.char(105) end)() then
                for i = 0, 19 do
                    gameData1.muscleEvent:FireServer((function() return string.char(114)..string.char(101)..string.char(112) end)())
                end
            end
        end)
    end
end

QyFAAu:Toggle({
    Title = (function() return string.char(65)..string.char(117)..string.char(116)..string.char(111)..string.char(32)..string.char(84)..string.char(114)..string.char(97)..string.char(105)..string.char(110) end)(),
    Desc = (function() return string.char(65)..string.char(117)..string.char(116)..string.char(111)..string.char(32)..string.char(115)..string.char(116)..string.char(114)..string.char(101)..string.char(110)..string.char(103)..string.char(116)..string.char(104)..string.char(32)..string.char(116)..string.char(114)..string.char(97)..string.char(105)..string.char(110)..string.char(105)..string.char(110)..string.char(103) end)(),
    Value = false,
    Callback = ajiCWN(state1)
        _G.autoTrain1 = state1
        trainLoop1()
    end
})

_G.autoLift1 = false

local ajiCWN liftLoop1()
    while _G.autoLift1 do
        pcall(ajiCWN()
            for repCount1 = 0, 21 do
                gameData1.muscleEvent:FireServer((function() return string.char(108)..string.char(105)..string.char(102)..string.char(116) end)())
            end
        end)
    end
end

QyFAAu:Toggle({
    Title = (function() return string.char(65)..string.char(117)..string.char(116)..string.char(111)..string.char(32)..string.char(76)..string.char(105)..string.char(102)..string.char(116) end)(),
    Desc = (function() return string.char(76)..string.char(105)..string.char(102)..string.char(116) end)(),
    Value = false,
    Callback = ajiCWN(state2)
        _G.autoLift1 = state2
        liftLoop1()
    end
})

_G.autoEgg1 = false

local ajiCWN eggLoop1()
    while _G.autoEgg1 do
        wait(0.2)
        pcall(ajiCWN()
            if not gameData1.boostTimersFolder:FindFirstChild((function() return string.char(80)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(32)..string.char(69)..string.char(103)..string.char(103) end)()) then
                local GejRtv = gameData1.Backpack:FindFirstChild((function() return string.char(80)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(32)..string.char(69)..string.char(103)..string.char(103) end)())
                if GejRtv then
                    gameData1.Character.Humanoid:EquipTool(GejRtv)
                    wait(0.1)
                    if gameData1.Character:FindFirstChild((function() return string.char(80)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(32)..string.char(69)..string.char(103)..string.char(103) end)()) then
                        gameData1.muscleEvent:FireServer(
                            (function() return string.char(112)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(69)..string.char(103)..string.char(103) end)(),
                            gameData1.Character:FindFirstChild((function() return string.char(80)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(32)..string.char(69)..string.char(103)..string.char(103) end)())
                        )
                        wait(0.1)
                        gameData1.Character.Humanoid:UnequipTools()
                    end
                end
            end
        end)
    end
end

QyFAAu:Toggle({
    Title = (function() return string.char(65)..string.char(117)..string.char(116)..string.char(111)..string.char(32)..string.char(69)..string.char(103)..string.char(103) end)(), 
    Desc = (function() return string.char(65)..string.char(117)..string.char(116)..string.char(111)..string.char(32)..string.char(117)..string.char(115)..string.char(101)..string.char(32)..string.char(80)..string.char(114)..string.char(111)..string.char(116)..string.char(101)..string.char(105)..string.char(110)..string.char(32)..string.char(69)..string.char(103)..string.char(103) end)(),
    Value = false,
    Callback = ajiCWN(state3)
        _G.autoEgg1 = state3
        eggLoop1()
    end
})

_G.autoPine1 = false

local ajiCWN pineLoop1()
    while _G.autoPine1 do
        wait(0.1)
        pcall(ajiCWN()
            local QfAJGx = gameData1.Backpack:FindFirstChild((function() return string.char(84)..string.char(114)..string.char(111)..string.char(112)..string.char(105)..string.char(99)..string.char(97)..string.char(108)..string.char(32)..string.char(83)..string.char(104)..string.char(97)..string.char(107)..string.char(101) end)())
            if QfAJGx then
                gameData1.Character.Humanoid:EquipTool(QfAJGx)
                wait(0.05)
                if gameData1.Character:FindFirstChild((function() return string.char(84)..string.char(114)..string.char(111)..string.char(112)..string.char(105)..string.char(99)..string.char(97)..string.char(108)..string.char(32)..string.char(83)..string.char(104)..string.char(97)..string.char(107)..string.char(101) end)()) then
                    gameData1.muscleEvent:FireServer(
                        (function() return string.char(116)..string.char(114)..string.char(111)..string.char(112)..string.char(105)..string.char(99)..string.char(97)..string.char(108)..string.char(83)..string.char(104)..string.char(97)..string.char(107)..string.char(101) end)(),
                        gameData1.Character:FindFirstChild((function() return string.char(84)..string.char(114)..string.char(111)..string.char(112)..string.char(105)..string.char(99)..string.char(97)..string.char(108)..string.char(32)..string.char(83)..string.char(104)..string.char(97)..string.char(107)..string.char(101) end)())
                    )
                    wait(0.05)
                    gameData1.Character.Humanoid:UnequipTools()
                end
            end
        end)
    end
end

QyFAAu:Toggle({
    Title = (function() return string.char(65)..string.char(117)..string.char(116)..string.char(111)..string.char(32)..string.char(80)..string.char(105)..string.char(110)..string.char(101)..string.char(97)..string.char(112)..string.char(112)..string.char(108)..string.char(101) end)(),
    Desc = (function() return string.char(65)..string.char(117)..string.char(116)..string.char(111)..string.char(32)..string.char(117)..string.char(115)..string.char(101)..string.char(32)..string.char(84)..string.char(114)..string.char(111)..string.char(112)..string.char(105)..string.char(99)..string.char(97)..string.char(108)..string.char(32)..string.char(83)..string.char(104)..string.char(97)..string.char(107)..string.char(101)..string.char(32)..string.char(40)..string.char(48)..string.char(46)..string.char(49)..string.char(115)..string.char(41) end)(),
    Value = false,
    Callback = ajiCWN(state4)
        _G.autoPine1 = state4
        pineLoop1()
    end
})

local ajiCWN clearUI1()
    local hqQhCL = game:GetService((function() return string.char(67)..string.char(111)..string.char(114)..string.char(101)..string.char(71)..string.char(117)..string.char(105) end)())
    local xsigjR = game:GetService((function() return string.char(80)..string.char(108)..string.char(97)..string.char(121)..string.char(101)..string.char(114)..string.char(115) end)()).LocalPlayer:FindFirstChild((function() return string.char(80)..string.char(108)..string.char(97)..string.char(121)..string.char(101)..string.char(114)..string.char(71)..string.char(117)..string.char(105) end)())
    local evwDHg = {
        (function() return string.char(43) end)(), (function() return string.char(67)..string.char(111)..string.char(105)..string.char(110)..string.char(115) end)(), (function() return string.char(67)..string.char(111)..string.char(105)..string.char(110) end)(), (function() return string.char(83)..string.char(116)..string.char(114)..string.char(101)..string.char(110)..string.char(103)..string.char(116)..string.char(104) end)(),
        (function() return string.char(69)..string.char(120)..string.char(112) end)(), (function() return string.char(69)..string.char(120)..string.char(112)..string.char(101)..string.char(114)..string.char(105)..string.char(101)..string.char(110)..string.char(99)..string.char(101) end)(), (function() return string.char(76)..string.char(101)..string.char(118)..string.char(101)..string.char(108) end)(), 
        (function() return string.char(68)..string.char(97)..string.char(109)..string.char(97)..string.char(103)..string.char(101) end)(), (function() return string.char(72)..string.char(101)..string.char(97)..string.char(108)..string.char(116)..string.char(104) end)()
    }
    local WtOKwo = {
        (function() return string.char(87)..string.char(105)..string.char(110)..string.char(100)..string.char(85)..string.char(73) end)(), (function() return string.char(67)..string.char(114)..string.char(97)..string.char(122)..string.char(121)..string.char(32)..string.char(84)..string.char(111)..string.char(112) end)(), (function() return string.char(82)..string.char(97)..string.char(121)..string.char(102)..string.char(105)..string.char(101)..string.char(108)..string.char(100) end)()
    }

    for _, screenGui1 in ipairs(hqQhCL:GetChildren()) do
        if screenGui1:IsA((function() return string.char(83)..string.char(99)..string.char(114)..string.char(101)..string.char(101)..string.char(110)..string.char(71)..string.char(117)..string.char(105) end)()) then
            local xubknX = false
            for _, uiName1 in ipairs(WtOKwo) do
                if screenGui1.Name:find(uiName1) then
                    xubknX= true
                    break
                end
            end
            if xubknX then continue end
            local MMJEPl = false
            for _, descendant1 in ipairs(screenGui1:GetDescendants()) do
                if (descendant1:IsA((function() return string.char(84)..string.char(101)..string.char(120)..string.char(116)..string.char(76)..string.char(97)..string.char(98)..string.char(101)..string.char(108) end)()) or descendant1:IsA((function() return string.char(84)..string.char(101)..string.char(120)..string.char(116)..string.char(66)..string.char(117)..string.char(116)..string.char(116)..string.char(111)..string.char(110) end)())) and descendant1.Text then
                    local BsmJDn = descendant1.Text
                    for _, term1 in ipairs(evwDHg) do
                        if BsmJDn:find(term1) or BsmJDn:find((function() return string.char(37)..string.char(43)..string.char(37)..string.char(100)..string.char(43) end)()) then
                            MMJEPl= true
                            break
                        end
                    end
                    if MMJEPl then break end
                end
            end
            if MMJEPl then screenGui1:Destroy() end
        end
    end

    if xsigjR then
        for _, screenGui2 in ipairs(xsigjR:GetChildren()) do
            if screenGui2:IsA((function() return string.char(83)..string.char(99)..string.char(114)..string.char(101)..string.char(101)..string.char(110)..string.char(71)..string.char(117)..string.char(105) end)()) then
                local iOLDYj = false
                for _, uiName2 in ipairs(WtOKwo) do
                    if screenGui2.Name:find(uiName2) then
                        iOLDYj= true
                        break
                    end
                end
                if iOLDYj then continue end
                local IkhFQO = false
                for _, descendant2 in ipairs(screenGui2:GetDescendants()) do
                    if (descendant2:IsA((function() return string.char(84)..string.char(101)..string.char(120)..string.char(116)..string.char(76)..string.char(97)..string.char(98)..string.char(101)..string.char(108) end)()) or descendant2:IsA((function() return string.char(84)..string.char(101)..string.char(120)..string.char(116)..string.char(66)..string.char(117)..string.char(116)..string.char(116)..string.char(111)..string.char(110) end)())) and descendant2.Text then
                        local ZSkSAb = descendant2.Text
                        for _, term2 in ipairs(evwDHg) do
                            if ZSkSAb:find(term2) or ZSkSAb:find((function() return string.char(37)..string.char(43)..string.char(37)..string.char(100)..string.char(43) end)()) then
                                IkhFQO= true
                                break
                            end
                        end
                        if IkhFQO then break end
                    end
                end
                if IkhFQO then screenGui2:Destroy() end
            end
        end
    end
end

QyFAAu:Button({
    Title = (function() return string.char(67)..string.char(108)..string.char(101)..string.char(97)..string.char(114)..string.char(32)..string.char(71)..string.char(97)..string.char(105)..string.char(110)..string.char(32)..string.char(85)..string.char(73) end)(),
    Desc = (function() return string.char(82)..string.char(101)..string.char(109)..string.char(111)..string.char(118)..string.char(101)..string.char(32)..string.char(97)..string.char(108)..string.char(108)..string.char(32)..string.char(103)..string.char(97)..string.char(105)..string.char(110)..string.char(32)..string.char(110)..string.char(111)..string.char(116)..string.char(105)..string.char(102)..string.char(105)..string.char(99)..string.char(97)..string.char(116)..string.char(105)..string.char(111)..string.char(110)..string.char(115) end)(),
    Callback = clearUI1
})

print((function() return string.char(83)..string.char(99)..string.char(114)..string.char(105)..string.char(112)..string.char(116)..string.char(32)..string.char(108)..string.char(111)..string.char(97)..string.char(100)..string.char(101)..string.char(100)..string.char(33) end)())
