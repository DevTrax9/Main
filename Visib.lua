-- Hacker Simulator GUI
-- Place in StarterGui as a LocalScript

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local function tween(obj, t, props)
	TweenService:Create(obj, TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), props):Play()
end

local function addCorner(parent, radius)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, radius or 8)
	c.Parent = parent
	return c
end

local function addStroke(parent, color, thickness)
	local s = Instance.new("UIStroke")
	s.Color = color or Color3.fromRGB(55, 55, 55)
	s.Thickness = thickness or 1
	s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	s.Parent = parent
end

-- ═══════════════════════════════════════════════
--  LOADER
-- ═══════════════════════════════════════════════
local loaderGui = Instance.new("ScreenGui")
loaderGui.Name = "LoaderGui"
loaderGui.ResetOnSpawn = false
loaderGui.DisplayOrder = 10
loaderGui.Parent = game.CoreGui

local loaderFrame = Instance.new("Frame")
loaderFrame.Size = UDim2.new(0, 0, 0, 0)
loaderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
loaderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
loaderFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
loaderFrame.BorderSizePixel = 0
loaderFrame.ClipsDescendants = true
loaderFrame.Parent = loaderGui
addCorner(loaderFrame, 12)
addStroke(loaderFrame, Color3.fromRGB(55, 55, 55), 1)

local loaderAvatar = Instance.new("ImageLabel")
loaderAvatar.Size = UDim2.new(0, 46, 0, 46)
loaderAvatar.Position = UDim2.new(0, 14, 0, 12)
loaderAvatar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
loaderAvatar.Image = "rbxassetid://130563907183918"
loaderAvatar.Parent = loaderFrame
addCorner(loaderAvatar, 23)

local loaderTopLabel = Instance.new("TextLabel")
loaderTopLabel.Size = UDim2.new(0, 220, 0, 18)
loaderTopLabel.Position = UDim2.new(0, 68, 0, 14)
loaderTopLabel.BackgroundTransparency = 1
loaderTopLabel.Text = "Youtube: Jax_Scripts"
loaderTopLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
loaderTopLabel.TextSize = 13
loaderTopLabel.Font = Enum.Font.GothamBold
loaderTopLabel.TextXAlignment = Enum.TextXAlignment.Left
loaderTopLabel.TextTransparency = 1
loaderTopLabel.Parent = loaderFrame

local loaderSubLabel = Instance.new("TextLabel")
loaderSubLabel.Size = UDim2.new(0, 220, 0, 16)
loaderSubLabel.Position = UDim2.new(0, 68, 0, 32)
loaderSubLabel.BackgroundTransparency = 1
loaderSubLabel.Text = "Loader"
loaderSubLabel.TextColor3 = Color3.fromRGB(110, 110, 110)
loaderSubLabel.TextSize = 11
loaderSubLabel.Font = Enum.Font.Gotham
loaderSubLabel.TextXAlignment = Enum.TextXAlignment.Left
loaderSubLabel.TextTransparency = 1
loaderSubLabel.Parent = loaderFrame

local loaderTitle = Instance.new("TextLabel")
loaderTitle.Size = UDim2.new(0, 290, 0, 28)
loaderTitle.Position = UDim2.new(0, 28, 0, 66)
loaderTitle.BackgroundTransparency = 1
loaderTitle.Text = "<b>Auto-Moreira V4</b>"
loaderTitle.RichText = true
loaderTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
loaderTitle.TextSize = 14
loaderTitle.Font = Enum.Font.Gotham
loaderTitle.TextXAlignment = Enum.TextXAlignment.Left
loaderTitle.TextTransparency = 1
loaderTitle.Parent = loaderFrame

local loaderBarBg = Instance.new("Frame")
loaderBarBg.Size = UDim2.new(0, 290, 0, 6)
loaderBarBg.Position = UDim2.new(0, 28, 0, 100)
loaderBarBg.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
loaderBarBg.BackgroundTransparency = 1
loaderBarBg.BorderSizePixel = 0
loaderBarBg.Parent = loaderFrame
addCorner(loaderBarBg, 3)

