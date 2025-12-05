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
        local s=game:HttpGet("https://raw.githubusercontent.com/qiaoxxyxx/Roblox/refs/heads/main/whitelist1.txt")
        local t={}for u in s:gmatch("[^,]+")do t[u:gsub("%s+","")]=true end
        return t[p]
    end)
    if q and r then f(true)wait(3)return true else f(false)wait(3)game.Players.LocalPlayer:Kick("\230\156\170\230\142\162\230\129\162\231\148\168\230\136\183")return false end
end

if not o()then return end

WindUI=loadstring(game:HttpGet("https://raw.githubusercontent.com/iyoulin/iyoulin/refs/heads/main/ato"))()local Start=tick()local vu=game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:Connect(function()vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)local Window=WindUI:CreateWindow({Title="Kolixi",Icon="rbxassetid://139743288604595",Author="Ysia",Folder="",Size=UDim2.fromOffset(290,340),Transparent=true,Theme="Dark",SideBarWidth=130,HasOutline=true})Window:EditOpenButton({Title="Cr4zy",Icon="image-upscale",CornerRadius=UDim.new(0,10),StrokeThickness=3,Color=ColorSequence.new(Color3.fromHex("FF0F7B"),Color3.fromHex("F89B29"))})local MainTab=Window:Tab({Title="Main",Icon=""})local fi=0 local StatsDisplay=MainTab:Paragraph({Title="Stats:",Desc="",Image="users",ImageSize=25})spawn(function()while wait()do pcall(function()fi=1000+5000*game.Players.LocalPlayer.leaderstats.Rebirths.Value/2 StatsDisplay:SetDesc("Rebirth Required:"..fi.."\nCurrent Pet:"..tostring(game.Players.LocalPlayer.equippedPets.pet1.Value))end)end end)_G.autoqie1=false function autoqie1()while _G.autoqie1 do wait(0.3)for _,v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do for _,h in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do if game.Players.LocalPlayer.leaderstats.Strength.Value>=fi then if v.Name=="Tribal Overlord"and h.Name=="Swift Samurai"then game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("unequipPet",h)game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet",v)end end end end end end MainTab:Toggle({Title="Auto Switch 1",Value=true,Callback=function(state)_G.autoqie1=state autoqie1()end})_G.autoqie2=false function autoqie2()while _G.autoqie2 do wait(0.3)for _,v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do for _,h in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do if game.Players.LocalPlayer.leaderstats.Strength.Value<fi then if v.Name=="Tribal Overlord"and h.Name=="Swift Samurai"then game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("unequipPet",v)game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet",h)end end end end end end MainTab:Toggle({Title="Auto Switch 2",Value=true,Callback=function(state)_G.autoqie2=state autoqie2()end})_G.autopetreb=false function autopetreb()while _G.autopetreb do wait()if tostring(game.Players.LocalPlayer.equippedPets.pet1.Value)=="Tribal Overlord"then game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")end end end MainTab:Toggle({Title="Auto Rebirth",Value=true,Callback=function(state)_G.autopetreb=state autopetreb()end})_G.farmreb=false function farmreb()while _G.farmreb do wait()if tostring(game.Players.LocalPlayer.equippedPets.pet1.Value)=="Swift Samurai"then for _=1,10 do game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")end end end end MainTab:Toggle({Title="Auto Train",Desc="",Value=true,Callback=function(state)_G.farmreb=state farmreb()end})_G.auto_zhuanp=true function auto_zhuanp()while _G.auto_zhuanp do wait()local args={[1]="openFortuneWheel",[2]=game:GetService("ReplicatedStorage").fortuneWheelChances:FindFirstChild("Fortune Wheel")}game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer(unpack(args))end end MainTab:Toggle({Title="Auto Wheel",Value=true,Callback=function(state)_G.auto_zhuanp=state auto_zhuanp()end})function extremeFPS()local l,p,lp=game:GetService("Lighting"),game:GetService("Players"),game:GetService("Players").LocalPlayer settings().Rendering.QualityLevel,settings().Physics.PhysicsEnvironmentalThrottle=0,3 l.Brightness,l.Ambient,l.OutdoorAmbient,l.GlobalShadows=0.1,Color3.new(0,0,0),Color3.new(0,0,0),false for _,v in pairs(l:GetChildren())do pcall(function()v:Destroy()end)end for _,v in pairs(workspace:GetDescendants())do if v:IsA("BasePart")then v.Transparency,v.CanCollide,v.CastShadow=1,false,false else pcall(function()v:Destroy()end)end end for _,v in pairs(p:GetPlayers())do if v~=lp and v.Character then pcall(function()v.Character:Destroy()end)end end if lp.PlayerGui then for _,v in pairs(lp.PlayerGui:GetDescendants())do pcall(function()v:Destroy()end)end end if lp.Character then for _,v in pairs(lp.Character:GetDescendants())do if v:IsA("BasePart")then v.Transparency=1 end end end print("Extreme FPS Optimized")end MainTab:Button({Title="Extreme",Callback=function()extremeFPS()end})
