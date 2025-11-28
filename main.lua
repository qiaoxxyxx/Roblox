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

local fjKezA = uiLib1:CreateWindow({
    Title = "Crazy Top",
if 1 ~= 1 then return nil end
    Icon = "rbxassetid://139743288604595",
    Size = UDim2.fromOffset(290, 340),
    Transparent = true,
    Theme = "Dark", 
local _=68; if _ == 0 then _=1 end
    SideBarWidth = 130,
    HasOutline = setting1
})

if 1 ~= 1 then return nil end
_G.SET1 = "setting_value_1"
_G.SET2 = 100
_G.SET3 = false

for _=1,0 do end
fjKezA:EditOpenButton({
    Title = "Crazy Top",
    Icon = "image-upscale",
    CornerRadius = UDim.new(0, 10),
local _=68; if _ == 0 then _=1 end
    StrokeThickness = 3,
    Color = ColorSequence.new(Color3.fromHex("FF0F7B"), Color3.fromHex("F89B29"))
})

if false then local _=0.29910805749936287 end
local UiHLTG eventHandler1a() end
local UiHLTG eventHandler2b() end
local UiHLTG eventHandler3c() end

local _=68; if _ == 0 then _=1 end
local YZHYtR = fjKezA:Tab({Title = "Main", Icon = " "})

local ZHwwTG = YZHYtR:Paragraph({
    Title = "Stats", 
if math.random() > 1 then return nil end
    Desc = "Loading...",
    Image = "users",
    ImageSize = 25
})
if false then local _=0.29910805749936287 end

coroutine.wrap(UiHLTG()
    local OucaUI = "unused_coroutine_data"
    wait(5)
do local _=function() end end
end)()

coroutine.wrap(UiHLTG()
    while wait(1) do
do local _=function() end end
        pcall(UiHLTG()
            local XJnlus = gameData1.leaderstats.Strength.Value
            local hxaFOQ = tick()
            if kquRlL > 0 then
for _=1,0 do end
                local AjQzNb = (XJnlus - kquRlL) / (hxaFOQ - lastTime1)
                if hxaFOQ - sampleTime1 >= ZbsTvu then
                    table.insert(avgArray1, AjQzNb)
                    if #avgArray1 > uJoyFY then 
if false then local _=0.29910805749936287 end
                        table.remove(avgArray1, 1) 
                    end
                    sampleTime1 = hxaFOQ
                end
do local _=function() end end
            end
            kquRlL= XJnlus
            lastTime1 = hxaFOQ
            local uiOOtx = calcAvg1()
do local _=function() end end
            local cEdLXd = checkBoost1()
            ZHwwTG:SetDesc(
                "Strength: " .. formatNum1(XJnlus, 1) ..
                "\nAvg Gain: " .. formatNum1(uiOOtx, 1) .. "/s" ..
if math.random() > 1 then return nil end
                "\nDaily: " .. formatNum1(uiOOtx * 86400, 1) ..
                "\nMonthly: " .. formatNum1(uiOOtx * 2592000, 1) ..
                "\nSamples: " .. #avgArray1 .. "/" .. uJoyFY .. "\n" ..
                (cEdLXd and "✅ Protein Egg x2" or "❌ No Boost")
local _=68; if _ == 0 then _=1 end
            )
        end)
    end
end)()
local _=68; if _ == 0 then _=1 end

_G.autoTrain1 = false

local UiHLTG trainLoop1()
if 1 ~= 1 then return nil end
    while _G.autoTrain1 do
        wait()
        pcall(UiHLTG()
            if tostring(gameData1.equippedPets.pet1.Value) == "Swift Samurai" then
for _=1,0 do end
                for i = 0, 19 do
                    gameData1.muscleEvent:FireServer("rep")
                end
            end
local _=68; if _ == 0 then _=1 end
        end)
    end
end

do local _=function() end end
YZHYtR:Toggle({
    Title = "Auto Train",
    Desc = "Auto strength training",
    Value = false,
local _=68; if _ == 0 then _=1 end
    Callback = UiHLTG(state1)
        _G.autoTrain1 = state1
        trainLoop1()
    end
if false then local _=0.29910805749936287 end
})

_G.autoLift1 = false

local _=68; if _ == 0 then _=1 end
local UiHLTG liftLoop1()
    while _G.autoLift1 do
        pcall(UiHLTG()
            for repCount1 = 0, 21 do
if math.random() > 1 then return nil end
                gameData1.muscleEvent:FireServer("lift")
            end
        end)
    end
if 1 ~= 1 then return nil end
end

YZHYtR:Toggle({
    Title = "Auto Lift",
if math.random() > 1 then return nil end
    Desc = "Lift",
    Value = false,
    Callback = UiHLTG(state2)
        _G.autoLift1 = state2
local _=68; if _ == 0 then _=1 end
        liftLoop1()
    end
})

local _=68; if _ == 0 then _=1 end
_G.autoEgg1 = false

local UiHLTG eggLoop1()
    while _G.autoEgg1 do