local loaderBarFill = Instance.new("Frame")
loaderBarFill.Size = UDim2.new(0, 0, 1, 0)
loaderBarFill.BackgroundColor3 = Color3.fromRGB(0, 200, 70)
loaderBarFill.BackgroundTransparency = 1
loaderBarFill.BorderSizePixel = 0
loaderBarFill.Parent = loaderBarBg
addCorner(loaderBarFill, 3)

local loaderStepLabel = Instance.new("TextLabel")
loaderStepLabel.Size = UDim2.new(0, 290, 0, 18)
loaderStepLabel.Position = UDim2.new(0, 28, 0, 112)
loaderStepLabel.BackgroundTransparency = 1
loaderStepLabel.Text = ""
loaderStepLabel.TextColor3 = Color3.fromRGB(100, 100, 100)
loaderStepLabel.TextSize = 11
loaderStepLabel.Font = Enum.Font.Gotham
loaderStepLabel.TextXAlignment = Enum.TextXAlignment.Left
loaderStepLabel.TextTransparency = 1
loaderStepLabel.Parent = loaderFrame

local keyframes = {
	{1, 10,  "Initializing..."},
	{2, 30,  "Loading modules..."},
	{3, 60,  "Connecting to server..."},
	{2, 100, "Done!"},
}

tween(loaderFrame, 0.25, {Size = UDim2.new(0, 346, 0, 138)})
task.wait(0.3)
tween(loaderTopLabel,  0.4, {TextTransparency = 0})
tween(loaderSubLabel,  0.4, {TextTransparency = 0})
tween(loaderTitle,     0.4, {TextTransparency = 0})
tween(loaderBarBg,     0.4, {BackgroundTransparency = 0})
tween(loaderBarFill,   0.4, {BackgroundTransparency = 0})
tween(loaderStepLabel, 0.4, {TextTransparency = 0})

for _, kf in ipairs(keyframes) do
	task.wait(kf[1])
	loaderStepLabel.Text = kf[3]
	tween(loaderBarFill, 0.5, {Size = UDim2.new(kf[2] / 100, 0, 1, 0)})
end

task.wait(0.6)
tween(loaderTopLabel,  0.4, {TextTransparency = 1})
tween(loaderSubLabel,  0.4, {TextTransparency = 1})
tween(loaderTitle,     0.4, {TextTransparency = 1})
tween(loaderBarBg,     0.4, {BackgroundTransparency = 1})
tween(loaderBarFill,   0.4, {BackgroundTransparency = 1})
tween(loaderStepLabel, 0.4, {TextTransparency = 1})
task.wait(0.4)
tween(loaderFrame, 0.25, {Size = UDim2.new(0, 0, 0, 0)})
task.wait(0.3)
loaderGui:Destroy()

-- ═══════════════════════════════════════════════
--  MAIN GUI
-- ═══════════════════════════════════════════════
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "HackerSimGui"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

-- Main frame — 560px wide so buttons never clip
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 560, 0, 375)
mainFrame.Position = UDim2.new(0.5, -280, 0.5, -187)
mainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
mainFrame.BackgroundTransparency = 0
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui
addCorner(mainFrame, 14)
addStroke(mainFrame, Color3.fromRGB(55, 55, 55), 1)

-- Title bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 54)
titleBar.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -150, 0, 26)
titleLabel.Position = UDim2.new(0, 15, 0, 8)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Auto-Moreira V4"
titleLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
titleLabel.TextSize = 17
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = titleBar

local subtitleLabel = Instance.new("TextLabel")
subtitleLabel.Size = UDim2.new(1, -150, 0, 14)
subtitleLabel.Position = UDim2.new(0, 15, 0, 35)
subtitleLabel.BackgroundTransparency = 1
subtitleLabel.Text = "By: Jax-Scripts"
subtitleLabel.TextColor3 = Color3.fromRGB(90, 90, 90)
subtitleLabel.TextSize = 11
subtitleLabel.Font = Enum.Font.Gotham
subtitleLabel.TextXAlignment = Enum.TextXAlignment.Left
subtitleLabel.Parent = titleBar

