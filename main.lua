-- 您的修改版本脚本
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/your-repo/main/main.lua"))()

-- 防AFK功能
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

-- 创建窗口
local Window = WindUI:CreateWindow({
    Title = "我的专属脚本",
    Icon = "rbxassetid://139743288604595",
    Author = "您的名字",
    Size = UDim2.fromOffset(350, 400),
    Theme = "Dark"
})

-- 主要标签页
local mainTab = Window:Tab({
    Title = "主要功能",
    Icon = "⭐",
})

mainTab:Toggle({
    Title = "自动攻击",
    Value = false,
    Callback = function(state)
        _G.autoAttack = state
        print("自动攻击: " .. tostring(state))
    end
})

mainTab:Button({
    Title = "测试按钮",
    Callback = function()
        print("按钮被点击了！")
    end
})

print("脚本加载成功！")