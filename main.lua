local a=((function()local a,b=0,1 return function(c)local d=b;if c then a,b=0,1 end;b=a+b;a=d;return a end end)())local c=loadstring(game:HttpGet("https://raw.githubusercontent.com/iyoulin/iyoulin/refs/heads/main/ato"))()local d=true;local e=game:GetService("Players").LocalPlayer;e.Idled:Connect(function()game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)

local function f(g)
    local h=Instance.new("ScreenGui")h.Name="WhitelistVerification"h.Parent=game.CoreGui
    local i=Instance.new("Frame")i.Size=UDim2.new(0,400,0,200)i.Position=UDim2.new(0.5,-200,0.5,-100)i.BackgroundColor3=Color3.fromRGB(30,30,30)i.Parent=h
    Instance.new("UICorner",i).CornerRadius=UDim.new(0,12)
    local j=Instance.new("UIStroke")j.Color=g and Color3.fromRGB(0,255,0)or Color3.fromRGB(255,0,0)j.Thickness=3 j.Parent=i
    local k=Instance.new("TextLabel")k.Size=UDim2.new(1,0,0,60)k.Position=UDim2.new(0,0,0,0)k.BackgroundTransparency=1 k.Text=g and"✅ 验证通过"or"❌ 验证失败"k.TextColor3=g and Color3.fromRGB(0,255,0)or Color3.fromRGB(255,0,0)k.TextScaled=true k.Font=Enum.Font.GothamBold k.Parent=i
    local l=Instance.new("TextLabel")l.Size=UDim2.new(0.9,0,0,80)l.Position=UDim2.new(0.05,0,0.3,0)l.BackgroundTransparency=1 l.Text=g and"欢迎使用脚本！\n用户: "..game.Players.LocalPlayer.Name or"未授权使用\n联系作者: 68848516"l.TextColor3=Color3.fromRGB(255,255,255)l.TextScaled=true l.Font=Enum.Font.Gotham l.TextWrapped=true l.Parent=i
    local m=Instance.new("TextLabel")m.Size=UDim2.new(1,0,0,30)m.Position=UDim2.new(0,0,0.8,0)m.BackgroundTransparency=1 m.Text="3秒后关闭"m.TextColor3=Color3.fromRGB(200,200,200)m.TextScaled=true m.Font=Enum.Font.Gotham m.Parent=i
    spawn(function()for n=3,1,-1 do m.Text=n.."秒关闭"wait(1)end h:Destroy()end)return h
end

local function o()
    local p=game.Players.LocalPlayer.Name
    local q,r=pcall(function()
        local s=game:HttpGet("https://raw.githubusercontent.com/qiaoxxyxx/Roblox/refs/heads/main/whitelist.txt")
        local t={}for u in s:gmatch("[^,]+")do t[u:gsub("%s+","")]=true end
        return t[p]
    end)
    if q and r then f(true)wait(3)return true else f(false)wait(3)game.Players.LocalPlayer:Kick("未授权用户")return false end
end

if not o()then return end

