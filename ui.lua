local player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MobileWindUI"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = player:WaitForChild("PlayerGui")

local viewportSize = workspace.CurrentCamera.ViewportSize
local mainWindow = Instance.new("Frame")
mainWindow.Name = "MainWindow"
mainWindow.Size = UDim2.new(0, 380, 0, 400)
mainWindow.Position = UDim2.new(0, 20, 0, 50)
mainWindow.BackgroundColor3 = Color3.fromRGB(255, 240, 245)
mainWindow.BorderSizePixel = 0
mainWindow.ZIndex = 10
mainWindow.Parent = screenGui

local backgroundGradient = Instance.new("UIGradient")
backgroundGradient.Rotation = 90
backgroundGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 250, 255)),
    ColorSequenceKeypoint.new(0.3, Color3.fromRGB(255, 235, 245)),
    ColorSequenceKeypoint.new(0.7, Color3.fromRGB(255, 220, 235)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 210, 225))
})
backgroundGradient.Parent = mainWindow

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 16)
uiCorner.Parent = mainWindow

local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(255, 160, 200)
uiStroke.Thickness = 3
uiStroke.Parent = mainWindow

local titleBar = Instance.new("TextButton")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundColor3 = Color3.fromRGB(255, 225, 235)
titleBar.Text = ""
titleBar.AutoButtonColor = false
titleBar.ZIndex = 11
titleBar.Parent = mainWindow

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 16, 0, 0)
titleCorner.Parent = titleBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0.6, 0, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Cr4zy Strength Pro"
titleLabel.TextColor3 = Color3.fromRGB(200, 70, 130)
titleLabel.TextSize = 14
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.ZIndex = 12
titleLabel.Parent = titleBar

local strengthLabel = Instance.new("TextLabel")
strengthLabel.Size = UDim2.new(0.4, 0, 1, 0)
strengthLabel.Position = UDim2.new(0.6, -10, 0, 0)
strengthLabel.BackgroundTransparency = 1
strengthLabel.Text = "strength 0"
strengthLabel.TextColor3 = Color3.fromRGB(180, 100, 150)
strengthLabel.TextSize = 12
strengthLabel.Font = Enum.Font.GothamBold
strengthLabel.TextXAlignment = Enum.TextXAlignment.Right
strengthLabel.ZIndex = 12
strengthLabel.Parent = titleBar

local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 28, 0, 28)
minimizeButton.Position = UDim2.new(1, -65, 0.5, -14)
minimizeButton.AnchorPoint = Vector2.new(0.5, 0.5)
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 220)
minimizeButton.Text = "─"
minimizeButton.TextColor3 = Color3.fromRGB(180, 60, 120)
minimizeButton.TextSize = 20
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.AutoButtonColor = false
minimizeButton.ZIndex = 12
minimizeButton.Parent = titleBar

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(0, 6)
minimizeCorner.Parent = minimizeButton

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 28, 0, 28)
closeButton.Position = UDim2.new(1, -30, 0.5, -14)
closeButton.AnchorPoint = Vector2.new(0.5, 0.5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 220)
closeButton.Text = "✕"
closeButton.TextColor3 = Color3.fromRGB(180, 60, 120)
closeButton.TextSize = 16
closeButton.Font = Enum.Font.GothamBold
closeButton.AutoButtonColor = false
closeButton.ZIndex = 12
closeButton.Parent = titleBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

local statsFrame = Instance.new("Frame")
statsFrame.Name = "StatsFrame"
statsFrame.Size = UDim2.new(1, -20, 0, 90)
statsFrame.Position = UDim2.new(0, 10, 0, 40)
statsFrame.BackgroundColor3 = Color3.fromRGB(255, 245, 250)
statsFrame.BorderSizePixel = 0
statsFrame.ZIndex = 11
statsFrame.Parent = mainWindow

local statsCorner = Instance.new("UICorner")
statsCorner.CornerRadius = UDim.new(0, 10)
statsCorner.Parent = statsFrame

local statsStroke = Instance.new("UIStroke")
statsStroke.Color = Color3.fromRGB(255, 180, 210)
statsStroke.Thickness = 2
statsStroke.Parent = statsFrame

local leftColumn = Instance.new("Frame")
leftColumn.Name = "LeftColumn"
leftColumn.Size = UDim2.new(0.5, -5, 1, 0)
leftColumn.Position = UDim2.new(0, 10, 0, 0)
leftColumn.BackgroundTransparency = 1
leftColumn.ZIndex = 12
leftColumn.Parent = statsFrame

local leftGrid = Instance.new("UIGridLayout")
leftGrid.CellSize = UDim2.new(1, -5, 0.33, -3)
leftGrid.CellPadding = UDim2.new(0, 0, 0, 2)
leftGrid.StartCorner = Enum.StartCorner.TopLeft
leftGrid.Parent = leftColumn

