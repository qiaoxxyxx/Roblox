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

-- 第一部分：基础配置和数学函数（隐藏部分字符串）
local _0x12A3B4 = (function()
    local function get_string_1() return "Q3JhenkgVG9w" end -- Crazy Top
    local function get_string_2() return "TWFpbg==" end     -- Main
    
    return function(index)
        if index == 1 then return get_string_1() end
        if index == 2 then return get_string_2() end
        -- 其他字符串通过后续函数获取
        return ""
    end
end)()

-- 数学函数配置（隐藏更多字符串）
local _0x23B4C5 = {
    [0x1] = function(_0xA1B2C3, _0xD4E5F6)
        local function get_math_string_1() return "U3RhdHM=" end -- Stats
        local function get_math_string_2() return "TG9hZGluZy4uLg==" end -- Loading...
        
        local _0x7E8F9A = math[_0x12A3B4(0x1)](math[_0x12A3B4(0x2)](math[_0x12A3B4(0x3)](0x1, math[_0x12A3B4(0x4)](_0xA1B2C3)), 0x3E8))
        local _0xA1B2C4 = {[0x1]="",[0x2]="K",[0x3]="M",[0x4]="B",[0x5]="T",[0x6]="Qa",[0x7]="Qi"}
        local _0xD4E5F7 = _0xA1B2C4[_0x7E8F9A + 0x1] or ("e+" .. _0x7E8F9A)
        local _0x7E8F9B = math[_0x12A3B4(0x1)](_0xA1B2C3 * ((0xA ^ _0xD4E5F6) / (0x3E8 ^ _0x7E8F9A))) / (0xA ^ _0xD4E5F6)
        return string[_0x12A3B4(0x5)]("%." .. _0xD4E5F6 .. "f%s", _0x7E8F9B, _0xD4E5F7)
    end
}

-- 全局变量（隐藏字符串）
local _0x34C5D6, _0x45D6E7, _0x56E7F8, _0x67F8G9 = 0x0, {}, 0x0, 0x0
local function get_config_string_1() return "QXV0byBUcmFpbg==" end -- Auto Train
local function get_config_string_2() return "QXV0byBFZ2c=" end     -- Auto Egg

-- 窗口创建（分散字符串）
local _0x9A0I1J = (function()
    local function get_window_string_1() return "cmJ4YXNzZXRpZDovLzEzOTc0MzI4ODYwNDU5NQ==" end -- rbxassetid
    local function get_window_string_2() return "RGFyaw==" end -- Dark
    
    local _0xK2L3M4 = c[_0x12A3B4(0xE)]({
        Title = _0x12A3B4(1), -- Crazy Top
        Icon = get_window_string_1(),
        Size = UDim2.fromOffset(0x122, 0x154),
        Transparent = 0x1 == 0x1,
        Theme = get_window_string_2(), 
        SideBarWidth = 0x82,
        HasOutline = d
    })
    
    return _0xK2L3M4
end)()

-- UI元素创建（更多分散字符串）
local _0xAB1J2K = _0x9A0I1J[_0x12A3B4(0x10)]({
    Title = _0x12A3B4(2), -- Main
    Icon = "ICAK" -- Space
})

local _0xBC2K3L = _0xAB1J2K[_0x12A3B4(0x11)]({
    Title = "U3RhdHM=", -- Stats (直接嵌入)
    Desc = "TG9hZGluZy4uLg==", -- Loading... (直接嵌入)
    Image = "dXNlcnM=", -- users (直接嵌入)
    ImageSize = 0x19
})

-- 协程中隐藏字符串
coroutine.wrap(function()
    local function get_coroutine_string_1() return "U3RyZW5ndGg6IA==" end -- Strength: 
    local function get_coroutine_string_2() return "CkF2ZyBHYWluOiA=" end -- \nAvg Gain: 
    
    while wait(0x1) do
        pcall(function()
            -- ... 统计代码 ...
            _0xBC2K3L[_0x12A3B4(0x12)](
                get_coroutine_string_1() .. _0x23B4C5[0x1](_0xCD3L4M, 0x1) ..
                get_coroutine_string_2() .. _0x23B4C5[0x1](_0xFG6O7P, 0x1) .. "L3M=" -- /s
            )
        end)
    end
end)()

-- 自动训练功能（分散字符串）
(function()
    local function get_train_string_1() return "QXV0byBzdHJlbmd0aCB0cmFpbmluZw==" end -- Auto strength training
    local function get_train_string_2() return "cmVw" end -- rep
    
    local _0xHI8Q9R = {V = false, Z = false, W = false, X = false}
    
    local _0xIJ9R0S = function()
        while _0xHI8Q9R.V do
            wait()
            pcall(function()
                if tostring(e[_0x12A3B4(0xA)][_0x12A3B4(0xB)].Value) == "U3dpZnQgU2FtdXJhaQ==" then -- Swift Samurai
                    for _0xJK0S1T = 0x0, 0x13 do
                        e[_0x12A3B4(0xC)]:FireServer(get_train_string_2())
                    end
                end
            end)
        end
    end
    
    _0xAB1J2K[_0x12A3B4(0x13)]({
        Title = get_config_string_1(), -- Auto Train
        Desc = get_train_string_1(), -- Auto strength training
        Value = 0x1 == 0x2,
        Callback = function(_0xKL1T2U)
            _0xHI8Q9R.V = _0xKL1T2U
            _0xIJ9R0S()
        end
    })
end)()

