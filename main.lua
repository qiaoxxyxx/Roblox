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

local a1b2c3 = {
    d4e5f6 = "\85\65\112\112",
    g7h8i9 = "\118\49\46\48\46\48", 
    j0k1l2 = "\65\110\111\110\121\109\111\117\115",
    m3n4o5 = false,
    p6q7r8 = "\73\78\70\79"
}

local s9t0u1 = "\117\110\117\115\101\100\95\115\116\114\105\110\103\95\100\97\116\97"
local v2w3x4 = 12345
local y5z6a7 = {1, 2, 3, 4, 5}
local b8c9d0 = true
local e1f2g3 = false

local function h4i5j6() return "\117\110\117\115\101\100\95\114\101\116\117\114\110" end
local function k7l8m9(n0o1p2) return n0o1p2 * 2 end
local function q3r4s5(t6u7v8, w9x0y1) return t6u7v8 + w9x0y1 end

local z2a3b4 = {
    [0x1] = "\32",
    [0x2] = "\75", 
    [0x3] = "\77",
    [0x4] = "\66",
    [0x5] = "\84",
    [0x6] = "\81\97",
    [0x7] = "\81\105"
}

local c5d6e7 = {
    f8g9h0 = 800,
    i1j2k3 = 600,
    l4m5n6 = "\100\97\114\107",
    o7p8q9 = "\101\110\45\85\83",
    r0s1t2 = true
}

local function u3v4w5(x6y7z8, a9b0c1)
    local d2e3f4 = math["\102\108\111\111\114"](math["\108\111\103"](math["\109\97\120"](1, math["\97\98\115"](x6y7z8)), 1000))
    local g5h6i7 = z2a3b4[d2e3f4 + 1] or ("\101\43" .. d2e3f4)
    local j8k9l0 = math["\102\108\111\111\114"](x6y7z8 * ((10 ^ a9b0c1) / (1000 ^ d2e3f4))) / (10 ^ a9b0c1)
    return string["\102\111\114\109\97\116"]("\37\46" .. a9b0c1 .. "\102\37\115", j8k9l0, g5h6i7)
end

local m1n2o3, p4q5r6, s7t8u9, v0w1x2 = 0, {}, 0, 0
local y3z4a5 = 20
local b6c7d8 = 6

local function e9f0g1() end
local function h2i3j4() end  
local function k5l6m7() end

