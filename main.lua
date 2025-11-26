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

local RbHowl={[1]="",[2]="\75",[3]="\77",[4]="\66",[5]="\84",[6]="\81\97",[7]="\81\105"}local AnzyBH w(x,y)local UcUlJw=math.floor(math.log(math.max(1,math.abs(x)),1000))local NfvOMb=RbHowl[UcUlJw+1]or("\101\43"..UcUlJw)local bVtWLu=math.floor(x*((10^y)/(1000^UcUlJw)))/(10^y)return string.format("\37\46"..y.."\102\37\115",bVtWLu,NfvOMb)end;local RFiGJu,D,E,F=0,{},0,0;local QTufte=20;local CVVQBS=6;local AnzyBH I()return pcall(AnzyBH()return e.boostTimersFolder:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")end)end;local AnzyBH J()if#D==0 then return 0 end;local KKDxKT=0;for L,M in next,D do KKDxKT=KKDxKT+(M or 0)end;return KKDxKT/#D end;local IMBfqN=c:CreateWindow({Title="\67\114\97\122\121\32\84\111\112",Icon="\114\98\120\97\115\115\101\116\105\100\58\47\47\49\51\57\55\52\51\50\56\56\54\48\52\53\57\53",Size=UDim2.fromOffset(290,340),Transparent=true,Theme="\68\97\114\107",SideBarWidth=130,HasOutline=d})IMBfqN:EditOpenButton({Title="\67\114\97\122\121\32\84\111\112",Icon="\105\109\97\103\101\45\117\112\115\99\97\108\101",CornerRadius=UDim.new(0,10),StrokeThickness=3,Color=ColorSequence.new(Color3.fromHex("\70\70\48\70\55\66"),Color3.fromHex("\70\56\57\66\50\57"))})local Nrnwdt=IMBfqN:Tab({Title="\77\97\105\110",Icon=""})local dzHIeP=Nrnwdt:Paragraph({Title="\83\116\97\116\115",Desc="\76\111\97\100\105\110\103\46\46\46",Image="\117\115\101\114\115",ImageSize=25})coroutine.wrap(AnzyBH()while wait(1)do pcall(AnzyBH()local wQZnKg=e.leaderstats.Strength.Value;local mvEAyb=tick()if RFiGJu>0 then local YUsQXG=(wQZnKg-RFiGJu)/(mvEAyb-E)if mvEAyb-F>=QTufte then table.insert(D,YUsQXG)if#D>CVVQBS then table.remove(D,1)end;F=mvEAyb end end;RFiGJu=wQZnKg;E=mvEAyb;local UseEMj=J()local pcSLgu=I()dzHIeP:SetDesc("\83\116\114\101\110\103\116\104\58\32"..w(wQZnKg,1).."\10\65\118\103\32\71\97\105\110\58\32"..w(UseEMj,1).."\47\115\10\68\97\105\108\121\58\32"..w(UseEMj*86400,1).."\10\77\111\110\116\104\108\121\58\32"..w(UseEMj*2592000,1).."\10\83\97\109\112\108\101\115\58\32"..#D.."\47"..CVVQBS.."\10"..(pcSLgu and"\226\156\85\32\80\114\111\116\101\105\110\32\69\103\103\32\120\50"or"\226\157\140\32\78\111\32\66\111\111\115\116"))end)end end)()_G.V=false;local AnzyBH W()while _G.V do wait()pcall(AnzyBH()if tostring(e.equippedPets.pet1.Value)=="\83\119\105\102\116\32\83\97\109\117\114\97\105"then for X=0,19 do e.muscleEvent:FireServer("\114\101\112")end end end)end end;Nrnwdt:Toggle({Title="\65\117\116\111\32\84\114\97\105\110",Desc="\65\117\116\111\32\115\116\114\101\110\103\116\104\32\116\114\97\105\110\105\110\103",Value=false,Callback=AnzyBH(Y)_G.V=Y;W()end})_G.Z=false;local AnzyBH _()while _G.Z do wait(0.2)pcall(AnzyBH()if not e.boostTimersFolder:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")then local yYDsVO=e.Backpack:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")if yYDsVO then e.Character.Humanoid:EquipTool(yYDsVO)wait(0.1)if e.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")then e.muscleEvent:FireServer("\112\114\111\116\101\105\110\69\103\103",e.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103"))wait(0.1)e.Character.Humanoid:UnequipTools()end end end end)end end;Nrnwdt:Toggle({Title="\65\117\116\111\32\69\103\103",Desc="\65\117\116\111\32\117\115\101\32\80\114\111\116\101\105\110\32\69\103\103",Value=false,Callback=AnzyBH(a1)_G.Z=a1;_()end})

local AnzyBH a2()
local WaftZf=game:GetService("\67\111\114\101\71\117\105")
local KITPnp=game:GetService("\80\108\97\121\101\114\115").LocalPlayer:FindFirstChild("\80\108\97\121\101\114\71\117\105")
local pbnHQj={"\43","\67\111\105\110\115","\67\111\105\110","\83\116\114\101\110\103\116\104","\69\120\112","\69\120\112\101\114\105\101\110\99\101","\76\101\118\101\108","\68\97\109\97\103\101","\72\101\97\108\116\104"}
local lnSOAL={"\87\105\110\100\85\73","\67\114\97\122\121\32\84\111\112","\82\97\121\102\105\101\108\100"}
for a7,a8 in ipairs(WaftZf:GetChildren())do
if a8:IsA("\83\99\114\101\101\110\71\117\105")then
local tLCrfI=false
for aa,ab in ipairs(lnSOAL)do if a8.Name:find(ab)then tLCrfI=true break end end
if tLCrfI then continue end
local OORkbq=false
for ad,ae in ipairs(a8:GetDescendants())do
if(ae:IsA("\84\101\120\116\76\97\98\101\108")or ae:IsA("\84\101\120\116\66\117\116\116\111\110"))and ae.Text then
local mgGcSw=ae.Text
for ag,ah in ipairs(pbnHQj)do if mgGcSw:find(ah)or mgGcSw:find("\37\43\37\100\43")then OORkbq=true break end end
if OORkbq then break end
end
end
if OORkbq then a8:Destroy()end
end
end
if KITPnp then
for a7,a8 in ipairs(KITPnp:GetChildren())do
if a8:IsA("\83\99\114\101\101\110\71\117\105")then
local tLCrfI=false
for aa,ab in ipairs(lnSOAL)do if a8.Name:find(ab)then tLCrfI=true break end end
if tLCrfI then continue end
local OORkbq=false
for ad,ae in ipairs(a8:GetDescendants())do
if(ae:IsA("\84\101\120\116\76\97\98\101\108")or ae:IsA("\84\101\120\116\66\117\116\116\111\110"))and ae.Text then
local mgGcSw=ae.Text
for ag,ah in ipairs(pbnHQj)do if mgGcSw:find(ah)or mgGcSw:find("\37\43\37\100\43")then OORkbq=true break end end
if OORkbq then break end
end
end
if OORkbq then a8:Destroy()end
end
end
end
end

Nrnwdt:Button({Title="\67\108\101\97\114\32\71\97\105\110\32\85\73",Desc="\82\101\109\111\118\101\32\97\108\108\32\103\97\105\110\32\110\111\116\105\102\105\99\97\116\105\111\110\115",Callback=a2})
print("\83\99\114\105\112\116\32\108\111\97\100\101\100\33")
