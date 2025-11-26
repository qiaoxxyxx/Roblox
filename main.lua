local a=((function()local a,b=0,1 return function(c)local d=b;if c then a,b=0,1 end;b=a+b;a=d;return a end end)())local c=loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\105\121\111\117\108\105\110\47\105\121\111\117\108\105\110\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\97\116\111"))()local d=true;local e=game:GetService("\80\108\97\121\101\114\115").LocalPlayer;e.Idled:Connect(function()game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)game:GetService("\86\105\114\116\117\97\108\85\115\101\114"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)

local function f(g)
    local h=Instance.new("\83\99\114\101\101\110\71\117\105")h.Name="\87\104\105\116\101\108\105\115\116\86\101\114\105\102\105\99\97\116\105\111\110"h.Parent=game.CoreGui
    local i=Instance.new("\70\114\97\109\101")i.Size=UDim2.new(0,400,0,200)i.Position=UDim2.new(0.5,-200,0.5,-100)i.BackgroundColor3=Color3.fromRGB(30,30,30)i.Parent=h
    Instance.new("\85\73\67\111\114\110\101\114",i).CornerRadius=UDim.new(0,12)
    local j=Instance.new("\85\73\83\116\114\111\107\101")j.Color=g and Color3.fromRGB(0,255,0)or Color3.fromRGB(255,0,0)j.Thickness=3 j.Parent=i
    local k=Instance.new("\84\101\120\116\76\97\98\101\108")k.Size=UDim2.new(1,0,0,60)k.Position=UDim2.new(0,0,0,0)k.BackgroundTransparency=1 k.Text=g and"\239\188\137\239\188\137 \233\129\148\232\175\173\233\128\154\232\191\135"or"\239\188\140\239\188\137 \233\129\148\232\175\173\229\164\177\232\180\165"k.TextColor3=g and Color3.fromRGB(0,255,0)or Color3.fromRGB(255,0,0)k.TextScaled=true k.Font=Enum.Font.GothamBold k.Parent=i
    local l=Instance.new("\84\101\120\116\76\97\98\101\108")l.Size=UDim2.new(0.9,0,0,80)l.Position=UDim2.new(0.05,0,0.3,0)l.BackgroundTransparency=1 l.Text=g and"\230\141\174\232\191\189\228\189\191\231\148\168\232\132\154\230\156\172\239\188\129\10\231\148\168\230\136\183: "..game.Players.LocalPlayer.Name or"\230\156\170\230\142\162\230\129\162\228\189\191\231\148\168\10\232\129\148\231\179\187\228\189\160\232\128\133: 68848516"l.TextColor3=Color3.fromRGB(255,255,255)l.TextScaled=true l.Font=Enum.Font.Gotham l.TextWrapped=true l.Parent=i
    local m=Instance.new("\84\101\120\116\76\97\98\101\108")m.Size=UDim2.new(1,0,0,30)m.Position=UDim2.new(0,0,0.8,0)m.BackgroundTransparency=1 m.Text="\51\231\167\146\229\144\142\229\133\179\233\151\173"m.TextColor3=Color3.fromRGB(200,200,200)m.TextScaled=true m.Font=Enum.Font.Gotham m.Parent=i
    spawn(function()for n=3,1,-1 do m.Text=n.."\231\167\146\229\133\179\233\151\173"wait(1)end h:Destroy()end)return h
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

