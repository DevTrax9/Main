

shared.LoaderTitle = "Subscribe To Jax_Scripts";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(200, 200, 200),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(130, 36, 212)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://130563907183918",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Youtube: Jax_Scripts",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();
-- spawn(function()
--     while wait() do
--         function print()
--         end
--         function warn()
--         end
--         function error()
--         end
--         debug.traceback = function()
--             return "Traceback blocked";
--         end;
--         debug.info = function()
--             return "Info blocked";
--         end;
--         local v420 = getrawmetatable(game);
--         if (v420 and not v420.__metatable) then
--             setreadonly(v420, false);
--             local v658 = v420.__index;
--             local v659 = v420.__newindex;
--             v420.__index = function(v759, v760)
--                 if ((v760 == "debug") or (v760 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v658(v759, v760);
--             end;
--             v420.__newindex = function(v761, v762, v763)
--                 if ((v762 == "debug") or (v762 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v659(v761, v762, v763);
--             end;
--             setreadonly(v420, true);
--         end
--         local function v421()
--             local v568 = {
--                 "_G",
--                 "debug",
--                 "getgenv",
--                 "getrawmetatable",
--                 "setfenv",
--                 "loadstring",
--                 "hookfunction"
--             };
--             for v662, v663 in ipairs(v568) do
--                 local v664, v665 = pcall(function()
--                     return _G[v663];
--                 end);
--                 if (v664 and v665) then
--                     error("Anti Skid: Environment tampering detected!");
--                 end
--             end
--         end
--         local function v422()
--             local v569 = {
--                 getrawmetatable,
--                 setreadonly,
--                 getgenv,
--                 debug.getinfo,
--                 debug.getregistry
--             };
--             for v666, v667 in ipairs(v569) do
--                 if v667 then
--                     error("Anti Skid: Hook tampering detected!");
--                 end
--             end
--         end
--         local v423 = game:FindService("HttpService");
--         if v423 then
--             v423.RequestAsync = function()
--                 error("HTTP Requests Blocked");
--             end;
--             v423.GetAsync = function()
--                 error("HTTP Get Blocked");
--             end;
--             v423.PostAsync = function()
--                 error("HTTP Post Blocked");
--             end;
--         end
--         function collectgarbage()
--             error("GC Blocked");
--         end
--         os.time = function()
--             error("OS Time Blocked");
--         end;
--         pcall(v421);
--         pcall(v422);
--     end
-- end);

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NexioHub"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local parentSuccess = pcall(function()
	screenGui.Parent = PlayerGui
end)
if not parentSuccess then
	screenGui.Parent = game:GetService("CoreGui")
end

local baseSize = isMobile and UDim2.new(0, 300, 0, 370) or UDim2.new(0, 340, 0, 400)
local basePos = UDim2.new(0.5, isMobile and -150 or -170, 0.5, isMobile and -185 or -200)

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 0, 0, 0)
mainFrame.Position = basePos
mainFrame.BackgroundColor3 = Color3.fromRGB(10, 5, 20)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 18)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(180, 60, 255)
mainStroke.Transparency = 0.3
mainStroke.Thickness = 1.5
mainStroke.Parent = mainFrame

local bgGradient = Instance.new("UIGradient")
bgGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 5, 50)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(15, 5, 35)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 8, 65))
})
bgGradient.Rotation = 135
bgGradient.Parent = mainFrame

local glowFrame = Instance.new("Frame")
glowFrame.Size = UDim2.new(1, 0, 0, 3)
glowFrame.Position = UDim2.new(0, 0, 0, 0)
glowFrame.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
glowFrame.BorderSizePixel = 0
glowFrame.ZIndex = 5
glowFrame.Parent = mainFrame

local glowGrad = Instance.new("UIGradient")
glowGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 0, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 80, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 255))
})
glowGrad.Parent = glowFrame

local topBar = Instance.new("Frame")
topBar.Name = "TopBar"
topBar.Size = UDim2.new(1, 0, 0, 55)
topBar.Position = UDim2.new(0, 0, 0, 3)
topBar.BackgroundTransparency = 1
topBar.ZIndex = 3
topBar.Parent = mainFrame

