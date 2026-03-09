-- 极致FPS优化函数
local function extremeFPS()
    local l = game:GetService("Lighting")
    local p = game:GetService("Players")
    local lp = p.LocalPlayer
    
    -- 系统设置
    settings().Rendering.QualityLevel = 0
    settings().Physics.PhysicsEnvironmentalThrottle = 3
    
    -- 照明优化
    l.Brightness, l.Ambient, l.OutdoorAmbient = 0.1, Color3.new(0,0,0), Color3.new(0,0,0)
    l.GlobalShadows = false
    
    -- 删除所有光源和特效
    for _,v in pairs(l:GetChildren()) do pcall(function() v:Destroy() end) end
    
    -- 工作区彻底清理
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Transparency, v.CanCollide, v.CastShadow = 1, false, false
        else
            pcall(function() v:Destroy() end)
        end
    end
    
    -- 删除其他玩家
    for _,v in pairs(p:GetPlayers()) do
        if v ~= lp and v.Character then pcall(function() v.Character:Destroy() end) end
    end
    
    -- 删除所有UI
    if lp.PlayerGui then
        for _,v in pairs(lp.PlayerGui:GetDescendants()) do pcall(function() v:Destroy() end) end
    end
    
    -- 隐藏自己角色
    if lp.Character then
        for _,v in pairs(lp.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.Transparency = 1 end
        end
    end
    
    print("极致FPS优化完成")
end
