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

local a=((function()local a,b=0,1 return function(c)local d=b;if c then a,b=0,1 end;b=a+b;a=d;return a end end)())
local c=loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\105\121\111\117\108\105\110\47\105\121\111\117\108\105\110\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\97\116\111"))()
local d=true
local e=game:GetService("\80\108\97\121\101\114\115").LocalPlayer
e.Idled:Connect(function()
    game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local function f(g)
end

local function o()
    local p = game.Players.LocalPlayer.Name
    local q, r = pcall(function()
        local s = game:HttpGet("https://raw.githubusercontent.com/qiaoxxyxx/Roblox/refs/heads/main/whitelist1.txt")
        local t = {}
        for u in s:gmatch("[^,]+") do
            t[u:gsub("%s+", "")] = true
        end
        return t[p]
    end)
    
    if q and r then 
        f(true)
        wait(3)
        return true 
    else 
        f(false)
        wait(3)
        game.Players.LocalPlayer:Kick("allow")
        return false 
    end
end

if not o() then 
    return 
end

WindUI=loadstring(game:HttpGet("https://raw.githubusercontent.com/iyoulin/iyoulin/refs/heads/main/ato"))()local Start=tick()local vu=game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:Connect(function()vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)local Window=WindUI:CreateWindow({Title="Kolixi",Icon="rbxassetid://139743288604595",Author="Ysia",Folder="",Size=UDim2.fromOffset(290,340),Transparent=true,Theme="Dark",SideBarWidth=130,HasOutline=true})Window:EditOpenButton({Title="Cr4zy",Icon="image-upscale",CornerRadius=UDim.new(0,10),StrokeThickness=3,Color=ColorSequence.new(Color3.fromHex("FF0F7B"),Color3.fromHex("F89B29"))})local MainTab=Window:Tab({Title="Main",Icon=""})local fi=0 local StatsDisplay=MainTab:Paragraph({Title="Stats:",Desc="",Image="users",ImageSize=25})spawn(function()while wait()do pcall(function()fi=1000+5000*game.Players.LocalPlayer.leaderstats.Rebirths.Value/2 StatsDisplay:SetDesc("Rebirth Required:"..fi.."\nCurrent Pet:"..tostring(game.Players.LocalPlayer.equippedPets.pet1.Value))end)end end)_G.autoqie1=false function autoqie1()while _G.autoqie1 do wait(0.3)for _,v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do for _,h in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do if game.Players.LocalPlayer.leaderstats.Strength.Value>=fi then if v.Name=="Tribal Overlord"and h.Name=="Swift Samurai"then game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("unequipPet",h)game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet",v)end end end end end end MainTab:Toggle({Title="Auto Switch 1",Value=true,Callback=function(state)_G.autoqie1=state autoqie1()end})_G.autoqie2=false function autoqie2()while _G.autoqie2 do wait(0.3)for _,v in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do for _,h in pairs(game.Players.LocalPlayer.petsFolder.Unique:GetChildren())do if game.Players.LocalPlayer.leaderstats.Strength.Value<fi then if v.Name=="Tribal Overlord"and h.Name=="Swift Samurai"then game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("unequipPet",v)game:GetService("ReplicatedStorage").rEvents.equipPetEvent:FireServer("equipPet",h)end end end end end end MainTab:Toggle({Title="Auto Switch 2",Value=true,Callback=function(state)_G.autoqie2=state autoqie2()end})_G.autopetreb=false function autopetreb()while _G.autopetreb do wait()if tostring(game.Players.LocalPlayer.equippedPets.pet1.Value)=="Tribal Overlord"then game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")end end end MainTab:Toggle({Title="Auto Rebirth",Value=true,Callback=function(state)_G.autopetreb=state autopetreb()end})_G.farmreb=false function farmreb()while _G.farmreb do wait()if tostring(game.Players.LocalPlayer.equippedPets.pet1.Value)=="Swift Samurai"then for _=1,10 do game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")end end end end MainTab:Toggle({Title="Auto Train",Desc="",Value=true,Callback=function(state)_G.farmreb=state farmreb()end})_G.auto_zhuanp=true function auto_zhuanp()while _G.auto_zhuanp do wait()local args={[1]="openFortuneWheel",[2]=game:GetService("ReplicatedStorage").fortuneWheelChances:FindFirstChild("Fortune Wheel")}game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer(unpack(args))end end MainTab:Toggle({Title="Auto Wheel",Value=true,Callback=function(state)_G.auto_zhuanp=state auto_zhuanp()end})function extremeFPS()local l,p,lp=game:GetService("Lighting"),game:GetService("Players"),game:GetService("Players").LocalPlayer settings().Rendering.QualityLevel,settings().Physics.PhysicsEnvironmentalThrottle=0,3 l.Brightness,l.Ambient,l.OutdoorAmbient,l.GlobalShadows=0.1,Color3.new(0,0,0),Color3.new(0,0,0),false for _,v in pairs(l:GetChildren())do pcall(function()v:Destroy()end)end for _,v in pairs(workspace:GetDescendants())do if v:IsA("BasePart")then v.Transparency,v.CanCollide,v.CastShadow=1,false,false else pcall(function()v:Destroy()end)end end for _,v in pairs(p:GetPlayers())do if v~=lp and v.Character then pcall(function()v.Character:Destroy()end)end end if lp.PlayerGui then for _,v in pairs(lp.PlayerGui:GetDescendants())do pcall(function()v:Destroy()end)end end if lp.Character then for _,v in pairs(lp.Character:GetDescendants())do if v:IsA("BasePart")then v.Transparency=1 end end end print("Extreme FPS Optimized")end MainTab:Button({Title="Extreme",Callback=function()extremeFPS()end})
