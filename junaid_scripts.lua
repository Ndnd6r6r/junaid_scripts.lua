-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "JunaidScripts"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Junaid Scripts"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 24
titleLabel.Parent = mainFrame

-- ESP Toggle Button
local espButton = Instance.new("TextButton")
espButton.Size = UDim2.new(0.8, 0, 0, 40)
espButton.Position = UDim2.new(0.1, 0, 0, 70)
espButton.Text = "Toggle ESP"
espButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
espButton.TextColor3 = Color3.fromRGB(255, 255, 255)
espButton.Font = Enum.Font.SourceSans
espButton.TextSize = 20
espButton.Parent = mainFrame

-- Style Changer Dropdown
local styleLabel = Instance.new("TextLabel")
styleLabel.Size = UDim2.new(0.8, 0, 0, 30)
styleLabel.Position = UDim2.new(0.1, 0, 0, 130)
styleLabel.BackgroundTransparency = 1
styleLabel.Text = "Select Style:"
styleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
styleLabel.Font = Enum.Font.SourceSans
styleLabel.TextSize = 18
styleLabel.Parent = mainFrame

local styleDropdown = Instance.new("TextButton")
styleDropdown.Size = UDim2.new(0.8, 0, 0, 40)
styleDropdown.Position = UDim2.new(0.1, 0, 0, 170)
styleDropdown.Text = "Choose Style"
styleDropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
styleDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
styleDropdown.Font = Enum.Font.SourceSans
styleDropdown.TextSize = 20
styleDropdown.Parent = mainFrame

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.2, 0, 0, 30)
closeButton.Position = UDim2.new(0.8, 0, 0, 0)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.Parent = mainFrame

-- Functionality (Placeholder)
espButton.MouseButton1Click:Connect(function()
    print("ESP toggled")
    -- Add your ESP functionality here
end)

styleDropdown.MouseButton1Click:Connect(function()
    print("Style changer opened")
    -- Add your style changer functionality here
end)

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
-- Add to your existing GUI script

-- Create Style Buttons
local styles = {"Isagi", "Rin", "Kaiser", "Shidou", "Barou", "Nagi", "Reo", "Bachira", "Kunigami", "Chigiri"}
local yOffset = 220

for i, style in ipairs(styles) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0, 30)
    button.Position = UDim2.new(0.1, 0, 0, yOffset)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 18
    button.Text = style
    button.Parent = mainFrame

    button.MouseButton1Click:Connect(function()
        print("Switched to style: " .. style)
        -- Placeholder for actual style change function
        -- Example: game:GetService("ReplicatedStorage").ChangeStyle:FireServer(style)
    end)

    yOffset = yOffset + 35
end