local function n8o9p0()
    return pcall(function()
        return game["\80\108\97\121\101\114\115"].LocalPlayer["\66\97\99\107\112\97\99\107"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")
    end)
end

local function q1r2s3()
    if #p4q5r6 == 0 then return 0 end
    local t4u5v6 = 0
    for w7x8y9, z0a1b2 in next, p4q5r6 do 
        t4u5v6 = t4u5v6 + (z0a1b2 or 0) 
    end
    return t4u5v6 / #p4q5r6
end

local c3d4e5 = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\88\50\57\55\57\55\50\50\57\47\82\111\98\108\111\120\47\109\97\105\110\47\85\73\76\105\98\46\108\117\97"))()

local f6g7h8 = c3d4e5:CreateWindow({
    Title = "\67\114\97\122\121\32\84\111\112",
    Icon = "\114\98\120\97\115\115\101\116\105\100\58\47\47\49\51\57\55\52\51\50\56\56\54\48\52\53\57\53",
    Size = UDim2.fromOffset(290, 340),
    Transparent = true,
    Theme = "\68\97\114\107", 
    SideBarWidth = 130,
    HasOutline = false
})

_G["\83\69\84\49"] = "\115\101\116\116\105\110\103\95\118\97\108\117\101\95\49"
_G["\83\69\84\50"] = 100
_G["\83\69\84\51"] = false

f6g7h8:EditOpenButton({
    Title = "\67\114\97\122\121\32\84\111\112",
    Icon = "\105\109\97\103\101\45\117\112\115\99\97\108\101",
    CornerRadius = UDim.new(0, 10),
    StrokeThickness = 3,
    Color = ColorSequence.new(Color3.fromHex("\70\70\48\70\55\66"), Color3.fromHex("\70\56\57\66\50\57"))
})

local function i9j0k1() end
local function l2m3n4() end
local function o5p6q7() end

local r8s9t0 = f6g7h8:Tab({Title = "\77\97\105\110", Icon = "\32"})

local u1v2w3 = r8s9t0:Paragraph({
    Title = "\83\116\97\116\115", 
    Desc = "\76\111\97\100\105\110\103\46\46\46",
    Image = "\117\115\101\114\115",
    ImageSize = 25
})

coroutine.wrap(function()
    local x4y5z6 = "\117\110\117\115\101\100\95\99\111\114\111\117\116\105\110\101\95\100\97\116\97"
    wait(5)
end)()

local a7b8c9 = game["\80\108\97\121\101\114\115"].LocalPlayer

coroutine.wrap(function()
    while wait(1) do
        pcall(function()
            local d0e1f2 = a7b8c9.Character
            if d0e1f2 then
                local g3h4i5 = a7b8c9:FindFirstChild("\108\101\97\100\101\114\115\116\97\116\115")
                if g3h4i5 then
                    local j6k7l8 = g3h4i5:FindFirstChild("\83\116\114\101\110\103\116\104")
                    if j6k7l8 then
                        local m9n0o1 = j6k7l8.Value
                        local p2q3r4 = tick()
                        if m1n2o3 > 0 then
                            local s5t6u7 = (m9n0o1 - m1n2o3) / (p2q3r4 - s7t8u9)
                            if p2q3r4 - v0w1x2 >= y3z4a5 then
                                table.insert(p4q5r6, s5t6u7)
                                if #p4q5r6 > b6c7d8 then 
                                    table.remove(p4q5r6, 1) 
                                end
                                v0w1x2 = p2q3r4
                            end
                        end
                        m1n2o3 = m9n0o1
                        s7t8u9 = p2q3r4
                        local v8w9x0 = q1r2s3()
                        local y1z2a3 = n8o9p0()
                        u1v2w3:SetDesc(
                            "\83\116\114\101\110\103\116\104\58\32" .. u3v4w5(m9n0o1, 1) ..
                            "\10\65\118\103\32\71\97\105\110\58\32" .. u3v4w5(v8w9x0, 1) .. "\47\115" ..
                            "\10\68\97\105\108\121\58\32" .. u3v4w5(v8w9x0 * 86400, 1) ..
                            "\10\77\111\110\116\104\108\121\58\32" .. u3v4w5(v8w9x0 * 2592000, 1) ..
                            "\10\83\97\109\112\108\101\115\58\32" .. #p4q5r6 .. "\47" .. b6c7d8 .. "\10" ..
                            (y1z2a3 and "\226\156\85\32\66\111\111\115\116\32\70\111\117\110\100" or "\226\157\140\32\78\111\32\66\111\111\115\116")
                        )
                    end
                end
            end
        end)
    end
end)()

_G["\65\85\84\79\95\84\82\65\73\78"] = false

local function b4c5d6()
    while _G["\65\85\84\79\95\84\82\65\73\78"] do
        wait()
        pcall(function()
            local e7f8g9 = a7b8c9.Character
            if e7f8g9 then
                local h0i1j2 = e7f8g9:FindFirstChildOfClass("\72\117\109\97\110\111\105\100")
                if h0i1j2 then
                    local k3l4m5 = e7f8g9:FindFirstChildOfClass("\84\111\111\108")
                    if k3l4m5 then
                        for n6o7p8 = 0, 19 do
                            k3l4m5:Activate()
                            wait(0.1)
                        end
                    end
                end
            end
        end)
    end
end

r8s9t0:Toggle({
    Title = "\65\117\116\111\32\84\114\97\105\110",
    Desc = "\65\117\116\111\32\116\114\97\105\110\105\110\103",
    Value = false,
    Callback = function(q9r0s1)
        _G["\65\85\84\79\95\84\82\65\73\78"] = q9r0s1
        b4c5d6()
    end
})

_G["\65\85\84\79\95\76\73\70\84"] = false

local function t2u3v4()
    while _G["\65\85\84\79\95\76\73\70\84"] do
        pcall(function()
            local w5x6y7 = a7b8c9.Character
            if w5x6y7 then
                local z8a9b0 = w5x6y7:FindFirstChildOfClass("\72\117\109\97\110\111\105\100")
                if z8a9b0 then
                    for c1d2e3 = 0, 21 do
                        local f4g5h6 = w5x6y7:FindFirstChildOfClass("\84\111\111\108")
                        if f4g5h6 then
                            f4g5h6:Activate()
                        end
                    end
                end
            end
        end)
    end
end

r8s9t0:Toggle({
    Title = "\65\117\116\111\32\76\105\102\116",
    Desc = "\76\105\102\116",
    Value = false,
    Callback = function(i7j8k9)
        _G["\65\85\84\79\95\76\73\70\84"] = i7j8k9
        t2u3v4()
    end
})

_G["\65\85\84\79\95\69\71\71"] = false

local function l0m1n2()
    while _G["\65\85\84\79\95\69\71\71"] do
        wait(0.2)
        pcall(function()
            local o3p4q5 = a7b8c9["\66\97\99\107\112\97\99\107"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")
            if o3p4q5 then
                local r6s7t8 = a7b8c9.Character
                if r6s7t8 then
                    local u9v0w1 = r6s7t8:FindFirstChildOfClass("\72\117\109\97\110\111\105\100")
                    if u9v0w1 then
                        u9v0w1:EquipTool(o3p4q5)
                        wait(0.1)
                        local x2y3z4 = r6s7t8:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")
                        if x2y3z4 then
                            x2y3z4:Activate()
                            wait(0.1)
                            u9v0w1:UnequipTools()
                        end
                    end
                end
            end
        end)
    end
end

r8s9t0:Toggle({
    Title = "\65\117\116\111\32\69\103\103", 
    Desc = "\65\117\116\111\32\117\115\101\32\69\103\103",
    Value = false,
    Callback = function(a5b6c7)
        _G["\65\85\84\79\95\69\71\71"] = a5b6c7
        l0m1n2()
    end
})

_G["\65\85\84\79\95\80\73\78\69"] = false

local function d8e9f0()
    while _G["\65\85\84\79\95\80\73\78\69"] do
        wait(0.1)
        pcall(function()
            local g1h2i3 = a7b8c9["\66\97\99\107\112\97\99\107"]:FindFirstChild("\84\114\111\112\105\99\97\108\32\83\104\97\107\101")
            if g1h2i3 then
                local j4k5l6 = a7b8c9.Character
                if j4k5l6 then
                    local m7n8o9 = j4k5l6:FindFirstChildOfClass("\72\117\109\97\110\111\105\100")
                    if m7n8o9 then
                        m7n8o9:EquipTool(g1h2i3)
                        wait(0.05)
                        local p0q1r2 = j4k5l6:FindFirstChild("\84\114\111\112\105\99\97\108\32\83\104\97\107\101")
                        if p0q1r2 then
                            p0q1r2:Activate()
                            wait(0.05)
                            m7n8o9:UnequipTools()
                        end
                    end
                end
            end
        end)
    end
end

r8s9t0:Toggle({
    Title = "\65\117\116\111\32\80\105\110\101\97\112\112\108\101",
    Desc = "\65\117\116\111\32\117\115\101\32\83\104\97\107\101",
    Value = false,
    Callback = function(s3t4u5)
        _G["\65\85\84\79\95\80\73\78\69"] = s3t4u5
        d8e9f0()
    end
})

local function v6w7x8()
    local y9z0a1 = game:GetService("\67\111\114\101\71\117\105")
    local b2c3d4 = game:GetService("\80\108\97\121\101\114\115").LocalPlayer:FindFirstChild("\80\108\97\121\101\114\71\117\105")
    local e5f6g7 = {
        "\43", "\67\111\105\110\115", "\83\116\114\101\110\103\116\104",
        "\69\120\112", "\76\101\118\101\108", "\68\97\109\97\103\101"
    }
    local h8i9j0 = {
        "\87\105\110\100\85\73", "\67\114\97\122\121\32\84\111\112", "\82\97\121\102\105\101\108\100"
    }
    
    for _, k1l2m3 in ipairs(y9z0a1:GetChildren()) do
        if k1l2m3:IsA("\83\99\114\101\101\110\71\117\105") then
            local n4o5p6 = false
            for _, q7r8s9 in ipairs(h8i9j0) do
                if k1l2m3.Name:find(q7r8s9) then
                    n4o5p6 = true
                    break
                end
            end
            if n4o5p6 then continue end
            local t0u1v2 = false
            for _, w3x4y5 in ipairs(k1l2m3:GetDescendants()) do
                if (w3x4y5:IsA("\84\101\120\116\76\97\98\101\108") or w3x4y5:IsA("\84\101\120\116\66\117\116\116\111\110")) and w3x4y5.Text then
                    local z6a7b8 = w3x4y5.Text
                    for _, c9d0e1 in ipairs(e5f6g7) do
                        if z6a7b8:find(c9d0e1) or z6a7b8:find("\37\43\37\100\43") then
                            t0u1v2 = true
                            break
                        end
                    end
                    if t0u1v2 then break end
                end
            end
            if t0u1v2 then k1l2m3:Destroy() end
        end
    end
    
    if b2c3d4 then
        for _, f2g3h4 in ipairs(b2c3d4:GetChildren()) do
            if f2g3h4:IsA("\83\99\114\101\101\110\71\117\105") then
                local i5j6k7 = false
                for _, l8m9n0 in ipairs(h8i9j0) do
                    if f2g3h4.Name:find(l8m9n0) then
                        i5j6k7 = true
                        break
                    end
                end
                if i5j6k7 then continue end
                local o1p2q3 = false
                for _, r4s5t6 in ipairs(f2g3h4:GetDescendants()) do
                    if (r4s5t6:IsA("\84\101\120\116\76\97\98\101\108") or r4s5t6:IsA("\84\101\120\116\66\117\116\116\111\110")) and r4s5t6.Text then
                        local u7v8w9 = r4s5t6.Text
                        for _, x0y1z2 in ipairs(e5f6g7) do
                            if u7v8w9:find(x0y1z2) or u7v8w9:find("\37\43\37\100\43") then
                                o1p2q3 = true
                                break
                            end
                        end
                        if o1p2q3 then break end
                    end
                end
                if o1p2q3 then f2g3h4:Destroy() end
            end
        end
    end
end

r8s9t0:Button({
    Title = "\67\108\101\97\114\32\71\97\105\110\32\85\73",
    Desc = "\82\101\109\111\118\101\32\103\97\105\110\32\110\111\116\105\102\105\99\97\116\105\111\110\115",
    Callback = v6w7x8
})

print("\83\99\114\105\112\116\32\108\111\97\100\101\100\33")
