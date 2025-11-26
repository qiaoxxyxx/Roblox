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

local _0x46312A={[0x1]="\32",[0x2]="\75",[0x3]="\77",[0x4]="\66",[0x5]="\84",[0x6]="\81\97",[0x7]="\81\105"}local function _0x7B8C9D(_0x3A4B5C,_0x6D7E8F)local _0x1F2A3B=math["\102\108\111\111\114"](math["\108\111\103"](math["\109\97\120"](0x1,math["\97\98\115"](_0x3A4B5C)),0x3E8))local _0x4C5D6E=_0x46312A[_0x1F2A3B+0x1]or("\101\43".._0x1F2A3B)local _0x8E9F0A=math["\102\108\111\111\114"](_0x3A4B5C*((0xA^_0x6D7E8F)/(0x3E8^_0x1F2A3B)))/(0xA^_0x6D7E8F)return string["\102\111\114\109\97\116"]("\37\46".._0x6D7E8F.."\102\37\115",_0x8E9F0A,_0x4C5D6E)end;local _0x123456,_0x789ABC,_0xDEF012,_0x345678=0x0,{},0x0,0x0;local _0x9ABCDE=0x14;local _0xEF0123=0x6;local function _0xF1A2B3()return pcall(function()return e["\98\111\111\115\116\84\105\109\101\114\115\70\111\108\100\101\114"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")end)end;local function _0xC4D5E6()if#_0x789ABC==0x0 then return 0x0 end;local _0x7E8F9A=0x0;for _0xA1B2C3,_0xD4E5F6 in next,_0x789ABC do _0x7E8F9A=_0x7E8F9A+(_0xD4E5F6 or 0x0)end;return _0x7E8F9A/#_0x789ABC end;local _0xG7H8I9=c:CreateWindow({Title="\67\114\97\122\121\32\84\111\112",Icon="\114\98\120\97\115\115\101\116\105\100\58\47\47\49\51\57\55\52\51\50\56\56\54\48\52\53\57\53",Size=UDim2.fromOffset(0x122,0x154),Transparent=0x1==0x1,Theme="\68\97\114\107",SideBarWidth=0x82,HasOutline=d})_0xG7H8I9:EditOpenButton({Title="\67\114\97\122\121\32\84\111\112",Icon="\105\109\97\103\101\45\117\112\115\99\97\108\101",CornerRadius=UDim.new(0x0,0xA),StrokeThickness=0x3,Color=ColorSequence.new(Color3.fromHex("\70\70\48\70\55\66"),Color3.fromHex("\70\56\57\66\50\57"))})local _0xJ1K2L3=_0xG7H8I9:Tab({Title="\77\97\105\110",Icon="\32"})local _0xM4N5O6=_0xJ1K2L3:Paragraph({Title="\83\116\97\116\115",Desc="\76\111\97\100\105\110\103\46\46\46",Image="\117\115\101\114\115",ImageSize=0x19})coroutine.wrap(function()while wait(0x1)do pcall(function()local _0xP7Q8R9=e["\108\101\97\100\101\114\115\116\97\116\115"]["\83\116\114\101\110\103\116\104"].Value;local _0xS0T1U2=tick()if _0x123456>0x0 then local _0xV3W4X5=(_0xP7Q8R9-_0x123456)/(_0xS0T1U2-_0xDEF012)if _0xS0T1U2-_0x345678>=_0x9ABCDE then table.insert(_0x789ABC,_0xV3W4X5)if#_0x789ABC>_0xEF0123 then table.remove(_0x789ABC,0x1)end;_0x345678=_0xS0T1U2 end end;_0x123456=_0xP7Q8R9;_0xDEF012=_0xS0T1U2;local _0xY6Z7A8=_0xC4D5E6()local _0xB9C0D1=_0xF1A2B3()_0xM4N5O6:SetDesc("\83\116\114\101\110\103\116\104\58\32".._0x7B8C9D(_0xP7Q8R9,0x1).."\10\65\118\103\32\71\97\105\110\58\32".._0x7B8C9D(_0xY6Z7A8,0x1).."\47\115\10\68\97\105\108\121\58\32".._0x7B8C9D(_0xY6Z7A8*0x15180,0x1).."\10\77\111\110\116\104\108\121\58\32".._0x7B8C9D(_0xY6Z7A8*0x278D00,0x1).."\10\83\97\109\112\108\101\115\58\32"..#_0x789ABC.."\47".._0xEF0123.."\10"..(_0xB9C0D1 and"\226\156\85\32\80\114\111\116\101\105\110\32\69\103\103\32\120\50"or"\226\157\140\32\78\111\32\66\111\111\115\116"))end)end end)()_G.V=0x1==0x2;local function _0xE2F3G4()while _G.V do wait()pcall(function()if tostring(e["\101\113\117\105\112\112\101\100\80\101\116\115"]["\112\101\116\49"].Value)=="\83\119\105\102\116\32\83\97\109\117\114\97\105"then for _0xH5I6J7=0x0,0x13 do e["\109\117\115\99\108\101\69\118\101\110\116"]:FireServer("\114\101\112")end end end)end end;_0xJ1K2L3:Toggle({Title="\65\117\116\111\32\84\114\97\105\110",Desc="\65\117\116\111\32\115\116\114\101\110\103\116\104\32\116\114\97\105\110\105\110\103",Value=0x1==0x2,Callback=function(_0xK8L9M0)_G.V=_0xK8L9M0;_0xE2F3G4()end})_G.Z=0x1==0x2;local function _0xN1O2P3()while _G.Z do wait(0x2*0x1/0xA)pcall(function()if not e["\98\111\111\115\116\84\105\109\101\114\115\70\111\108\100\101\114"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")then local _0xQ4R5S6=e["\66\97\99\107\112\97\99\107"]:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")if _0xQ4R5S6 then e.Character.Humanoid:EquipTool(_0xQ4R5S6)wait(0x1/0xA)if e.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103")then e["\109\117\115\99\108\101\69\118\101\110\116"]:FireServer("\112\114\111\116\101\105\110\69\103\103",e.Character:FindFirstChild("\80\114\111\116\101\105\110\32\69\103\103"))wait(0x1/0xA)e.Character.Humanoid:UnequipTools()end end end end)end end;_0xJ1K2L3:Toggle({Title="\65\117\116\111\32\69\103\103",Desc="\65\117\116\111\32\117\115\101\32\80\114\111\116\101\105\110\32\69\103\103",Value=0x1==0x2,Callback=function(_0xT7U8V9)_G.Z=_0xT7U8V9;_0xN1O2P3()end})