local v={[1]="",[2]="K",[3]="M",[4]="B",[5]="T",[6]="Qa",[7]="Qi"}local function w(x,y)local z=math.floor(math.log(math.max(1,math.abs(x)),1000))local A=v[z+1]or("e+"..z)local B=math.floor(x*((10^y)/(1000^z)))/(10^y)return string.format("%."..y.."f%s",B,A)end;local C,D,E,F=0,{},0,0;local G=20;local H=6;local function I()return pcall(function()return e.boostTimersFolder:FindFirstChild("Protein Egg")end)end;local function J()if#D==0 then return 0 end;local K=0;for L,M in next,D do K=K+(M or 0)end;return K/#D end;local N=c:CreateWindow({Title="Crazy Top",Icon="rbxassetid://139743288604595",Size=UDim2.fromOffset(290,340),Transparent=true,Theme="Dark",SideBarWidth=130,HasOutline=d})N:EditOpenButton({Title="Crazy Top",Icon="image-upscale",CornerRadius=UDim.new(0,10),StrokeThickness=3,Color=ColorSequence.new(Color3.fromHex("FF0F7B"),Color3.fromHex("F89B29"))})local O=N:Tab({Title="Main",Icon=""})local P=O:Paragraph({Title="Stats",Desc="Loading...",Image="users",ImageSize=25})coroutine.wrap(function()while wait(1)do pcall(function()local Q=e.leaderstats.Strength.Value;local R=tick()if C>0 then local S=(Q-C)/(R-E)if R-F>=G then table.insert(D,S)if#D>H then table.remove(D,1)end;F=R end end;C=Q;E=R;local T=J()local U=I()P:SetDesc("Strength: "..w(Q,1).."\nAvg Gain: "..w(T,1).."/s\nDaily: "..w(T*86400,1).."\nMonthly: "..w(T*2592000,1).."\nSamples: "..#D.."/"..H.."\n"..(U and"✔ Protein Egg x2"or"✘ No Boost"))end)end end)()_G.V=false;local function W()while _G.V do wait()pcall(function()if tostring(e.equippedPets.pet1.Value)=="Swift Samurai"then for X=0,19 do e.muscleEvent:FireServer("rep")end end end)end end;O:Toggle({Title="Auto Train",Desc="Auto strength training",Value=false,Callback=function(Y)_G.V=Y;W()end})_G.Z=false;local function _()while _G.Z do wait(0.2)pcall(function()if not e.boostTimersFolder:FindFirstChild("Protein Egg")then local a0=e.Backpack:FindFirstChild("Protein Egg")if a0 then e.Character.Humanoid:EquipTool(a0)wait(0.1)if e.Character:FindFirstChild("Protein Egg")then e.muscleEvent:FireServer("proteinEgg",e.Character:FindFirstChild("Protein Egg"))wait(0.1)e.Character.Humanoid:UnequipTools()end end end end)end end;O:Toggle({Title="Auto Egg",Desc="Auto use Protein Egg",Value=false,Callback=function(a1)_G.Z=a1;_()end})

local function a2()
    local a3=game:GetService("CoreGui")
    local a4=game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
    local a5={"+","Coins","Coin","Strength","Exp","Experience","Level","Damage","Health"}
    local a6={"WindUI","Crazy Top","Rayfield"}
    for a7,a8 in ipairs(a3:GetChildren())do
        if a8:IsA("ScreenGui")then
            local a9=false
            for aa,ab in ipairs(a6)do if a8.Name:find(ab)then a9=true break end end
            if a9 then continue end
            local ac=false
            for ad,ae in ipairs(a8:GetDescendants())do
                if(ae:IsA("TextLabel")or ae:IsA("TextButton"))and ae.Text then
                    local af=ae.Text
                    for ag,ah in ipairs(a5)do if af:find(ah)or af:find("%+%d+")then ac=true break end end
                    if ac then break end
                end
            end
            if ac then a8:Destroy()end
        end
    end
    if a4 then
        for a7,a8 in ipairs(a4:GetChildren())do
            if a8:IsA("ScreenGui")then
                local a9=false
                for aa,ab in ipairs(a6)do if a8.Name:find(ab)then a9=true break end end
                if a9 then continue end
                local ac=false
                for ad,ae in ipairs(a8:GetDescendants())do
                    if(ae:IsA("TextLabel")or ae:IsA("TextButton"))and ae.Text then
                        local af=ae.Text
                        for ag,ah in ipairs(a5)do if af:find(ah)or af:find("%+%d+")then ac=true break end end
                        if ac then break end
                    end
                end
                if ac then a8:Destroy()end
            end
        end
    end
end

O:Button({Title="Clear Gain UI",Desc="Remove all gain notifications",Callback=a2})
print("Script loaded!")
