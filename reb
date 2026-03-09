local function extremeFPS()
    local l = game:GetService("Lighting")
    local p = game:GetService("Players")
    local lp = p.LocalPlayer
    
    settings().Rendering.QualityLevel = 0
    settings().Physics.PhysicsEnvironmentalThrottle = 3
    
    l.Brightness, l.Ambient, l.OutdoorAmbient = 0.1, Color3.new(0,0,0), Color3.new(0,0,0)
    l.GlobalShadows = false
    
    for _,v in pairs(l:GetChildren()) do pcall(function() v:Destroy() end) end

    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Transparency, v.CanCollide, v.CastShadow = 1, false, false
        else
            pcall(function() v:Destroy() end)
        end
    end
    
    for _,v in pairs(p:GetPlayers()) do
        if v ~= lp and v.Character then pcall(function() v.Character:Destroy() end) end
    end
    
    if lp.PlayerGui then
        for _,v in pairs(lp.PlayerGui:GetDescendants()) do pcall(function() v:Destroy() end) end
    end
    
    if lp.Character then
        for _,v in pairs(lp.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.Transparency = 1 end
        end
    end
    
    print("极致FPS优化完成")
end