local leftItems = {
    {id = "current_speed", name = " Now:", color = Color3.fromRGB(100, 220, 150)},
    {id = "avg_speed_20s", name = " 20s:", color = Color3.fromRGB(255, 140, 100)},
    {id = "protein_status", name = " Egg:", color = Color3.fromRGB(220, 180, 100)}
}

local leftLabels = {}
for i, item in ipairs(leftItems) do
    local itemFrame = Instance.new("Frame")
    itemFrame.Name = item.id
    itemFrame.BackgroundTransparency = 1
    itemFrame.Parent = leftColumn
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(0.6, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = item.name
    nameLabel.TextColor3 = Color3.fromRGB(150, 100, 130)
    nameLabel.TextSize = 11
    nameLabel.Font = Enum.Font.Gotham
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Parent = itemFrame
    local valueLabel = Instance.new("TextLabel")
    valueLabel.Name = "Value"
    valueLabel.Size = UDim2.new(0.4, 0, 1, 0)
    valueLabel.Position = UDim2.new(0.6, 0, 0, 0)
    valueLabel.BackgroundTransparency = 1
    valueLabel.Text = "0"
    valueLabel.TextColor3 = item.color
    valueLabel.TextSize = 10
    valueLabel.Font = Enum.Font.GothamBold
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right
    valueLabel.Parent = itemFrame
    leftLabels[item.id] = valueLabel
end

local rightColumn = Instance.new("Frame")
rightColumn.Name = "RightColumn"
rightColumn.Size = UDim2.new(0.5, -5, 1, 0)
rightColumn.Position = UDim2.new(0.5, 5, 0, 0)
rightColumn.BackgroundTransparency = 1
rightColumn.ZIndex = 12
rightColumn.Parent = statsFrame

local rightGrid = Instance.new("UIGridLayout")
rightGrid.CellSize = UDim2.new(1, -5, 0.33, -3)
rightGrid.CellPadding = UDim2.new(0, 0, 0, 2)
rightGrid.StartCorner = Enum.StartCorner.TopLeft
rightGrid.Parent = rightColumn

local rightItems = {
    {id = "current_strength", name = " Now:", color = Color3.fromRGB(220, 100, 150)},
    {id = "daily_gain", name = "Day:", color = Color3.fromRGB(100, 180, 255)},
    {id = "monthly_gain", name = "Mon:", color = Color3.fromRGB(150, 100, 220)}
}

local rightLabels = {}
for i, item in ipairs(rightItems) do
    local itemFrame = Instance.new("Frame")
    itemFrame.Name = item.id
    itemFrame.BackgroundTransparency = 1
    itemFrame.Parent = rightColumn
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(0.6, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = item.name
    nameLabel.TextColor3 = Color3.fromRGB(150, 100, 130)
    nameLabel.TextSize = 11
    nameLabel.Font = Enum.Font.Gotham
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Parent = itemFrame
    local valueLabel = Instance.new("TextLabel")
    valueLabel.Name = "Value"
    valueLabel.Size = UDim2.new(0.4, 0, 1, 0)
    valueLabel.Position = UDim2.new(0.6, 0, 0, 0)
    valueLabel.BackgroundTransparency = 1
    valueLabel.Text = "0"
    valueLabel.TextColor3 = item.color
    valueLabel.TextSize = 10
    valueLabel.Font = Enum.Font.GothamBold
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right
    valueLabel.Parent = itemFrame
    rightLabels[item.id] = valueLabel
end

local buttonsFrame = Instance.new("Frame")
buttonsFrame.Name = "ButtonsFrame"
buttonsFrame.Size = UDim2.new(1, -20, 0, 230)
buttonsFrame.Position = UDim2.new(0, 10, 0, 140)
buttonsFrame.BackgroundTransparency = 1
buttonsFrame.ZIndex = 11
buttonsFrame.Parent = mainWindow

local buttonContainer = Instance.new("ScrollingFrame")
buttonContainer.Name = "ButtonContainer"
buttonContainer.Size = UDim2.new(1, 0, 1, 0)
buttonContainer.BackgroundTransparency = 1
buttonContainer.ScrollBarThickness = 3
buttonContainer.ScrollBarImageColor3 = Color3.fromRGB(255, 180, 210)
buttonContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
buttonContainer.ZIndex = 12
buttonContainer.Parent = buttonsFrame

local buttonList = Instance.new("UIListLayout")
buttonList.Padding = UDim.new(0, 6)
buttonList.Parent = buttonContainer

local isDragging = false
local dragStart, windowStart = Vector2.new(0, 0), Vector2.new(0, 0)
local isMinimized = false
local originalSize = mainWindow.Size
local originalPosition = mainWindow.Position

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStart = input.Position
        windowStart = Vector2.new(mainWindow.Position.X.Offset, mainWindow.Position.Y.Offset)
        mainWindow.ZIndex = 20
        titleBar.BackgroundColor3 = Color3.fromRGB(255, 215, 230)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or 
       input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        local newX = windowStart.X + delta.X
        local newY = windowStart.Y + delta.Y
        
        newX = math.max(0, math.min(newX, viewportSize.X - mainWindow.Size.X.Offset))
        newY = math.max(0, math.min(newY, viewportSize.Y - mainWindow.Size.Y.Offset))
        
        mainWindow.Position = UDim2.new(0, newX, 0, newY)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.MouseButton1 or 
       input.UserInputType == Enum.UserInputType.Touch) then
        isDragging = false
        mainWindow.ZIndex = 10
        titleBar.BackgroundColor3 = Color3.fromRGB(255, 225, 235)
    end
end)