-- Window buttons — anchored from the RIGHT inside titleBar
local function makeWinBtn(offsetFromRight, bgColor, label)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0, 30, 0, 30)
	-- AnchorPoint right edge, offset inward
	btn.Position = UDim2.new(1, offsetFromRight, 0.5, -15)
	btn.BackgroundColor3 = bgColor
	btn.Text = label
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.TextSize = 14
	btn.Font = Enum.Font.GothamBold
	btn.BorderSizePixel = 0
	btn.Parent = titleBar
	addCorner(btn, 7)
	return btn
end

-- X button: right edge minus 10 px gap minus 30 px width = -40
-- Minus button: right edge minus 10+30+8 = -48 from X left edge = -86
local closeButton    = makeWinBtn(-40,  Color3.fromRGB(180, 45, 45), "X")
local minimizeButton = makeWinBtn(-78,  Color3.fromRGB(65, 65, 65),  "-")

-- Tab bar
local tabBar = Instance.new("Frame")
tabBar.Size = UDim2.new(1, 0, 0, 40)
tabBar.Position = UDim2.new(0, 0, 0, 54)
tabBar.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
tabBar.BorderSizePixel = 0
tabBar.Parent = mainFrame

local function makeTab(text, xPos)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0, 105, 0, 28)
	btn.Position = UDim2.new(0, xPos, 0.5, -14)
	btn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	btn.Text = text
	btn.TextColor3 = Color3.fromRGB(200, 200, 200)
	btn.TextSize = 14
	btn.Font = Enum.Font.GothamBold
	btn.BorderSizePixel = 0
	btn.Parent = tabBar
	addCorner(btn, 7)
	return btn
end

local mainTab   = makeTab("Main",   12)
local bypassTab = makeTab("Bypass", 125)

-- Divider
local divider = Instance.new("Frame")
divider.Size = UDim2.new(1, -24, 0, 1)
divider.Position = UDim2.new(0, 12, 0, 94)
divider.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
divider.BorderSizePixel = 0
divider.Parent = mainFrame

-- Content frames
local function makeContent(visible)
	local f = Instance.new("Frame")
	f.Size = UDim2.new(1, -24, 1, -104)
	f.Position = UDim2.new(0, 12, 0, 100)
	f.BackgroundTransparency = 1
	f.BorderSizePixel = 0
	f.Visible = visible
	f.Parent = mainFrame
	return f
end

local mainContent   = makeContent(true)
local bypassContent = makeContent(false)

-- START button
local startButton = Instance.new("TextButton")
startButton.Size = UDim2.new(0, 180, 0, 38)
startButton.Position = UDim2.new(0.5, -90, 0, 8)
startButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
startButton.Text = "START"
startButton.TextColor3 = Color3.fromRGB(0, 220, 80)
startButton.TextSize = 16
startButton.Font = Enum.Font.GothamBold
startButton.BorderSizePixel = 0
startButton.Parent = mainContent
addCorner(startButton, 8)
addStroke(startButton, Color3.fromRGB(0, 150, 55), 1)

-- Loading bar
local loadingBarBg = Instance.new("Frame")
loadingBarBg.Size = UDim2.new(1, 0, 0, 5)
loadingBarBg.Position = UDim2.new(0, 0, 0, 54)
loadingBarBg.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
loadingBarBg.BorderSizePixel = 0
loadingBarBg.Parent = mainContent
addCorner(loadingBarBg, 3)

local loadingBarFill = Instance.new("Frame")
loadingBarFill.Size = UDim2.new(0, 0, 1, 0)
loadingBarFill.BackgroundColor3 = Color3.fromRGB(0, 200, 70)
loadingBarFill.BorderSizePixel = 0
loadingBarFill.Parent = loadingBarBg
addCorner(loadingBarFill, 3)

