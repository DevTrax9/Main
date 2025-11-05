-- // Auto-Moreira v3 GUI by jax_scripts
local tweenService = game:GetService("TweenService")
local plr = game.Players.LocalPlayer
local pg = plr:WaitForChild("PlayerGui")

-- MAIN GUI
local gui = Instance.new("ScreenGui", pg)
gui.Name = "AutoMoreira"

local mainFrame = Instance.new("Frame", gui)
mainFrame.Size = UDim2.new(0, 420, 0, 300)
mainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.Active = true
mainFrame.Draggable = true
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 12)

local titleBar = Instance.new("Frame", mainFrame)
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12)

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Text = "Auto-Moreira v3"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.BackgroundTransparency = 1
titleLabel.Position = UDim2.new(0, 10, 0, 5)
titleLabel.Size = UDim2.new(0.7, 0, 1, 0)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Close and Minimize buttons
local closeBtn = Instance.new("TextButton", titleBar)
closeBtn.Text = "X"
closeBtn.Size = UDim2.new(0, 30, 1, 0)
closeBtn.Position = UDim2.new(1, -35, 0, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(60, 0, 0)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 16
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 8)
closeBtn.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
end)

local minimizeBtn = Instance.new("TextButton", titleBar)
minimizeBtn.Text = "-"
minimizeBtn.Size = UDim2.new(0, 30, 1, 0)
minimizeBtn.Position = UDim2.new(1, -70, 0, 0)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 0)
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.TextSize = 16
Instance.new("UICorner", minimizeBtn).CornerRadius = UDim.new(0, 8)

local tabHolder = Instance.new("Frame", mainFrame)
tabHolder.Position = UDim2.new(0, 0, 0, 35)
tabHolder.Size = UDim2.new(1, 0, 0, 35)
tabHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local mainTabBtn = Instance.new("TextButton", tabHolder)
mainTabBtn.Text = "Main"
mainTabBtn.Size = UDim2.new(0, 100, 1, 0)
mainTabBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
mainTabBtn.Font = Enum.Font.GothamBold
mainTabBtn.TextSize = 14
Instance.new("UICorner", mainTabBtn).CornerRadius = UDim.new(0, 10)

local bypassTabBtn = Instance.new("TextButton", tabHolder)
bypassTabBtn.Text = "Bypasses"
bypassTabBtn.Size = UDim2.new(0, 100, 1, 0)
bypassTabBtn.Position = UDim2.new(0, 110, 0, 0)
bypassTabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
bypassTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
bypassTabBtn.Font = Enum.Font.GothamBold
bypassTabBtn.TextSize = 14
Instance.new("UICorner", bypassTabBtn).CornerRadius = UDim.new(0, 10)

local mainPage = Instance.new("Frame", mainFrame)
mainPage.Position = UDim2.new(0, 0, 0, 70)
mainPage.Size = UDim2.new(1, 0, 1, -70)
mainPage.BackgroundTransparency = 1

local bypassPage = Instance.new("Frame", mainFrame)
bypassPage.Position = UDim2.new(0, 0, 0, 70)
bypassPage.Size = UDim2.new(1, 0, 1, -70)
bypassPage.BackgroundTransparency = 1
bypassPage.Visible = false

mainTabBtn.MouseButton1Click:Connect(function()
	mainPage.Visible = true
	bypassPage.Visible = false
	mainTabBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	bypassTabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
end)
bypassTabBtn.MouseButton1Click:Connect(function()
	mainPage.Visible = false
	bypassPage.Visible = true
	mainTabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	bypassTabBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
end)

-- MAIN TAB
local startBtn = Instance.new("TextButton", mainPage)
startBtn.Text = "Start"
startBtn.Size = UDim2.new(0, 100, 0, 35)
startBtn.Position = UDim2.new(0, 30, 0, 20)
startBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
startBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
startBtn.Font = Enum.Font.GothamBold
startBtn.TextSize = 14
Instance.new("UICorner", startBtn).CornerRadius = UDim.new(0, 8)

local statusLabel = Instance.new("TextLabel", mainPage)
statusLabel.Text = "Idle"
statusLabel.Position = UDim2.new(0, 150, 0, 20)
statusLabel.Size = UDim2.new(0, 100, 0, 35)
statusLabel.BackgroundTransparency = 1
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.TextSize = 14

local timeBox = Instance.new("TextBox", mainPage)
timeBox.Text = "10"
timeBox.PlaceholderText = "Enter time (10–60)"
timeBox.Position = UDim2.new(0, 30, 0, 80)
timeBox.Size = UDim2.new(0, 120, 0, 30)
timeBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
timeBox.TextColor3 = Color3.fromRGB(255, 255, 255)
timeBox.Font = Enum.Font.GothamBold
timeBox.TextSize = 14
Instance.new("UICorner", timeBox).CornerRadius = UDim.new(0, 8)

-- LOOP LOGIC
local running = false

startBtn.MouseButton1Click:Connect(function()
	if not running then
		running = true
		startBtn.Text = "Stop"
		while running do
			statusLabel.Text = "Waiting..."
			local waitTime = tonumber(timeBox.Text) or 10
			waitTime = math.clamp(waitTime, 10, 60)
			task.wait(waitTime)
			statusLabel.Text = "Found"
			task.wait(10)
		end
	else
		running = false
		statusLabel.Text = "Idle"
		startBtn.Text = "Start"
	end
end)

-- BYPASS TAB
local function createToggle(name, posY)
	local t = Instance.new("TextButton", bypassPage)
	t.Text = name .. ": OFF"
	t.Size = UDim2.new(0, 200, 0, 35)
	t.Position = UDim2.new(0, 30, 0, posY)
	t.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	t.TextColor3 = Color3.fromRGB(255, 255, 255)
	t.Font = Enum.Font.GothamBold
	t.TextSize = 14
	Instance.new("UICorner", t).CornerRadius = UDim.new(0, 8)

	local state = false
	t.MouseButton1Click:Connect(function()
		state = not state
		t.Text = name .. ": " .. (state and "ON" or "OFF")
		t.BackgroundColor3 = state and Color3.fromRGB(0, 150, 255) or Color3.fromRGB(80, 80, 80)
	end)
end

createToggle("Bypass Steal Cooldown", 20)
createToggle("Bypass Base Lock", 70)

-- Collapse
local collapsed = false
minimizeBtn.MouseButton1Click:Connect(function()
	collapsed = not collapsed
	local goalSize = collapsed and UDim2.new(0, 420, 0, 35) or UDim2.new(0, 420, 0, 300)
	tweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = goalSize}):Play()
	mainPage.Visible = not collapsed
	bypassPage.Visible = not collapsed
	tabHolder.Visible = not collapsed
end)