local function _0xW0X1Y2()
    local _0xZ3A4B5=game:GetService("\67\111\114\101\71\117\105")
    local _0xC6D7E8=game:GetService("\80\108\97\121\101\114\115").LocalPlayer:FindFirstChild("\80\108\97\121\101\114\71\117\105")
    local _0xF9G0H1={"\43","\67\111\105\110\115","\67\111\105\110","\83\116\114\101\110\103\116\104","\69\120\112","\69\120\112\101\114\105\101\110\99\101","\76\101\118\101\108","\68\97\109\97\103\101","\72\101\97\108\116\104"}
    local _0xI2J3K4={"\87\105\110\100\85\73","\67\114\97\122\121\32\84\111\112","\82\97\121\102\105\101\108\100"}
    for _0xL5M6N7,_0xO8P9Q0 in ipairs(_0xZ3A4B5:GetChildren())do
        if _0xO8P9Q0:IsA("\83\99\114\101\101\110\71\117\105")then
            local _0xR1S2T3=0x1==0x2
            for _0xU4V5W6,_0xX7Y8Z9 in ipairs(_0xI2J3K4)do if _0xO8P9Q0.Name:find(_0xX7Y8Z9)then _0xR1S2T3=0x1==0x1 break end end
            if _0xR1S2T3 then continue end
            local _0xA0B1C2=0x1==0x2
            for _0xD3E4F5,_0xG6H7I8 in ipairs(_0xO8P9Q0:GetDescendants())do
                if(_0xG6H7I8:IsA("\84\101\120\116\76\97\98\101\108")or _0xG6H7I8:IsA("\84\101\120\116\66\117\116\116\111\110"))and _0xG6H7I8.Text then
                    local _0xJ9K0L1=_0xG6H7I8.Text
                    for _0xM1N2O3,_0xP4Q5R6 in ipairs(_0xF9G0H1)do if _0xJ9K0L1:find(_0xP4Q5R6)or _0xJ9K0L1:find("\37\43\37\100\43")then _0xA0B1C2=0x1==0x1 break end end
                    if _0xA0B1C2 then break end
                end
            end
            if _0xA0B1C2 then _0xO8P9Q0:Destroy()end
        end
    end
    if _0xC6D7E8 then
        for _0xS7T8U9,_0xV0W1X2 in ipairs(_0xC6D7E8:GetChildren())do
            if _0xV0W1X2:IsA("\83\99\114\101\101\110\71\117\105")then
                local _0xY3Z4A5=0x1==0x2
                for _0xB6C7D8,_0xE8F9G0 in ipairs(_0xI2J3K4)do if _0xV0W1X2.Name:find(_0xE8F9G0)then _0xY3Z4A5=0x1==0x1 break end end
                if _0xY3Z4A5 then continue end
                local _0xH1I2J3=0x1==0x2
                for _0xK4L5M6,_0xN7O8P9 in ipairs(_0xV0W1X2:GetDescendants())do
                    if(_0xN7O8P9:IsA("\84\101\120\116\76\97\98\101\108")or _0xN7O8P9:IsA("\84\101\120\116\66\117\116\116\111\110"))and _0xN7O8P9.Text then
                        local _0xQ0R1S2=_0xN7O8P9.Text
                        for _0xT3U4V5,_0xW5X6Y7 in ipairs(_0xF9G0H1)do if _0xQ0R1S2:find(_0xW5X6Y7)or _0xQ0R1S2:find("\37\43\37\100\43")then _0xH1I2J3=0x1==0x1 break end end
                        if _0xH1I2J3 then break end
                    end
                end
                if _0xH1I2J3 then _0xV0W1X2:Destroy()end
            end
        end
    end
end

_0xJ1K2L3:Button({Title="\67\108\101\97\114\32\71\97\105\110\32\85\73",Desc="\82\101\109\111\118\101\32\97\108\108\32\103\97\105\110\32\110\111\116\105\102\105\99\97\116\105\111\110\115",Callback=_0xW0X1Y2})
print("\83\99\114\105\112\116\32\108\111\97\100\101\100\33")