-- 自动鸡蛋功能（更多分散字符串）
(function()
    local function get_egg_string_1() return "QXV0byB1c2UgUHJvdGVpbiBFZ2c=" end -- Auto use Protein Egg
    local function get_egg_string_2() return "cHJvdGVpbkVnZw==" end -- proteinEgg
    
    local _0xLM2U3V = function()
        while _0xHI8Q9R.Z do
            wait(0x2 * 0x1 / 0xA)
            pcall(function()
                if not e[_0x12A3B4(0x6)]:FindFirstChild("UHJvdGVpbiBFZ2c=") then -- Protein Egg
                    local _0xMN3V4W = e[_0x12A3B4(0xD)]:FindFirstChild("UHJvdGVpbiBFZ2c=") -- Protein Egg
                    if _0xMN3V4W then
                        e.Character.Humanoid:EquipTool(_0xMN3V4W)
                        wait(0x1 / 0xA)
                        if e.Character:FindFirstChild("UHJvdGVpbiBFZ2c=") then -- Protein Egg
                            e[_0x12A3B4(0xC)]:FireServer(get_egg_string_2(), e.Character:FindFirstChild("UHJvdGVpbiBFZ2c="))
                            wait(0x1 / 0xA)
                            e.Character.Humanoid:UnequipTools()
                        end
                    end
                end
            end)
        end
    end
    
    _0xAB1J2K[_0x12A3B4(0x13)]({
        Title = get_config_string_2(), -- Auto Egg
        Desc = get_egg_string_1(), -- Auto use Protein Egg
        Value = 0x1 == 0x2,
        Callback = function(_0xNO4W5X)
            _0xHI8Q9R.Z = _0xNO4W5X
            _0xLM2U3V()
        end
    })
end)()

-- 自动菠萝功能（继续分散）
(function()
    local function get_pineapple_string_1() return "QXV0byBQaW5lYXBwbGU=" end -- Auto Pineapple
    local function get_pineapple_string_2() return "QXV0byB1c2UgVHJvcGljYWwgU2hha2UgKDAuMXMp" end -- Auto use Tropical Shake (0.1s)
    local function get_pineapple_string_3() return "VHJvcGljYWwgU2hha2U=" end -- Tropical Shake
    local function get_pineapple_string_4() return "dHJvcGljYWxTaGFrZQ==" end -- tropicalShake
    
    local _0xOP5X6Y = function()
        while _0xHI8Q9R.W do
            wait(0x1 / 0xA)
            pcall(function()
                local _0xPQ6Y7Z = e[_0x12A3B4(0xD)]:FindFirstChild(get_pineapple_string_3())
                if _0xPQ6Y7Z then
                    e.Character.Humanoid:EquipTool(_0xPQ6Y7Z)
                    wait(0x1 / 0x14)
                    if e.Character:FindFirstChild(get_pineapple_string_3()) then
                        e[_0x12A3B4(0xC)]:FireServer(get_pineapple_string_4(), e.Character:FindFirstChild(get_pineapple_string_3()))
                        wait(0x1 / 0x14)
                        e.Character.Humanoid:UnequipTools()
                    end
                end
            end)
        end
    end
    
    _0xAB1J2K[_0x12A3B4(0x13)]({
        Title = get_pineapple_string_1(),
        Desc = get_pineapple_string_2(),
        Value = 0x1 == 0x2,
        Callback = function(_0xQR7Z8A)
            _0xHI8Q9R.W = _0xQR7Z8A
            _0xOP5X6Y()
        end
    })
end)()

-- 自动锻炼lift功能（最后一部分字符串）
(function()
    local function get_lift_string_1() return "QXV0byBUcmFpbiBsaWZ0" end -- Auto Train lift
    local function get_lift_string_2() return "QXV0byBzdHJlbmd0aCB0cmFpbmluZyBsaWZ0ICgyMXggc3BlZWQp" end -- Auto strength training lift (21x speed)
    local function get_lift_string_3() return "bGlmdA==" end -- lift
    
    local _0xRS8A9B = function()
        while _0xHI8Q9R.X do
            wait()
            pcall(function()
                if tostring(e[_0x12A3B4(0xA)][_0x12A3B4(0xB)].Value) == "U3dpZnQgU2FtdXJhaQ==" then -- Swift Samurai
                    for _0xST9B0C = 0x0, 0x15 do
                        e[_0x12A3B4(0xC)]:FireServer(get_lift_string_3())
                    end
                end
            end)
        end
    end
    
    _0xAB1J2K[_0x12A3B4(0x13)]({
        Title = get_lift_string_1(),
        Desc = get_lift_string_2(),
        Value = 0x1 == 0x2,
        Callback = function(_0xTU0C1D)
            _0xHI8Q9R.X = _0xTU0C1D
            _0xRS8A9B()
        end
    })
end)()

-- 清理UI功能（嵌入剩余字符串）
local function _W0X1Y2()
    local function get_clean_string_1() return "Q2xlYXIgR2FpbiBVUw==" end -- Clear Gain UI
    local function get_clean_string_2() return "UmVtb3ZlIGFsbCBnYWluIG5vdGlmaWNhdGlvbnM=" end -- Remove all gain notifications
    
    -- ... 清理代码 ...
end

_0xAB1J2K[_0x12A3B4(0x14)]({
    Title = get_clean_string_1(),
    Desc = get_clean_string_2(),
    Callback = _W0X1Y2
})

-- 最后打印（隐藏最终字符串）
local function get_final_string() return "U2NyaXB0IGxvYWRlZCE=" end -- Script loaded!
print(get_final_string())