local function toggleMinimize()
    isMinimized = not isMinimized
    
    if isMinimized then
        mainWindow.Size = UDim2.new(0, mainWindow.Size.X.Offset, 0, 35)
        statsFrame.Visible = false
        buttonsFrame.Visible = false
        minimizeButton.Text = "+"
        titleCorner.CornerRadius = UDim.new(0, 16)
    else
        mainWindow.Size = originalSize
        statsFrame.Visible = true
        buttonsFrame.Visible = true
        minimizeButton.Text = "─"
        titleCorner.CornerRadius = UDim.new(0, 16, 0, 0)
    end
end

minimizeButton.MouseButton1Click:Connect(toggleMinimize)

minimizeButton.MouseEnter:Connect(function()
    minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 190, 215)
end)

minimizeButton.MouseLeave:Connect(function()
    minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 220)
end)

-- 关闭功能
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    game:GetService("CoreGui"):FindFirstChild("KJY_Team_AntiDup"):Destroy()
end)

closeButton.MouseEnter:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 190, 215)
    closeButton.TextColor3 = Color3.fromRGB(200, 40, 100)
end)

closeButton.MouseLeave:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 220)
    closeButton.TextColor3 = Color3.fromRGB(180, 60, 120)
end)

-- ==================== 导出API供外部使用 ====================
if not _G.WindUI then _G.WindUI = {} end

_G.WindUI.UpdateTitle = function(text)
    strengthLabel.Text = text
end

_G.WindUI.UpdateStats = function(data)
    for key, value in pairs(data) do
        if leftLabels[key] then
            leftLabels[key].Text = value
        elseif rightLabels[key] then
            rightLabels[key].Text = value
        end
    end
end

_G.WindUI.AddButton = function(name, desc, callback)
    local buttonFrame = Instance.new("TextButton")
    buttonFrame.Name = name .. "Button"
    buttonFrame.Size = UDim2.new(1, 0, 0, 45)
    buttonFrame.BackgroundColor3 = Color3.fromRGB(255, 235, 245)
    buttonFrame.Text = ""
    buttonFrame.AutoButtonColor = false
    buttonFrame.ZIndex = 12
    buttonFrame.Parent = buttonContainer
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = buttonFrame
    
    local buttonStroke = Instance.new("UIStroke")
    buttonStroke.Color = Color3.fromRGB(255, 180, 210)
    buttonStroke.Thickness = 2
    buttonStroke.Parent = buttonFrame
    
    local buttonTitle = Instance.new("TextLabel")
    buttonTitle.Size = UDim2.new(1, -20, 0.7, 0)
    buttonTitle.Position = UDim2.new(0, 10, 0, 0)
    buttonTitle.BackgroundTransparency = 1
    buttonTitle.Text = name
    buttonTitle.TextColor3 = Color3.fromRGB(180, 60, 120)
    buttonTitle.TextSize = 13
    buttonTitle.Font = Enum.Font.GothamBold
    buttonTitle.TextXAlignment = Enum.TextXAlignment.Left
    buttonTitle.ZIndex = 13
    buttonTitle.Parent = buttonFrame
    
    local buttonDesc = Instance.new("TextLabel")
    buttonDesc.Size = UDim2.new(1, -20, 0.3, 0)
    buttonDesc.Position = UDim2.new(0, 10, 0.7, 0)
    buttonDesc.BackgroundTransparency = 1
    buttonDesc.Text = desc
    buttonDesc.TextColor3 = Color3.fromRGB(150, 90, 120)
    buttonDesc.TextSize = 10
    buttonDesc.Font = Enum.Font.Gotham
    buttonDesc.TextXAlignment = Enum.TextXAlignment.Left
    buttonDesc.ZIndex = 13
    buttonDesc.Parent = buttonFrame
    
    buttonFrame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            if callback then
                callback()
            end
        end
    end)
    
    buttonContainer.CanvasSize = UDim2.new(0, 0, 0, #buttonContainer:GetChildren() * 51)
end

print("WindUI Loaded")