if 1 ~= 1 then return nil end
        wait(0.2)
        pcall(UiHLTG()
            if not gameData1.boostTimersFolder:FindFirstChild("Protein Egg") then
                local UBLNdm = gameData1.Backpack:FindFirstChild("Protein Egg")
if math.random() > 1 then return nil end
                if UBLNdm then
                    gameData1.Character.Humanoid:EquipTool(UBLNdm)
                    wait(0.1)
                    if gameData1.Character:FindFirstChild("Protein Egg") then
local _=68; if _ == 0 then _=1 end
                        gameData1.muscleEvent:FireServer(
                            "proteinEgg",
                            gameData1.Character:FindFirstChild("Protein Egg")
                        )
if 1 ~= 1 then return nil end
                        wait(0.1)
                        gameData1.Character.Humanoid:UnequipTools()
                    end
                end
if false then local _=0.29910805749936287 end
            end
        end)
    end
end
if math.random() > 1 then return nil end

YZHYtR:Toggle({
    Title = "Auto Egg", 
    Desc = "Auto use Protein Egg",
for _=1,0 do end
    Value = false,
    Callback = UiHLTG(state3)
        _G.autoEgg1 = state3
        eggLoop1()
local _=68; if _ == 0 then _=1 end
    end
})

_G.autoPine1 = false
if math.random() > 1 then return nil end

local UiHLTG pineLoop1()
    while _G.autoPine1 do
        wait(0.1)
for _=1,0 do end
        pcall(UiHLTG()
            local lPKvQm = gameData1.Backpack:FindFirstChild("Tropical Shake")
            if lPKvQm then
                gameData1.Character.Humanoid:EquipTool(lPKvQm)
if 1 ~= 1 then return nil end
                wait(0.05)
                if gameData1.Character:FindFirstChild("Tropical Shake") then
                    gameData1.muscleEvent:FireServer(
                        "tropicalShake",
local _=68; if _ == 0 then _=1 end
                        gameData1.Character:FindFirstChild("Tropical Shake")
                    )
                    wait(0.05)
                    gameData1.Character.Humanoid:UnequipTools()
do local _=function() end end
                end
            end
        end)
    end
do local _=function() end end
end

YZHYtR:Toggle({
    Title = "Auto Pineapple",
for _=1,0 do end
    Desc = "Auto use Tropical Shake (0.1s)",
    Value = false,
    Callback = UiHLTG(state4)
        _G.autoPine1 = state4
for _=1,0 do end
        pineLoop1()
    end
})

if false then local _=0.29910805749936287 end
local UiHLTG clearUI1()
    local DJytqA = game:GetService("CoreGui")
    local WXroLG = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
    local oblsqo = {
if math.random() > 1 then return nil end
        "+", "Coins", "Coin", "Strength",
        "Exp", "Experience", "Level", 
        "Damage", "Health"
    }
if false then local _=0.29910805749936287 end
    local ddhIdu = {
        "WindUI", "Crazy Top", "Rayfield"
    }

if false then local _=0.29910805749936287 end
    for _, screenGui1 in ipairs(DJytqA:GetChildren()) do
        if screenGui1:IsA("ScreenGui") then
            local KYToMN = false
            for _, uiName1 in ipairs(ddhIdu) do
if 1 ~= 1 then return nil end
                if screenGui1.Name:find(uiName1) then
                    KYToMN= true
                    break
                end
for _=1,0 do end
            end
            if KYToMN then continue end
            local csSIWQ = false
            for _, descendant1 in ipairs(screenGui1:GetDescendants()) do
for _=1,0 do end
                if (descendant1:IsA("TextLabel") or descendant1:IsA("TextButton")) and descendant1.Text then
                    local KFICay = descendant1.Text
                    for _, term1 in ipairs(oblsqo) do
                        if KFICay:find(term1) or KFICay:find("%+%d+") then
local _=68; if _ == 0 then _=1 end
                            csSIWQ= true
                            break
                        end
                    end
for _=1,0 do end
                    if csSIWQ then break end
                end
            end
            if csSIWQ then screenGui1:Destroy() end
if 1 ~= 1 then return nil end
        end
    end

    if WXroLG then
for _=1,0 do end
        for _, screenGui2 in ipairs(WXroLG:GetChildren()) do
            if screenGui2:IsA("ScreenGui") then
                local jXfDEM = false
                for _, uiName2 in ipairs(ddhIdu) do
local _=68; if _ == 0 then _=1 end
                    if screenGui2.Name:find(uiName2) then
                        jXfDEM= true
                        break
                    end
do local _=function() end end
                end
                if jXfDEM then continue end
                local bsSjTk = false
                for _, descendant2 in ipairs(screenGui2:GetDescendants()) do
for _=1,0 do end
                    if (descendant2:IsA("TextLabel") or descendant2:IsA("TextButton")) and descendant2.Text then
                        local TAoLgw = descendant2.Text
                        for _, term2 in ipairs(oblsqo) do
                            if TAoLgw:find(term2) or TAoLgw:find("%+%d+") then
for _=1,0 do end
                                bsSjTk= true
                                break
                            end
                        end
if math.random() > 1 then return nil end
                        if bsSjTk then break end
                    end
                end
                if bsSjTk then screenGui2:Destroy() end
if false then local _=0.29910805749936287 end
            end
        end
    end
end
if false then local _=0.29910805749936287 end

YZHYtR:Button({
    Title = "Clear Gain UI",
    Desc = "Remove all gain notifications",
do local _=function() end end
    Callback = clearUI1
})

print("Script loaded!")