local logoContainer = Instance.new("Frame")
logoContainer.Size = UDim2.new(0, 36, 0, 36)
logoContainer.Position = UDim2.new(0, 14, 0.5, -18)
logoContainer.BackgroundColor3 = Color3.fromRGB(140, 40, 220)
logoContainer.BorderSizePixel = 0
logoContainer.ZIndex = 4
logoContainer.Parent = topBar

local logoCorner = Instance.new("UICorner")
logoCorner.CornerRadius = UDim.new(0, 8)
logoCorner.Parent = logoContainer

local logoGrad = Instance.new("UIGradient")
logoGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 60, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 0, 180))
})
logoGrad.Rotation = 135
logoGrad.Parent = logoContainer

local logoLabel = Instance.new("TextLabel")
logoLabel.Size = UDim2.new(1, 0, 1, 0)
logoLabel.BackgroundTransparency = 1
logoLabel.Text = "N"
logoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
logoLabel.TextScaled = true
logoLabel.Font = Enum.Font.GothamBold
logoLabel.ZIndex = 5
logoLabel.Parent = logoContainer

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 120, 0, 22)
titleLabel.Position = UDim2.new(0, 58, 0, 8)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "JAX HUB"
titleLabel.TextColor3 = Color3.fromRGB(220, 150, 255)
titleLabel.TextScaled = false
titleLabel.TextSize = isMobile and 14 or 15
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.ZIndex = 4
titleLabel.Parent = topBar

local titleGrad = Instance.new("UIGradient")
titleGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 180, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 60, 255))
})
titleGrad.Parent = titleLabel

local subtitleLabel = Instance.new("TextLabel")
subtitleLabel.Size = UDim2.new(0, 170, 0, 16)
subtitleLabel.Position = UDim2.new(0, 58, 0, 30)
subtitleLabel.BackgroundTransparency = 1
subtitleLabel.Text = "Trade Controller"
subtitleLabel.TextColor3 = Color3.fromRGB(150, 100, 200)
subtitleLabel.TextScaled = false
subtitleLabel.TextSize = isMobile and 10 or 11
subtitleLabel.Font = Enum.Font.Gotham
subtitleLabel.TextXAlignment = Enum.TextXAlignment.Left
subtitleLabel.ZIndex = 4
subtitleLabel.Parent = topBar

local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 28, 0, 28)
minimizeBtn.Position = UDim2.new(1, -42, 0.5, -14)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(60, 20, 90)
minimizeBtn.Text = "−"
minimizeBtn.TextColor3 = Color3.fromRGB(200, 150, 255)
minimizeBtn.TextSize = 16
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.BorderSizePixel = 0
minimizeBtn.ZIndex = 6
minimizeBtn.Parent = topBar

local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(0, 7)
minCorner.Parent = minimizeBtn

local divider = Instance.new("Frame")
divider.Size = UDim2.new(1, -28, 0, 1)
divider.Position = UDim2.new(0, 14, 0, 58)
divider.BackgroundColor3 = Color3.fromRGB(120, 40, 200)
divider.BackgroundTransparency = 0.5
divider.BorderSizePixel = 0
divider.Parent = mainFrame

local divGrad = Instance.new("UIGradient")
divGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0,0,0)),
	ColorSequenceKeypoint.new(0.3, Color3.fromRGB(180,60,255)),
	ColorSequenceKeypoint.new(0.7, Color3.fromRGB(180,60,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0,0,0))
})
divGrad.Parent = divider

local contentFrame = Instance.new("Frame")
contentFrame.Name = "Content"
contentFrame.Size = UDim2.new(1, 0, 1, -60)
contentFrame.Position = UDim2.new(0, 0, 0, 60)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = mainFrame

local contentLayout = Instance.new("UIListLayout")
contentLayout.Padding = UDim.new(0, 10)
contentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
contentLayout.VerticalAlignment = Enum.VerticalAlignment.Top
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
contentLayout.Parent = contentFrame

