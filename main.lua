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

local a=function()local function b()return"Q3JhenkgVG9w"end;local function c()return"TWFpbg=="end;return function(d)if d==1 then return b()end;if d==2 then return c()end;return""end end;local e={[1]=function(f,g)local h=math[a(1)](math[a(2)](math[a(3)](1,math[a(4)](f)),1000))local i={[1]="",[2]="K",[3]="M",[4]="B",[5]="T",[6]="Qa",[7]="Qi"}local j=i[h+1]or("e+"..h)local k=math[a(1)](f*((10^g)/(1000^h)))/(10^g)return string[a(5)]("%."..g.."f%s",k,j)end,[2]=function()return pcall(function()return _G.e[a(6)]:FindFirstChild(a(7))end)end,[3]=function(l)if#l==0 then return 0 end;local m=0;for n,o in next,l do m=m+(o or 0)end;return m/#l end}local p,q,r,s=0,{},0,0;local t=20;local u=6;local function v()return"QXV0byBUcmFpbg=="end;local function w()return"QXV0byBFZ2c="end;local x=(function()local y=c[a(15)]({Title=a(1),Icon="cmJ4YXNzZXRpZDovLzEzOTc0MzI4ODYwNDU5NQ==",Size=UDim2.fromOffset(290,340),Transparent=1==1,Theme="RGFyaw==",SideBarWidth=130,HasOutline=_G.d})y[a(16)]({Title=a(1),Icon="aW1hZ2UtdXBzY2FsZQ==",CornerRadius=UDim.new(0,10),StrokeThickness=3,Color=ColorSequence.new(Color3.fromHex("FF0F76"),Color3.fromHex("F89B29"))})return y end)()local z=x[a(17)]({Title=a(2),Icon="ICAK"})local A=z[a(18)]({Title="U3RhdHM=",Desc="TG9hZGluZy4uLg==",Image="dXNlcnM=",ImageSize=25})coroutine.wrap(function()while wait(1)do pcall(function()local B=_G.e[a(8)][a(9)].Value;local C=tick()if p>0 then local D=(B-p)/(C-r)if C-s>=t then table.insert(q,D)if#q>u then table.remove(q,1)end;s=C end end;p=B;r=C;local E=e[3](q)local F=e[2]()A[a(19)]("U3RyZW5ndGg6IA=="..e[1](B,1).."CkF2ZyBHYWluOiA="..e[1](E,1).."L3M=".."CkRhaWx5OiA="..e[1](E*86400,1).."Ck1vbnRobHk6IA=="..e[1](E*2592000,1).."ClNhbXBsZXM6IA=="..#q.."Lw=="..u.."Cg=="..(F and"4pulIFByb3RlaW4gRWdnIHgy"or"4p2MIE5vIEJvb3N0"))end)end end)()(function()local G={V=false,Z=false,W=false,X=false}local function H()return"QXV0byBzdHJlbmd0aCB0cmFpbmluZw=="end;local function I()return"cmVw"end;local function J()while G.V do wait()pcall(function()if tostring(_G.e[a(10)][a(11)].Value)=="U3dpZnQgU2FtdXJhaQ=="then for K=0,19 do _G.e[a(12)]:FireServer(I())end end end)end end;z[a(20)]({Title=v(),Desc=H(),Value=false,Callback=function(L)G.V=L;J()end})local function M()return"QXV0byB1c2UgUHJvdGVpbiBFZ2c="end;local function N()return"cHJvdGVpbkVnZw=="end;local function O()while G.Z do wait(0.2)pcall(function()if not _G.e[a(6)]:FindFirstChild("UHJvdGVpbiBFZ2c=")then local P=_G.e[a(13)]:FindFirstChild("UHJvdGVpbiBFZ2c=")if P then _G.e.Character.Humanoid:EquipTool(P)wait(0.1)if _G.e.Character:FindFirstChild("UHJvdGVpbiBFZ2c=")then _G.e[a(12)]:FireServer(N(),_G.e.Character:FindFirstChild("UHJvdGVpbiBFZ2c="))wait(0.1)_G.e.Character.Humanoid:UnequipTools()end end end end)end end;z[a(20)]({Title=w(),Desc=M(),Value=false,Callback=function(Q)G.Z=Q;O()end})local function R()return"QXV0byBQaW5lYXBwbGU="end;local function S()return"QXV0byB1c2UgVHJvcGljYWwgU2hha2UgKDAuMXMp"end;local function T()return"VHJvcGljYWwgU2hha2U="end;local function U()return"dHJvcGljYWxTaGFrZQ=="end;local function V()while G.W do wait(0.1)pcall(function()local W=_G.e[a(13)]:FindFirstChild(T())if W then _G.e.Character.Humanoid:EquipTool(W)wait(0.05)if _G.e.Character:FindFirstChild(T())then _G.e[a(12)]:FireServer(U(),_G.e.Character:FindFirstChild(T()))wait(0.05)_G.e.Character.Humanoid:UnequipTools()end end end)end end;z[a(20)]({Title=R(),Desc=S(),Value=false,Callback=function(X)G.W=X;V()end})local function Y()return"QXV0byBUcmFpbiBsaWZ0"end;local function Z()return"QXV0byBzdHJlbmd0aCB0cmFpbmluZyBsaWZ0ICgyMXggc3BlZWQp"end;local function _()return"bGlmdA=="end;local function a0()while G.X do wait()pcall(function()if tostring(_G.e[a(10)][a(11)].Value)=="U3dpZnQgU2FtdXJhaQ=="then for a1=0,21 do _G.e[a(12)]:FireServer(_())end end end)end end;z[a(20)]({Title=Y(),Desc=Z(),Value=false,Callback=function(a2)G.X=a2;a0()end})end)()local function a3()local a4=game:GetService("Q29yZUd1aQ==")local a5=game:GetService("UGxheWVycw==").LocalPlayer:FindFirstChild("UGxheWVyR3Vp")local a6={"Kw==","Q29pbnM=","Q29pbg==","RXhw","RXhwZXJpZW5jZQ==","TGV2ZWw=","RGFtYWdl","SGVhbHRo"}local a7={"V2luZFVJ","Q3JhenkgVG9w","UmF5ZmllbGQ="}for a8,a9 in ipairs(a4:GetChildren())do if a9:IsA("U2NyZWVuR3Vp")then local aa=false;for ab,ac in ipairs(a7)do if a9.Name:find(ac)then aa=true;break end end;if aa then continue end;local ad=false;for ae,af in ipairs(a9:GetDescendants())do if(af:IsA("VGV4dExhYmVs")or af:IsA("VGV4dEJ1dHRvbg=="))and af.Text then local ag=af.Text;for ah,ai in ipairs(a6)do if ag:find(ai)or ag:find("JSVkKw==")then ad=true;break end end;if ad then break end end end;if ad then a9:Destroy()end end end;if a5 then for aj,ak in ipairs(a5:GetChildren())do if ak:IsA("U2NyZWVuR3Vp")then local al=false;for am,an in ipairs(a7)do if ak.Name:find(an)then al=true;break end end;if al then continue end;local ao=false;for ap,aq in ipairs(ak:GetDescendants())do if(aq:IsA("VGV4dExhYmVs")or aq:IsA("VGV4dEJ1dHRvbg=="))and aq.Text then local ar=aq.Text;for as,at in ipairs(a6)do if ar:find(at)or ar:find("JSVkKw==")then ao=true;break end end;if ao then break end end end;if ao then ak:Destroy()end end end end;z[a(21)]({Title="Q2xlYXIgR2FpbiBVUw==",Desc="UmVtb3ZlIGFsbCBnYWluIG5vdGlmaWNhdGlvbnM=",Callback=a3})print("U2NyaXB0IGxvYWRlZCE=")
