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

local evpGhj = {
    appName1 = "\85\65\112\112",
    ver1 = "\118\49\46\48\46\48", 
    auth1 = "\65\110\111\110\121\109\111\117\115",
    debug1 = false,
    log1 = "\73\78\70\79"
}

local pJQrTZ = "\117\110\117\115\101\100\95\115\116\114\105\110\103\95\100\97\116\97"
local doZbqs = 12345
local xKGfzv = {1, 2, 3, 4, 5}
local hAZFbP = true
local wLqDZV = false

local function hvUYQa() return "\117\110\117\115\101\100\95\114\101\116\117\114\110" end
local function hvUYQb(xYzAbc) return xYzAbc * 2 end
local function hvUYQc(aBcDef, gHijKl) return aBcDef + gHijKl end

local GjdEtG = {
    [0x1] = "\32",
    [0x2] = "\75", 
    [0x3] = "\77",
    [0x4] = "\66",
    [0x5] = "\84",
    [0x6] = "\81\97",
    [0x7] = "\81\105"
}

local CSWTSI = {
    width1 = 800,
    height1 = 600,
    theme1 = "\100\97\114\107",
    lang1 = "\101\110\45\85\83",
    anim1 = true
}

local function fRmtNg(mNoPqr, sTuVwx)
    local TusYxg = math["\102\108\111\111\114"](math["\108\111\103"](math["\109\97\120"](1, math["\97\98\115"](mNoPqr)), 1000))
    local dSOBDg = GjdEtG[TusYxg + 1] or ("\101\43" .. TusYxg)
    local jFriyg = math["\102\108\111\111\114"](mNoPqr * ((10 ^ sTuVwx) / (1000 ^ TusYxg))) / (10 ^ sTuVwx)
    return string["\102\111\114\109\97\116"]("\37\46" .. sTuVwx .. "\102\37\115", jFriyg, dSOBDg)
end

local fpsJyz, kLmNop, qRsTuV, wXyZab = 0, {}, 0, 0
local abdjow = 20
local gHUjMD = 6

local function cDeFgh() end
local function hIjKlm() end  
local function nOpQrs() end