local contentPadding = Instance.new("UIPadding")
contentPadding.PaddingTop = UDim.new(0, 14)
contentPadding.PaddingLeft = UDim.new(0, 14)
contentPadding.PaddingRight = UDim.new(0, 14)
contentPadding.Parent = contentFrame

local function createToggleButton(name, icon, order)
	local btnHeight = isMobile and 52 or 58

	local container = Instance.new("Frame")
	container.Name = name .. "Container"
	container.Size = UDim2.new(1, 0, 0, btnHeight)
	container.BackgroundColor3 = Color3.fromRGB(20, 8, 40)
	container.BackgroundTransparency = 0.2
	container.BorderSizePixel = 0
	container.LayoutOrder = order
	container.Parent = contentFrame

	local containerCorner = Instance.new("UICorner")
	containerCorner.CornerRadius = UDim.new(0, 12)
	containerCorner.Parent = container

	local containerStroke = Instance.new("UIStroke")
	containerStroke.Color = Color3.fromRGB(120, 40, 200)
	containerStroke.Transparency = 0.6
	containerStroke.Thickness = 1
	containerStroke.Parent = container

	local containerGrad = Instance.new("UIGradient")
	containerGrad.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 10, 65)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 5, 38))
	})
	containerGrad.Rotation = 135
	containerGrad.Parent = container

	local iconLabel = Instance.new("TextLabel")
	iconLabel.Size = UDim2.new(0, 32, 0, 32)
	iconLabel.Position = UDim2.new(0, 12, 0.5, -16)
	iconLabel.BackgroundColor3 = Color3.fromRGB(100, 30, 170)
	iconLabel.Text = icon
	iconLabel.TextColor3 = Color3.fromRGB(220, 150, 255)
	iconLabel.TextScaled = true
	iconLabel.Font = Enum.Font.GothamBold
	iconLabel.BorderSizePixel = 0
	iconLabel.ZIndex = 2
	iconLabel.Parent = container

	local iconCorner = Instance.new("UICorner")
	iconCorner.CornerRadius = UDim.new(0, 8)
	iconCorner.Parent = iconLabel

	local nameLabel = Instance.new("TextLabel")
	nameLabel.Name = "ButtonName"
	nameLabel.Size = UDim2.new(1, -110, 0, 20)
	nameLabel.Position = UDim2.new(0, 54, 0.5, -14)
	nameLabel.BackgroundTransparency = 1
	nameLabel.Text = name
	nameLabel.TextColor3 = Color3.fromRGB(230, 200, 255)
	nameLabel.TextScaled = false
	nameLabel.TextSize = isMobile and 12 or 13
	nameLabel.Font = Enum.Font.GothamBold
	nameLabel.TextXAlignment = Enum.TextXAlignment.Left
	nameLabel.ZIndex = 2
	nameLabel.Parent = container

	local statusLabel = Instance.new("TextLabel")
	statusLabel.Name = "StatusLabel"
	statusLabel.Size = UDim2.new(1, -110, 0, 14)
	statusLabel.Position = UDim2.new(0, 54, 0.5, 2)
	statusLabel.BackgroundTransparency = 1
	statusLabel.Text = "Inactive"
	statusLabel.TextColor3 = Color3.fromRGB(120, 80, 160)
	statusLabel.TextScaled = false
	statusLabel.TextSize = isMobile and 9 or 10
	statusLabel.Font = Enum.Font.Gotham
	statusLabel.TextXAlignment = Enum.TextXAlignment.Left
	statusLabel.ZIndex = 2
	statusLabel.Parent = container

	local toggleTrack = Instance.new("Frame")
	toggleTrack.Size = UDim2.new(0, 44, 0, 24)
	toggleTrack.Position = UDim2.new(1, -56, 0.5, -12)
	toggleTrack.BackgroundColor3 = Color3.fromRGB(40, 15, 70)
	toggleTrack.BorderSizePixel = 0
	toggleTrack.ZIndex = 2
	toggleTrack.Parent = container

	local trackCorner = Instance.new("UICorner")
	trackCorner.CornerRadius = UDim.new(1, 0)
	trackCorner.Parent = toggleTrack

	local trackStroke = Instance.new("UIStroke")
	trackStroke.Color = Color3.fromRGB(100, 30, 160)
	trackStroke.Transparency = 0.3
	trackStroke.Thickness = 1
	trackStroke.Parent = toggleTrack

	local toggleKnob = Instance.new("Frame")
	toggleKnob.Size = UDim2.new(0, 18, 0, 18)
	toggleKnob.Position = UDim2.new(0, 3, 0.5, -9)
	toggleKnob.BackgroundColor3 = Color3.fromRGB(160, 100, 220)
	toggleKnob.BorderSizePixel = 0
	toggleKnob.ZIndex = 3
	toggleKnob.Parent = toggleTrack

	local knobCorner = Instance.new("UICorner")
	knobCorner.CornerRadius = UDim.new(1, 0)
	knobCorner.Parent = toggleKnob

	local clickBtn = Instance.new("TextButton")
	clickBtn.Size = UDim2.new(1, 0, 1, 0)
	clickBtn.BackgroundTransparency = 1
	clickBtn.Text = ""
	clickBtn.ZIndex = 4
	clickBtn.Parent = container

	local isOn = false

	local function animateToggle(state)
		isOn = state
		local knobPos = state and UDim2.new(1, -21, 0.5, -9) or UDim2.new(0, 3, 0.5, -9)
		local trackColor = state and Color3.fromRGB(120, 40, 200) or Color3.fromRGB(40, 15, 70)
		local knobColor = state and Color3.fromRGB(220, 150, 255) or Color3.fromRGB(160, 100, 220)
		local strokeColor = state and Color3.fromRGB(180, 60, 255) or Color3.fromRGB(100, 30, 160)
		local containerStrokeColor = state and Color3.fromRGB(180, 60, 255) or Color3.fromRGB(120, 40, 200)
		local containerStrokeTransp = state and 0.2 or 0.6
		local statusText = state and "Active" or "Inactive"
		local statusColor = state and Color3.fromRGB(200, 130, 255) or Color3.fromRGB(120, 80, 160)
		local iconBg = state and Color3.fromRGB(140, 50, 210) or Color3.fromRGB(100, 30, 170)

		TweenService:Create(toggleKnob, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = knobPos, BackgroundColor3 = knobColor}):Play()
		TweenService:Create(toggleTrack, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = trackColor}):Play()
		TweenService:Create(trackStroke, TweenInfo.new(0.2), {Color = strokeColor}):Play()
		TweenService:Create(containerStroke, TweenInfo.new(0.2), {Color = containerStrokeColor, Transparency = containerStrokeTransp}):Play()
		TweenService:Create(iconLabel, TweenInfo.new(0.2), {BackgroundColor3 = iconBg}):Play()

		statusLabel.Text = statusText
		TweenService:Create(statusLabel, TweenInfo.new(0.2), {TextColor3 = statusColor}):Play()

		local punchTween = TweenService:Create(container, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0})
		punchTween:Play()
		punchTween.Completed:Connect(function()
			TweenService:Create(container, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.2}):Play()
		end)

		if state then
			local ripple = Instance.new("Frame")
			ripple.Size = UDim2.new(0, 0, 0, 0)
			ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
			ripple.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
			ripple.BackgroundTransparency = 0.5
			ripple.BorderSizePixel = 0
			ripple.ZIndex = 5
			ripple.ClipsDescendants = false
			ripple.Parent = container
			local rippleCorner = Instance.new("UICorner")
			rippleCorner.CornerRadius = UDim.new(1, 0)
			rippleCorner.Parent = ripple
			TweenService:Create(ripple, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 300, 0, 300),
				Position = UDim2.new(0.5, -150, 0.5, -150),
				BackgroundTransparency = 1
			}):Play()
			task.delay(0.5, function() ripple:Destroy() end)
		end

		print("[Nexio] " .. name .. " -> " .. (state and "ON" or "OFF"))
	end

	clickBtn.MouseButton1Click:Connect(function() animateToggle(not isOn) end)
	clickBtn.MouseEnter:Connect(function() TweenService:Create(container, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play() end)
	clickBtn.MouseLeave:Connect(function() TweenService:Create(container, TweenInfo.new(0.15), {BackgroundTransparency = 0.2}):Play() end)
end

createToggleButton("Freeze Trade", "❄", 1)
createToggleButton("Auto Accept", "✓", 2)
createToggleButton("Cancel Trade", "✕", 3)

local footerFrame = Instance.new("Frame")
footerFrame.Size = UDim2.new(1, 0, 0, 50)
footerFrame.BackgroundTransparency = 1
footerFrame.LayoutOrder = 4
footerFrame.Parent = contentFrame

local madeByLabel = Instance.new("TextLabel")
madeByLabel.Size = UDim2.new(1, 0, 0, 16)
madeByLabel.Position = UDim2.new(0, 0, 0, 4)
madeByLabel.BackgroundTransparency = 1
madeByLabel.Text = "Made By Jax_Scripts"
madeByLabel.TextColor3 = Color3.fromRGB(160, 100, 220)
madeByLabel.TextScaled = false
madeByLabel.TextSize = isMobile and 10 or 11
madeByLabel.Font = Enum.Font.GothamBold
madeByLabel.TextXAlignment = Enum.TextXAlignment.Center
madeByLabel.Parent = footerFrame

local socLabel = Instance.new("TextLabel")
socLabel.Size = UDim2.new(1, 0, 0, 14)
socLabel.Position = UDim2.new(0, 0, 0, 22)
socLabel.BackgroundTransparency = 1
socLabel.Text = "YT: Jax_Scripts "
socLabel.TextColor3 = Color3.fromRGB(100, 60, 150)
socLabel.TextScaled = false
socLabel.TextSize = isMobile and 9 or 10
socLabel.Font = Enum.Font.Gotham
socLabel.TextXAlignment = Enum.TextXAlignment.Center
socLabel.Parent = footerFrame

local minimized = false
local fullSize = baseSize
local miniSize = UDim2.new(0, fullSize.X.Offset, 0, 58)

minimizeBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	if minimized then
		minimizeBtn.Text = "+"
		TweenService:Create(mainFrame, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Size = miniSize}):Play()
	else
		minimizeBtn.Text = "−"
		TweenService:Create(mainFrame, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = fullSize}):Play()
	end
