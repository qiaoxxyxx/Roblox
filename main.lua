local a=((function()local a,b=0,1 return function(c)local d=b;if c then a,b=0,1 end;b=a+b;a=d;return a end end)())local c=loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\105\121\111\117\108\105\110\47\105\121\111\117\108\105\110\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\97\116\111"))()local d=true;local e=game:GetService("\80\108\97\121\101\114\115").LocalPlayer;e.Idled:Connect(function()game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)

local function ShowVerificationUI(isSuccess)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WhitelistVerification"
    screenGui.Parent = game.CoreGui
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 500, 0, 350)
    mainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
    mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
    mainFrame.BorderSizePixel = 0
    mainFrame.BackgroundTransparency = 0
    mainFrame.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 20)
    corner.Parent = mainFrame
    
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 45)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 35))
    })
    gradient.Rotation = 45
    gradient.Parent = mainFrame
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = isSuccess and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 80, 80)
    stroke.Thickness = 4
    stroke.Transparency = 0.3
    stroke.Parent = mainFrame
    
    local glow = Instance.new("UIStroke")
    glow.Color = isSuccess and Color3.fromRGB(0, 255, 200) or Color3.fromRGB(255, 100, 100)
    glow.Thickness = 8
    glow.Transparency = 0.8
    glow.Parent = mainFrame
    
    local header = Instance.new("Frame")
    header.Size = UDim2.new(1, 0, 0, 80)
    header.Position = UDim2.new(0, 0, 0, 0)
    header.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
    header.BorderSizePixel = 0
    header.Parent = mainFrame
    
    local headerCorner = Instance.new("UICorner")
    headerCorner.CornerRadius = UDim.new(0, 20)
    headerCorner.Parent = header
    
    local icon = Instance.new("TextLabel")
    icon.Size = UDim2.new(0, 60, 0, 60)
    icon.Position = UDim2.new(0.5, -30, 0, 10)
    icon.BackgroundTransparency = 1
    icon.Text = isSuccess and "🔒" or "🚫"
    icon.TextColor3 = isSuccess and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 80, 80)
    icon.TextScaled = true
    icon.Font = Enum.Font.GothamBold
    icon.Parent = header
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 50)
    title.Position = UDim2.new(0, 0, 0, 70)
    title.BackgroundTransparency = 1
    title.Text = isSuccess and "WHITELIST VERIFIED" or "ACCESS DENIED"
    title.TextColor3 = isSuccess and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 80, 80)
    title.TextScaled = true
    title.Font = Enum.Font.GothamBold
    title.TextStrokeTransparency = 0.8
    title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    title.Parent = mainFrame
    
    local statusFrame = Instance.new("Frame")
    statusFrame.Size = UDim2.new(0.8, 0, 0, 120)
    statusFrame.Position = UDim2.new(0.1, 0, 0.35, 0)
    statusFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    statusFrame.BorderSizePixel = 0
    statusFrame.Parent = mainFrame
    
    local statusCorner = Instance.new("UICorner")
    statusCorner.CornerRadius = UDim.new(0, 15)
    statusCorner.Parent = statusFrame
    
    local statusStroke = Instance.new("UIStroke")
    statusStroke.Color = Color3.fromRGB(80, 80, 120)
    statusStroke.Thickness = 2
    statusStroke.Parent = statusFrame
    
    local userLabel = Instance.new("TextLabel")
    userLabel.Size = UDim2.new(1, 0, 0, 40)
    userLabel.Position = UDim2.new(0, 0, 0, 10)
    userLabel.BackgroundTransparency = 1
    userLabel.Text = "USER: " .. game.Players.LocalPlayer.Name
    userLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
    userLabel.TextScaled = true
    userLabel.Font = Enum.Font.Gotham
    userLabel.Parent = statusFrame
    
    local statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(1, 0, 0, 40)
    statusLabel.Position = UDim2.new(0, 0, 0, 50)
    statusLabel.BackgroundTransparency = 1
    statusLabel.Text = isSuccess and "STATUS: VERIFIED ✅" or "STATUS: UNAUTHORIZED ❌"
    statusLabel.TextColor3 = isSuccess and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 80, 80)
    statusLabel.TextScaled = true
    statusLabel.Font = Enum.Font.GothamBold
    statusLabel.Parent = statusFrame
    
    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(1, 0, 0, 30)
    messageLabel.Position = UDim2.new(0, 0, 0, 90)
    messageLabel.BackgroundTransparency = 1
    messageLabel.Text = isSuccess and "Welcome to Crazy Top" or "Contact Author: 68848516"
    messageLabel.TextColor3 = Color3.fromRGB(180, 180, 220)
    messageLabel.TextScaled = true
    messageLabel.Font = Enum.Font.Gotham
    messageLabel.Parent = statusFrame
    
    local countdownFrame = Instance.new("Frame")
    countdownFrame.Size = UDim2.new(0.6, 0, 0, 50)
    countdownFrame.Position = UDim2.new(0.2, 0, 0.8, 0)
    countdownFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
    countdownFrame.BorderSizePixel = 0
    countdownFrame.Parent = mainFrame
    
    local countdownCorner = Instance.new("UICorner")
    countdownCorner.CornerRadius = UDim.new(0, 25)
    countdownCorner.Parent = countdownFrame
    
    local countdownStroke = Instance.new("UIStroke")
    countdownStroke.Color = isSuccess and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 80, 80)
    countdownStroke.Thickness = 2
    countdownStroke.Parent = countdownFrame
    
    local countdown = Instance.new("TextLabel")
    countdown.Size = UDim2.new(1, 0, 1, 0)
    countdown.Position = UDim2.new(0, 0, 0, 0)
    countdown.BackgroundTransparency = 1
    countdown.Text = "CLOSING IN 3"
    countdown.TextColor3 = Color3.fromRGB(255, 255, 255)
    countdown.TextScaled = true
    countdown.Font = Enum.Font.GothamBold
    countdown.Parent = countdownFrame
    
    spawn(function()
        for i = 3, 1, -1 do
            countdown.Text = "CLOSING IN " .. i
            wait(1)
        end
        screenGui:Destroy()
        if not isSuccess then
            game.Players.LocalPlayer:Kick("\230\130\168\230\152\175\230\156\170\230\142\162\230\129\162\231\154\132\231\148\168\230\136\183\239\188\140\232\175\183\232\129\148\231\179\187\228\189\160\232\128\133\239\188\154\54\56\56\52\56\53\49\54")
        end
    end)
    
    return screenGui