-- Player joined label
local playerJoinedLabel = Instance.new("TextLabel")
playerJoinedLabel.Size = UDim2.new(1, 0, 0, 18)
playerJoinedLabel.Position = UDim2.new(0, 0, 0, 65)
playerJoinedLabel.BackgroundTransparency = 1
playerJoinedLabel.Text = ""
playerJoinedLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
playerJoinedLabel.TextSize = 13
playerJoinedLabel.Font = Enum.Font.GothamBold
playerJoinedLabel.TextXAlignment = Enum.TextXAlignment.Left
playerJoinedLabel.Visible = false
playerJoinedLabel.Parent = mainContent

-- Console
local consoleFrame = Instance.new("Frame")
consoleFrame.Size = UDim2.new(1, 0, 0, 160)
consoleFrame.Position = UDim2.new(0, 0, 0, 88)
consoleFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
consoleFrame.BorderSizePixel = 0
consoleFrame.Parent = mainContent
addCorner(consoleFrame, 8)
addStroke(consoleFrame, Color3.fromRGB(35, 35, 35), 1)

local consoleScroll = Instance.new("ScrollingFrame")
consoleScroll.Size = UDim2.new(1, -10, 1, -10)
consoleScroll.Position = UDim2.new(0, 5, 0, 5)
consoleScroll.BackgroundTransparency = 1
consoleScroll.BorderSizePixel = 0
consoleScroll.ScrollBarThickness = 3
consoleScroll.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50)
consoleScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
consoleScroll.Parent = consoleFrame

local consoleText = Instance.new("TextLabel")
consoleText.Size = UDim2.new(1, -8, 1, 0)
consoleText.Position = UDim2.new(0, 6, 0, 4)
consoleText.BackgroundTransparency = 1
consoleText.Text = ""
consoleText.TextColor3 = Color3.fromRGB(0, 210, 75)
consoleText.TextSize = 12
consoleText.Font = Enum.Font.Code
consoleText.TextXAlignment = Enum.TextXAlignment.Left
consoleText.TextYAlignment = Enum.TextYAlignment.Top
consoleText.TextWrapped = true
consoleText.RichText = true
consoleText.Parent = consoleScroll

-- Bypass toggles
local function makeToggleRow(parent, labelText, yPos)
	local row = Instance.new("Frame")
	row.Size = UDim2.new(0, 230, 0, 40)
	row.Position = UDim2.new(0, 0, 0, yPos)
	row.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	row.BorderSizePixel = 0
	row.Parent = parent
	addCorner(row, 8)
	addStroke(row, Color3.fromRGB(40, 40, 40), 1)

	local lbl = Instance.new("TextLabel")
	lbl.Size = UDim2.new(1, -58, 1, 0)
	lbl.Position = UDim2.new(0, 12, 0, 0)
	lbl.BackgroundTransparency = 1
	lbl.Text = labelText
	lbl.TextColor3 = Color3.fromRGB(200, 200, 200)
	lbl.TextSize = 14
	lbl.Font = Enum.Font.Gotham
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.Parent = row

	local track = Instance.new("TextButton")
	track.Size = UDim2.new(0, 40, 0, 22)
	track.Position = UDim2.new(1, -50, 0.5, -11)
	track.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	track.Text = ""
	track.BorderSizePixel = 0
	track.Parent = row
	addCorner(track, 11)

	local knob = Instance.new("Frame")
	knob.Size = UDim2.new(0, 16, 0, 16)
	knob.Position = UDim2.new(0, 3, 0.5, -8)
	knob.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
	knob.BorderSizePixel = 0
	knob.Parent = track
	addCorner(knob, 8)

	return track, knob
end

local bypassTrackBtn, bypassKnob       = makeToggleRow(bypassContent, "Bypass cooldown", 0)
local autoBlockTrackBtn, autoBlockKnob = makeToggleRow(bypassContent, "Auto block", 50)