local v={[1]=DxVwS("\135" .. "\084" .. "\054" .. "\172"),[2]=DxVwS("\107" .. "\158" .. "\075" .. "\131"),[3]=DxVwS("\116" .. "\077" .. "\187"),[4]=DxVwS("\066" .. "\123"),[5]=DxVwS("\125" .. "\084" .. "\192"),[6]=DxVwS("\167" .. "\081" .. "\143" .. "\097"),[7]=DxVwS("\081" .. "\172" .. "\105" .. "\136")}local function w(x,y)local z=math.floor(math.log(math.max(1,math.abs(x)),1000))local A=v[z+1]or(DxVwS("\101" .. "\043")..z)local B=math.floor(x*((10^y)/(1000^z)))/(10^y)return string.format(DxVwS("\037" .. "\046")..y..DxVwS("\102" .. "\037" .. "\115"),B,A)end;local C,D,E,F=0,{},0,0;local G=20;local H=6;local function I()return pcall(function()return e.boostTimersFolder:FindFirstChild(DxVwS("\080" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\032" .. "\069" .. "\103" .. "\103"))end)end;local function J()if#D==0 then return 0 end;local K=0;for L,M in next,D do K=K+(M or 0)end;return K/#D end;local N=c:CreateWindow({Title=DxVwS("\067" .. "\114" .. "\097" .. "\122" .. "\121" .. "\032" .. "\084" .. "\111" .. "\112"),Icon=DxVwS("\114" .. "\098" .. "\120" .. "\097" .. "\115" .. "\115" .. "\101" .. "\116" .. "\105" .. "\100" .. "\058" .. "\047" .. "\047" .. "\049" .. "\051" .. "\057" .. "\055" .. "\052" .. "\051" .. "\050" .. "\056" .. "\056" .. "\054" .. "\048" .. "\052" .. "\053" .. "\057" .. "\053"),Size=UDim2.fromOffset(290,340),Transparent=true,Theme=DxVwS("\068" .. "\097" .. "\114" .. "\107"),SideBarWidth=130,HasOutline=d})N:EditOpenButton({Title=DxVwS("\067" .. "\114" .. "\097" .. "\122" .. "\121" .. "\032" .. "\084" .. "\111" .. "\112"),Icon=DxVwS("\105" .. "\109" .. "\097" .. "\103" .. "\101" .. "\045" .. "\117" .. "\112" .. "\115" .. "\099" .. "\097" .. "\108" .. "\101"),CornerRadius=UDim.new(0,10),StrokeThickness=3,Color=ColorSequence.new(Color3.fromHex(DxVwS("\070" .. "\070" .. "\048" .. "\070" .. "\055" .. "\066")),Color3.fromHex(DxVwS("\070" .. "\056" .. "\057" .. "\066" .. "\050" .. "\057")))})local O=N:Tab({Title=DxVwS("\077" .. "\097" .. "\105" .. "\110"),Icon=DxVwS("\168" .. "\124" .. "\099" .. "\183")})local P=O:Paragraph({Title=DxVwS("\083" .. "\116" .. "\097" .. "\116" .. "\115"),Desc=DxVwS("\076" .. "\111" .. "\097" .. "\100" .. "\105" .. "\110" .. "\103" .. "\046" .. "\046" .. "\046"),Image=DxVwS("\117" .. "\115" .. "\101" .. "\114" .. "\115"),ImageSize=25})coroutine.wrap(function()while wait(1)do pcall(function()local Q=e.leaderstats.Strength.Value;local R=tick()if C>0 then local S=(Q-C)/(R-E)if R-F>=G then table.insert(D,S)if#D>H then table.remove(D,1)end;F=R end end;C=Q;E=R;local T=J()local U=I()P:SetDesc(DxVwS("\083" .. "\116" .. "\114" .. "\101" .. "\110" .. "\103" .. "\116" .. "\104" .. "\058" .. "\032")..w(Q,1)..DxVwS("\010" .. "\065" .. "\118" .. "\103" .. "\032" .. "\071" .. "\097" .. "\105" .. "\110" .. "\058" .. "\032")..w(T,1)..DxVwS("\047" .. "\115" .. "\010" .. "\068" .. "\097" .. "\105" .. "\108" .. "\121" .. "\058" .. "\032")..w(T*86400,1)..DxVwS("\010" .. "\077" .. "\111" .. "\110" .. "\116" .. "\104" .. "\108" .. "\121" .. "\058" .. "\032")..w(T*2592000,1)..DxVwS("\010" .. "\083" .. "\097" .. "\109" .. "\112" .. "\108" .. "\101" .. "\115" .. "\058" .. "\032")..#D..DxVwS("\047")..H..DxVwS("\010")..(U and DxVwS("\226" .. "\156" .. "\085" .. "\032" .. "\080" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\032" .. "\069" .. "\103" .. "\103" .. "\032" .. "\120" .. "\050")or DxVwS("\226" .. "\157" .. "\140" .. "\032" .. "\078" .. "\111" .. "\032" .. "\066" .. "\111" .. "\111" .. "\115" .. "\116")))end)end end)()_G.V=false;local function W()while _G.V do wait()pcall(function()if tostring(e.equippedPets.pet1.Value)==DxVwS("\083" .. "\099" .. "\114" .. "\105" .. "\112" .. "\116" .. "\032" .. "\108" .. "\111" .. "\097" .. "\100" .. "\101" .. "\100" .. "\033")then for X=0,19 do e.muscleEvent:FireServer(DxVwS("\114" .. "\101" .. "\112"))end end end)end end;O:Toggle({Title=DxVwS("\065" .. "\117" .. "\116" .. "\111" .. "\032" .. "\084" .. "\114" .. "\097" .. "\105" .. "\110"),Desc=DxVwS("\065" .. "\117" .. "\116" .. "\111" .. "\032" .. "\115" .. "\116" .. "\114" .. "\101" .. "\110" .. "\103" .. "\116" .. "\104" .. "\032" .. "\116" .. "\114" .. "\097" .. "\105" .. "\110" .. "\105" .. "\110" .. "\103"),Value=false,Callback=function(Y)_G.V=Y;W()end})_G.Z=false;local function _()while _G.Z do wait(0.2)pcall(function()if not e.boostTimersFolder:FindFirstChild(DxVwS("\080" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\032" .. "\069" .. "\103" .. "\103"))then local a0=e.Backpack:FindFirstChild(DxVwS("\080" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\032" .. "\069" .. "\103" .. "\103"))if a0 then e.Character.Humanoid:EquipTool(a0)wait(0.1)if e.Character:FindFirstChild(DxVwS("\080" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\032" .. "\069" .. "\103" .. "\103"))then e.muscleEvent:FireServer(DxVwS("\112" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\069" .. "\103" .. "\103"),e.Character:FindFirstChild(DxVwS("\080" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\032" .. "\069" .. "\103" .. "\103")))wait(0.1)e.Character.Humanoid:UnequipTools()end end end end)end end;O:Toggle({Title=DxVwS("\065" .. "\117" .. "\116" .. "\111" .. "\032" .. "\069" .. "\103" .. "\103"),Desc=DxVwS("\065" .. "\117" .. "\116" .. "\111" .. "\032" .. "\117" .. "\115" .. "\101" .. "\032" .. "\080" .. "\114" .. "\111" .. "\116" .. "\101" .. "\105" .. "\110" .. "\032" .. "\069" .. "\103" .. "\103"),Value=false,Callback=function(a1)_G.Z=a1;_()end}) 

 local function a2() 
     local a3=game:GetService(DxVwS("\067" .. "\111" .. "\114" .. "\101" .. "\071" .. "\117" .. "\105")) 
     local a4=game:GetService(DxVwS("\080" .. "\108" .. "\097" .. "\121" .. "\101" .. "\114" .. "\115")).LocalPlayer:FindFirstChild(DxVwS("\080" .. "\108" .. "\097" .. "\121" .. "\101" .. "\114" .. "\071" .. "\117" .. "\105")) 
     local a5={DxVwS("\043"),DxVwS("\067" .. "\111" .. "\105" .. "\110" .. "\115"),DxVwS("\067" .. "\111" .. "\105" .. "\110"),DxVwS("\083" .. "\116" .. "\114" .. "\101" .. "\110" .. "\103" .. "\116" .. "\104"),DxVwS("\069" .. "\120" .. "\112"),DxVwS("\069" .. "\120" .. "\112" .. "\101" .. "\114" .. "\105" .. "\101" .. "\110" .. "\099" .. "\101"),DxVwS("\076" .. "\101" .. "\118" .. "\101" .. "\108"),DxVwS("\068" .. "\097" .. "\109" .. "\097" .. "\103" .. "\101"),DxVwS("\072" .. "\101" .. "\097" .. "\108" .. "\116" .. "\104")} 
     local a6={DxVwS("\087" .. "\105" .. "\110" .. "\100" .. "\085" .. "\073"),DxVwS("\067" .. "\114" .. "\097" .. "\122" .. "\121" .. "\032" .. "\084" .. "\111" .. "\112"),DxVwS("\082" .. "\097" .. "\121" .. "\102" .. "\105" .. "\101" .. "\108" .. "\100")} 
     for a7,a8 in ipairs(a3:GetChildren())do 
         if a8:IsA(DxVwS("\083" .. "\099" .. "\114" .. "\101" .. "\101" .. "\110" .. "\071" .. "\117" .. "\105"))then 
             local a9=false 
             for aa,ab in ipairs(a6)do if a8.Name:find(ab)then a9=true break end end 
             if a9 then continue end 
             local ac=false 
             for ad,ae in ipairs(a8:GetDescendants())do 
                 if(ae:IsA(DxVwS("\084" .. "\101" .. "\120" .. "\116" .. "\076" .. "\097" .. "\098" .. "\101" .. "\108"))or ae:IsA(DxVwS("\084" .. "\101" .. "\120" .. "\116" .. "\066" .. "\117" .. "\116" .. "\116" .. "\111" .. "\110")))and ae.Text then 
                     local af=ae.Text 
                     for ag,ah in ipairs(a5)do if af:find(ah)or af:find(DxVwS("\037" .. "\043" .. "\037" .. "\100" .. "\043"))then ac=true break end end 
                     if ac then break end 
                 end 
             end 
             if ac then a8:Destroy()end 
         end 
     end 
     if a4 then 
         for a7,a8 in ipairs(a4:GetChildren())do 
             if a8:IsA(DxVwS("\083" .. "\099" .. "\114" .. "\101" .. "\101" .. "\110" .. "\071" .. "\117" .. "\105"))then 
                 local a9=false 
                 for aa,ab in ipairs(a6)do if a8.Name:find(ab)then a9=true break end end 
                 if a9 then continue end 
                 local ac=false 
                 for ad,ae in ipairs(a8:GetDescendants())do 
                     if(ae:IsA(DxVwS("\084" .. "\101" .. "\120" .. "\116" .. "\076" .. "\097" .. "\098" .. "\101" .. "\108"))or ae:IsA(DxVwS("\084" .. "\101" .. "\120" .. "\116" .. "\066" .. "\117" .. "\116" .. "\116" .. "\111" .. "\110")))and ae.Text then 
                         local af=ae.Text 
                         for ag,ah in ipairs(a5)do if af:find(ah)or af:find(DxVwS("\037" .. "\043" .. "\037" .. "\100" .. "\043"))then ac=true break end end 
                         if ac then break end 
                     end 
                 end 
                 if ac then a8:Destroy()end 
             end 
         end 
     end 
 end 

 O:Button({Title=DxVwS("\067" .. "\108" .. "\101" .. "\097" .. "\114" .. "\032" .. "\071" .. "\097" .. "\105" .. "\110" .. "\032" .. "\085" .. "\073"),Desc=DxVwS("\082" .. "\101" .. "\109" .. "\111" .. "\118" .. "\101" .. "\032" .. "\097" .. "\108" .. "\108" .. "\032" .. "\103" .. "\097" .. "\105" .. "\110" .. "\032" .. "\110" .. "\111" .. "\116" .. "\105" .. "\102" .. "\105" .. "\099" .. "\097" .. "\116" .. "\105" .. "\111" .. "\110" .. "\115"),Callback=a2}) 
 print(DxVwS("\083" .. "\099" .. "\114" .. "\105" .. "\112" .. "\116" .. "\032" .. "\108" .. "\111" .. "\097" .. "\100" .. "\101" .. "\100" .. "\033"))