end

local function UltimateValidation()
    local playerName = game.Players.LocalPlayer.Name
    
    local success, isWhitelisted = pcall(function()
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
        return false
    end
end

if not UltimateValidation() then
    return
end

local f={[1]="",[2]="K",[3]="M",[4]="B",[5]="T",[6]="Qa",[7]="Qi"}local function g(h,i)local j=math.floor(math.log(math.max(1,math.abs(h)),1000))local k=f[j+1]or("\101\43"..j)local l=math.floor(h*((10^i)/(1000^j)))/(10^i)return string.format("\37\46"..i.."\102\37\115",l,k)end;local m,n,o,p=0,{},0,0;local q=20;local r=6;local function s()return pcall(function()return e.boostTimersFolder:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")end)end;local function t()if#n==0 then return 0 end;local u=0;for v,w in next,n do u=u+(w or 0)end;return u/#n end;local x=c:CreateWindow({Title="\67\114\97\122\121\32\84\111\112",Icon="\114\98\120\97\115\115\101\116\105\100\58\47\47\49\51\57\55\52\51\50\56\56\54\48\52\53\57\53",Size=UDim2.fromOffset(290,340),Transparent=true,Theme="\68\97\114\107",SideBarWidth=130,HasOutline=d})x:EditOpenButton({Title="\67\114\97\122\121\32\84\111\112",Icon="\105\109\97\103\101\45\117\112\115\99\97\108\101",CornerRadius=UDim.new(0,10),StrokeThickness=3,Color=ColorSequence.new(Color3.fromHex("\70\70\48\70\55\66"),Color3.fromHex("\70\56\57\66\50\57"))})local y=x:Tab({Title="\77\97\105\110",Icon=""})local z=y:Paragraph({Title="\83\116\97\116\115",Desc="\76\111\97\100\105\110\103\46\46\46",Image="\117\115\101\114\115",ImageSize=25})coroutine.wrap(function()while wait(1)do pcall(function()local A=e.leaderstats.Strength.Value;local B=tick()if m>0 then local C=(A-m)/(B-o)if B-p>=q then table.insert(n,C)if#n>r then table.remove(n,1)end;p=B end end;m=A;o=B;local D=t()local E=s()z:SetDesc("\83\116\114\101\110\103\116\104\58\32"..g(A,1).."\10\65\118\103\32\71\97\105\110\58\32"..g(D,1).."\47\115\10\68\97\105\108\121\58\32"..g(D*86400,1).."\10\77\111\110\116\104\108\121\58\32"..g(D*2592000,1).."\10\83\97\109\112\108\101\115\58\32"..#n.."\47"..r.."\10"..(E and"\226\156\85\32\80\114\111\116\101\105\110\32\69\103\103\32\120\50"or"\226\157\140\32\78\111\32\66\111\111\115\116"))end)end end)()_G.F=false;local function G()while _G.F do wait()pcall(function()if tostring(e.equippedPets.pet1.Value)=="\83\119\105\102\116\32\83\97\109\117\114\97\105"then for H=0,19 do e.muscleEvent:FireServer("\114\101\112")end end end)end end;y:Toggle({Title="\65\117\116\111\32\84\114\97\105\110",Desc="\65\117\116\111\32\115\116\114\101\110\103\116\104\32\116\114\97\105\110\105\110\103",Value=false,Callback=function(I)_G.F=I;G()end})_G.J=false;local function K()while _G.J do wait(0.2)pcall(function()if not e.boostTimersFolder:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")then local L=e.Backpack:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")if L then e.Character.Humanoid:EquipTool(L)wait(0.1)if e.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")then e.muscleEvent:FireServer("\112\114\111\116\101\105\110\69\103\103",e.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103"))wait(0.1)e.Character.Humanoid:UnequipTools()end end end end)end end;y:Toggle({Title="\65\117\116\111\32\69\103\103",Desc="\65\117\116\111\32\117\115\101\32\80\114\111\116\101\105\110\32\69\103\103",Value=false,Callback=function(M)_G.J=M;K()end})local function Z()local _=game:GetService("\67\111\114\101\71\117\105")local a0=game:GetService("\80\108\97\121\101\114\115").LocalPlayer:FindFirstChild("\80\108\97\121\101\114\71\117\105")local a1={"\43","\67\111\105\110\115","\67\111\105\110","\83\116\114\101\110\103\116\104","\69\120\112","\69\120\112\101\114\105\101\110\99\101","\76\101\118\101\108","\68\97\109\97\103\101","\72\101\97\108\116\104"}local a2={"\87\105\110\100\85\73","\67\114\97\122\121\32\84\111\112","\82\97\121\102\105\101\108\100"}for a3,a4 in ipairs(_:GetChildren())do if a4:IsA("\83\99\114\101\101\110\71\117\105")then local a5=false for a6,a7 in ipairs(a2)do if a4.Name:find(a7)then a5=true break end end if a5 then continue end local a8=false for a9,aa in ipairs(a4:GetDescendants())do if(aa:IsA("\84\101\120\116\76\97\98\101\108")or aa:IsA("\84\101\120\116\66\117\116\116\111\110"))and aa.Text then local ab=aa.Text for ac,ad in ipairs(a1)do if ab:find(ad)or ab:find("\37\43\37\100\43")then a8=true break end end if a8 then break end end end if a8 then a4:Destroy()end end end if a0 then for a3,a4 in ipairs(a0:GetChildren())do if a4:IsA("\83\99\114\101\101\110\71\117\105")then local a5=false for a6,a7 in ipairs(a2)do if a4.Name:find(a7)then a5=true break end end if a5 then continue end local a8=false for a9,aa in ipairs(a4:GetDescendants())do if(aa:IsA("\84\101\120\116\76\97\98\101\108")or aa:IsA("\84\101\120\116\66\117\116\116\111\110"))and aa.Text then local ab=aa.Text for ac,ad in ipairs(a1)do if ab:find(ad)or ab:find("\37\43\37\100\43")then a8=true break end end if a8 then break end end end if a8 then a4:Destroy()end end end end y:Button({Title="\67\108\101\97\114\32\71\97\105\110\32\85\73",Desc="\82\101\109\111\118\101\32\97\108\108\32\103\97\105\110\32\110\111\116\105\102\105\99\97\116\105\111\110\115",Callback=Z})print("\83\99\114\105\112\116\32\108\111\97\100\101\100\33")