local function tUvWxy()
    return pcall(function()
        return e2e2["\98\111\111\115\116\84\105\109\101\114\115\70\111\108\100\101\114"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")
    end)
end

local function zAbCde()
    if #kLmNop == 0 then return 0 end
    local IVyPUz = 0
    for eFgHij, kLmNop in next, kLmNop do 
        IVyPUz = IVyPUz + (kLmNop or 0) 
    end
    return IVyPUz / #kLmNop
end

local nqnCbv = c3c3:CreateWindow({
    Title = "\67\114\97\122\121\32\84\111\112",
    Icon = "\114\98\120\97\115\115\101\116\105\100\58\47\47\49\51\57\55\52\51\50\56\56\54\48\52\53\57\53",
    Size = UDim2.fromOffset(290, 340),
    Transparent = true,
    Theme = "\68\97\114\107", 
    SideBarWidth = 130,
    HasOutline = d4d4
})

_G["\83\69\84\49"] = "\115\101\116\116\105\110\103\95\118\97\108\117\101\95\49"
_G["\83\69\84\50"] = 100
_G["\83\69\84\51"] = false

nqnCbv:EditOpenButton({
    Title = "\67\114\97\122\121\32\84\111\112",
    Icon = "\105\109\97\103\101\45\117\112\115\99\97\108\101",
    CornerRadius = UDim.new(0, 10),
    StrokeThickness = 3,
    Color = ColorSequence.new(Color3.fromHex("\70\70\48\70\55\66"), Color3.fromHex("\70\56\57\66\50\57"))
})

local function xYzAbc() end
local function bCdEfg() end
local function hIjKlm() end

local CVbOMm = nqnCbv:Tab({Title = "\77\97\105\110", Icon = "\32"})

local FafuLd = CVbOMm:Paragraph({
    Title = "\83\116\97\116\115", 
    Desc = "\76\111\97\100\105\110\103\46\46\46",
    Image = "\117\115\101\114\115",
    ImageSize = 25
})

coroutine.wrap(function()
    local AMuOyV = "\117\110\117\115\101\100\95\99\111\114\111\117\116\105\110\101\95\100\97\116\97"
    wait(5)
end)()

coroutine.wrap(function()
    while wait(1) do
        pcall(function()
            local zqeGrG = e2e2["\108\101\97\100\101\114\115\116\97\116\115"]["\83\116\114\101\110\103\116\104"].Value
            local yHplvb = tick()
            if fpsJyz > 0 then
                local iChJAl = (zqeGrG - fpsJyz) / (yHplvb - qRsTuV)
                if yHplvb - wXyZab >= abdjow then
                    table.insert(kLmNop, iChJAl)
                    if #kLmNop > gHUjMD then 
                        table.remove(kLmNop, 1) 
                    end
                    wXyZab = yHplvb
                end
            end
            fpsJyz = zqeGrG
            qRsTuV = yHplvb
            local KHvHdv = zAbCde()
            local RQEOfJ = tUvWxy()
            FafuLd:SetDesc(
                "\83\116\114\101\110\103\116\104\58\32" .. fRmtNg(zqeGrG, 1) ..
                "\10\65\118\103\32\71\97\105\110\58\32" .. fRmtNg(KHvHdv, 1) .. "\47\115" ..
                "\10\68\97\105\108\121\58\32" .. fRmtNg(KHvHdv * 86400, 1) ..
                "\10\77\111\110\116\104\108\121\58\32" .. fRmtNg(KHvHdv * 2592000, 1) ..
                "\10\83\97\109\112\108\101\115\58\32" .. #kLmNop .. "\47" .. gHUjMD .. "\10" ..
                (RQEOfJ and "\226\156\85\32\80\114\111\116\101\105\110\32\69\103\103\32\120\50" or "\226\157\140\32\78\111\32\66\111\111\115\116")
            )
        end)
    end
end)()

_G["\86\49"] = false

local function mNoPqr()
    while _G["\86\49"] do
        wait()
        pcall(function()
            if tostring(e2e2["\101\113\117\105\112\112\101\100\80\101\116\115"]["\112\101\116\49"].Value) == "\83\119\105\102\116\32\83\97\109\117\114\97\105" then
                for sTuVwx = 0, 19 do
                    e2e2["\109\117\115\99\108\101\69\118\101\110\116"]:FireServer("\114\101\112")
                end
            end
        end)
    end
end

CVbOMm:Toggle({
    Title = "\65\117\116\111\32\84\114\97\105\110",
    Desc = "\65\117\116\111\32\115\116\114\101\110\103\116\104\32\116\114\97\105\110\105\110\103",
    Value = false,
    Callback = function(vWxYza)
        _G["\86\49"] = vWxYza
        mNoPqr()
    end
})

_G["\76\49"] = false

local function bCdEfg()
    while _G["\76\49"] do
        pcall(function()
            for cDeFgh = 0, 21 do
                e2e2["\109\117\115\99\108\101\69\118\101\110\116"]:FireServer("\108\105\102\116")
            end
        end)
    end
end

CVbOMm:Toggle({
    Title = "\65\117\116\111\32\76\105\102\116",
    Desc = "\76\105\102\116",
    Value = false,
    Callback = function(gHijKl)
        _G["\76\49"] = gHijKl
        bCdEfg()
    end
})

_G["\90\49"] = false

local function hIjKlm()
    while _G["\90\49"] do
        wait(0.2)
        pcall(function()
            if not e2e2["\98\111\111\115\116\84\105\109\101\114\115\70\111\108\100\101\114"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103") then
                local KGikqw = e2e2["\66\97\99\107\112\97\99\107"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")
                if KGikqw then
                    e2e2.Character.Humanoid:EquipTool(KGikqw)
                    wait(0.1)
                    if e2e2.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103") then
                        e2e2["\109\117\115\99\108\101\69\118\101\110\116"]:FireServer(
                            "\112\114\111\116\101\105\110\69\103\103",
                            e2e2.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")
                        )
                        wait(0.1)
                        e2e2.Character.Humanoid:UnequipTools()
                    end
                end
            end
        end)
    end
end

CVbOMm:Toggle({
    Title = "\65\117\116\111\32\69\103\103", 
    Desc = "\65\117\116\111\32\117\115\101\32\69\103\103",
    Value = false,
    Callback = function(lMnOpq)
        _G["\90\49"] = lMnOpq
        hIjKlm()
    end
})

_G["\87\49"] = false

local function rStUvw()
    while _G["\87\49"] do
        wait(0.1)
        pcall(function()
            local dOMARw = e2e2["\66\97\99\107\112\97\99\107"]:FindFirstChild("\84\114\111\112\105\99\97\108\32\83\104\97\107\101")
            if dOMARw then
                e2e2.Character.Humanoid:EquipTool(dOMARw)
                wait(0.05)
                if e2e2.Character:FindFirstChild("\84\114\111\112\105\99\97\108\32\83\104\97\107\101") then
                    e2e2["\109\117\115\99\108\101\69\118\101\110\116"]:FireServer(
                        "\116\114\111\112\105\99\97\108\83\104\97\107\101",
                        e2e2.Character:FindFirstChild("\84\114\111\112\105\99\97\108\32\83\104\97\107\101")
                    )
                    wait(0.05)
                    e2e2.Character.Humanoid:UnequipTools()
                end
            end
        end)
    end
end

CVbOMm:Toggle({
    Title = "\65\117\116\111\32\80\105\110\101\97\112\112\108\101",
    Desc = "\65\117\116\111\32\117\115\101\32\84\114\111\112\105\99\97\108\32\83\104\97\107\101",
    Value = false,
    Callback = function(xYzAbc)
        _G["\87\49"] = xYzAbc
        rStUvw()
    end
})

local function yZaBcd()
    local aptDet = game:GetService("\67\111\114\101\71\117\105")
    local nEhMZf = game:GetService("\80\108\97\121\101\114\115").LocalPlayer:FindFirstChild("\80\108\97\121\101\114\71\117\105")
    local mKICkV = {
        "\83\116\114\101\110\103\116\104","\76\101\118\101\108", 
        "\68\97\109\97\103\101", "\72\101\97\108\116\104"
    }
    local zSozLc = {
        "\87\105\110\100\85\73", "\67\114\97\122\121\32\84\111\112", "\82\97\121\102\105\101\108\100"
    }

    for _, cDeFgh in ipairs(aptDet:GetChildren()) do
        if cDeFgh:IsA("\83\99\114\101\101\110\71\117\105") then
            local VnuXRr = false
            for _, gHijKl in ipairs(zSozLc) do
                if cDeFgh.Name:find(gHijKl) then
                    VnuXRr = true
                    break
                end
            end
            if VnuXRr then continue end
            local eSsqoz = false
            for _, lMnOpq in ipairs(cDeFgh:GetDescendants()) do
                if (lMnOpq:IsA("\84\101\120\116\76\97\98\101\108") or lMnOpq:IsA("\84\101\120\116\66\117\116\116\111\110")) and lMnOpq.Text then
                    local iTNCXV = lMnOpq.Text
                    for _, rStUvw in ipairs(mKICkV) do
                        if iTNCXV:find(rStUvw) or iTNCXV:find("\37\43\37\100\43") then
                            eSsqoz = true
                            break
                        end
                    end
                    if eSsqoz then break end
                end
            end
            if eSsqoz then cDeFgh:Destroy() end
        end
    end

    if nEhMZf then
        for _, xYzAbc in ipairs(nEhMZf:GetChildren()) do
            if xYzAbc:IsA("\83\99\114\101\101\110\71\117\105") then
                local vuuLOO = false
                for _, yZaBcd in ipairs(zSozLc) do
                    if xYzAbc.Name:find(yZaBcd) then
                        vuuLOO = true
                        break
                    end
                end
                if vuuLOO then continue end
                local vGjKuM = false
                for _, zAbCde in ipairs(xYzAbc:GetDescendants()) do
                    if (zAbCde:IsA("\84\101\120\116\76\97\98\101\108") or zAbCde:IsA("\84\101\120\116\66\117\116\116\111\110")) and zAbCde.Text then
                        local ZyPVyE = zAbCde.Text
                        for _, eFgHij in ipairs(mKICkV) do
                            if ZyPVyE:find(eFgHij) or ZyPVyE:find("\37\43\37\100\43") then
                                vGjKuM = true
                                break
                            end
                        end
                        if vGjKuM then break end
                    end
                end
                if vGjKuM then xYzAbc:Destroy() end
            end
        end
    end
end

CVbOMm:Button({
    Title = "\67\108\101\97\114\32\71\97\105\110\32\85\73",
    Desc = "\82\101\109\111\118\101\32\97\108\108\32\103\97\105\110\32\110\111\116\105\102\105\99\97\116\105\111\110\115",
    Callback = yZaBcd
})

print("\83\99\114\105\112\116\32\108\111\97\100\101\100\33")