end)

local dragging = false
local dragStart = nil
local startPos = nil

local function onDragBegan(input)
	dragging = true
	dragStart = input.Position
	startPos = mainFrame.Position
end

local function onDragChanged(input)
	if dragging then
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end

local function onDragEnded()
	dragging = false
end

topBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		onDragBegan(input)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		onDragChanged(input)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		onDragEnded()
	end
end)

TweenService:Create(mainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = fullSize}):Play()

local shimmerFrame = Instance.new("Frame")
shimmerFrame.Size = UDim2.new(0, 60, 1, 0)
shimmerFrame.Position = UDim2.new(-0.3, 0, 0, 0)
shimmerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shimmerFrame.BackgroundTransparency = 0.92
shimmerFrame.BorderSizePixel = 0
shimmerFrame.ZIndex = 6
shimmerFrame.ClipsDescendants = false
shimmerFrame.Parent = mainFrame

local shimCorner = Instance.new("UICorner")
shimCorner.CornerRadius = UDim.new(0, 18)
shimCorner.Parent = shimmerFrame

local shimGrad = Instance.new("UIGradient")
shimGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0,0,0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0,0,0))
})
shimGrad.Rotation = 15
shimGrad.Parent = shimmerFrame

local function playShimmer()
	shimmerFrame.Position = UDim2.new(-0.3, 0, 0, 0)
	local t = TweenService:Create(shimmerFrame, TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = UDim2.new(1.3, 0, 0, 0)})
	t:Play()
	t.Completed:Connect(function() task.delay(4, playShimmer) end)
end

task.delay(1, playShimmer)

RunService.Heartbeat:Connect(function()
	local t = tick()
	local alpha = (math.sin(t * 1.5) + 1) / 2
	mainStroke.Transparency = 0.2 + alpha * 0.4
end)