-- Minimized frame
local minimizedFrame = Instance.new("Frame")
minimizedFrame.Size = UDim2.new(0, 72, 0, 72)
minimizedFrame.Position = UDim2.new(0.5, -36, 0, 20)
minimizedFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
minimizedFrame.BackgroundTransparency = 0
minimizedFrame.BorderSizePixel = 0
minimizedFrame.Visible = false
minimizedFrame.Parent = screenGui
addCorner(minimizedFrame, 14)
addStroke(minimizedFrame, Color3.fromRGB(55, 55, 55), 1)

local minImage = Instance.new("ImageLabel")
minImage.Size = UDim2.new(0, 46, 0, 46)
minImage.Position = UDim2.new(0.5, -23, 0.5, -23)
minImage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
minImage.Image = "rbxassetid://130563907183918"
minImage.ScaleType = Enum.ScaleType.Fit
minImage.Parent = minimizedFrame
addCorner(minImage, 8)

local restoreButton = Instance.new("TextButton")
restoreButton.Size = UDim2.new(1, 0, 1, 0)
restoreButton.BackgroundTransparency = 1
restoreButton.Text = ""
restoreButton.Parent = minimizedFrame

-- ═══════════════════════════════════════════════
--  STATE & LOGIC
-- ═══════════════════════════════════════════════
local isRunning       = false
local spamConnection  = nil
local loadingProgress = 0
local hasCompleted    = false
local isMinimized     = false
local consoleMessages = {}
local maxLines        = 6
local lastMsgTime     = 0
local msgDelay        = 0.45
local stutterTimer    = 0
local nextStutterTime = math.random(2, 5)
local isStuttering    = false
local successCount    = 0
local failedCount     = 0
local maxLoadTime     = 120
local activeTab       = "main"

local function switchTab(tab)
	activeTab = tab
	local onMain = (tab == "main")
	mainTab.BackgroundColor3   = onMain and Color3.fromRGB(38,38,38) or Color3.fromRGB(22,22,22)
	bypassTab.BackgroundColor3 = onMain and Color3.fromRGB(22,22,22) or Color3.fromRGB(38,38,38)
	mainContent.Visible   = onMain
	bypassContent.Visible = not onMain
end
switchTab("main")

local function stopSpam()
	isRunning = false
	startButton.Text = "START"
	startButton.TextColor3 = Color3.fromRGB(0, 220, 80)
	if spamConnection then
		spamConnection:Disconnect()
		spamConnection = nil
	end
end

local function startSpam()
	isRunning = true
	hasCompleted = false
	loadingProgress = 0
	successCount = 0
	failedCount = 0
	startButton.Text = "RUNNING..."
	startButton.TextColor3 = Color3.fromRGB(255, 75, 75)
	consoleText.Text = ""
	consoleMessages = {}
	lastMsgTime = 0
	loadingBarFill.Size = UDim2.new(0, 0, 1, 0)
	stutterTimer = 0
	nextStutterTime = math.random(2, 5)
	isStuttering = false
	playerJoinedLabel.Visible = false
	playerJoinedLabel.Text = ""

	local startTime = tick()
	local pauseAccum = 0

	spamConnection = RunService.Heartbeat:Connect(function(dt)
		local elapsed = tick() - startTime - pauseAccum

		stutterTimer += dt
		if stutterTimer >= nextStutterTime and not isStuttering then
			isStuttering = true
			task.delay(math.random(10, 50) / 100, function()
				pauseAccum += math.random(10, 50) / 100
				isStuttering = false
				stutterTimer = 0
				nextStutterTime = math.random(2, 5)
			end)
		end

		if not isStuttering then
			loadingProgress = math.min(elapsed / maxLoadTime, 1)
			tween(loadingBarFill, 0.3, {Size = UDim2.new(loadingProgress, 0, 1, 0)})
		end

		if loadingProgress >= 1 and not hasCompleted then
			hasCompleted = true
			playerJoinedLabel.Text = "PLAYER IS J
