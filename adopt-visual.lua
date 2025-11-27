-- // === LOADING SCREEN (10s) ===
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local loadingGui = Instance.new("ScreenGui")
loadingGui.ResetOnSpawn = false
loadingGui.Parent = playerGui

local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(0, 300, 0, 220)
loadingFrame.Position = UDim2.new(0.5, -150, 0.5, -110)
loadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
loadingFrame.Parent = loadingGui
loadingFrame.Draggable = true

local corner1 = Instance.new("UICorner")
corner1.CornerRadius = UDim.new(0, 12)
corner1.Parent = loadingFrame
loadingFrame.Draggable = true
local loadText = Instance.new("TextLabel")
loadText.Size = UDim2.new(1, 0, 1, 0)
loadText.BackgroundTransparency = 1
loadText.Text = "Loading..."
loadText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadText.TextSize = 40
loadText.Font = Enum.Font.GothamBold
loadText.Parent = loadingFrame
loadingFrame.Draggable = true
task.wait(6)
loadingGui:Destroy()

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

-- Main frame
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 300, 0, 220)
main.Position = UDim2.new(0.5, -150, 0.5, -110)

main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
main.Active = true
main.Draggable = true
main.Parent = gui

-- Round corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

-- Title bar
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -35, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Adopt Me Trade GUI"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Parent = main

-- Close button (X)
local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 28, 0, 28)
close.Position = UDim2.new(1, -30, 0, 1)
close.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
close.Text = "X"
close.TextScaled = true
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.Parent = main

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = close

close.MouseButton1Click:Connect(function()
	main.Visible = false
end)

-- Input box
local input = Instance.new("TextBox")
input.Size = UDim2.new(1, -20, 0, 40)
input.Position = UDim2.new(0, 10, 0, 45)
input.PlaceholderText = "Username..."
input.Text = ""
input.TextScaled = true
input.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.Parent = main

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 10)
inputCorner.Parent = input


-- Auto Accept toggle
local auto = Instance.new("TextButton")
auto.Size = UDim2.new(1, -20, 0, 40)
auto.Position = UDim2.new(0, 10, 0, 145)
auto.Text = "Auto Accept: OFF"
auto.TextScaled = true
auto.TextColor3 = Color3.fromRGB(255, 255, 255)
auto.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
auto.Parent = main

local autoCorner = Instance.new("UICorner")
autoCorner.CornerRadius = UDim.new(0, 10)
autoCorner.Parent = auto

local autoEnabled = false
local autoBusy = false

auto.MouseButton1Click:Connect(function()
	if autoBusy then return end
	autoBusy = true

	auto.Text = "Working..."
	auto.BackgroundColor3 = Color3.fromRGB(200, 200, 0)
	wait(0.8)

	autoEnabled = not autoEnabled

	if autoEnabled then
		auto.Text = "Auto Accept: ON ✓"
		auto.BackgroundColor3 = Color3.fromRGB(0, 180, 0)
	else
		auto.Text = "Auto Accept: OFF"
		auto.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
	end

	wait(0.5)
	autoBusy = false
end)
-- Auto Accept toggle
local auto = Instance.new("TextButton")
auto.Size = UDim2.new(1, -20, 0, 40)
auto.Position = UDim2.new(0, 10, 0, 95)
auto.Text = "Freeze: OFF"
auto.TextScaled = true
auto.TextColor3 = Color3.fromRGB(255, 255, 255)
auto.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
auto.Parent = main

local autoCorner = Instance.new("UICorner")
autoCorner.CornerRadius = UDim.new(0, 10)
autoCorner.Parent = auto

local autoEnabled = false
local autoBusy = false

auto.MouseButton1Click:Connect(function()
	if autoBusy then return end
	autoBusy = true

	auto.Text = "Working..."
	auto.BackgroundColor3 = Color3.fromRGB(200, 200, 0)
	wait(0.8)

	autoEnabled = not autoEnabled

	if autoEnabled then
		auto.Text = "Freeze: ON ✓"
		auto.BackgroundColor3 = Color3.fromRGB(0, 180, 0)
	else
		auto.Text = "Freeze: OFF"
		auto.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
	end

	wait(0.5)
	autoBusy = false
end)
