-- Roblox GUI Script
-- Place this in StarterGui as a LocalScript

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

-- Roblox GUI Script
-- Place this in StarterGui as a LocalScript

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Main Frame (black rounded rectangle)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 500, 0, 350)
mainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 35, 50)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 15)
mainCorner.Parent = mainFrame

-- Shadow effect using UIStroke for edge glow
local shadow = Instance.new("UIStroke")
shadow.Name = "Shadow"
shadow.Color = Color3.fromRGB(20, 15, 30)
shadow.Thickness = 8
shadow.Transparency = 0.4
shadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
shadow.Parent = mainFrame

-- Outer glow layer
local outerGlow = Instance.new("UIStroke")
outerGlow.Name = "OuterGlow"
outerGlow.Color = Color3.fromRGB(80, 60, 120)
outerGlow.Thickness = 3
outerGlow.Transparency = 0.7
outerGlow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
outerGlow.Parent = mainFrame

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 8)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Auto-Moreira V4"
titleLabel.TextColor3 = Color3.fromRGB(200, 180, 220)
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.Parent = mainFrame

-- Subtitle Label
local subtitleLabel = Instance.new("TextLabel")
subtitleLabel.Name = "SubtitleLabel"
subtitleLabel.Size = UDim2.new(1, 0, 0, 15)
subtitleLabel.Position = UDim2.new(0, 0, 0, 33)
subtitleLabel.BackgroundTransparency = 1
subtitleLabel.Text = "By: Jax-Scripts"
subtitleLabel.TextColor3 = Color3.fromRGB(130, 120, 140)
subtitleLabel.TextSize = 11
subtitleLabel.Font = Enum.Font.Gotham
subtitleLabel.TextXAlignment = Enum.TextXAlignment.Center
subtitleLabel.Parent = mainFrame

-- Main Tab Button
local mainTab = Instance.new("TextButton")
mainTab.Name = "MainTab"
mainTab.Size = UDim2.new(0, 100, 0, 35)
mainTab.Position = UDim2.new(0, 20, 0, 55)
mainTab.BackgroundColor3 = Color3.fromRGB(70, 60, 90)
mainTab.BackgroundTransparency = 0.2
mainTab.Text = "Main"
mainTab.TextColor3 = Color3.fromRGB(255, 255, 255)
mainTab.TextSize = 16
mainTab.Font = Enum.Font.GothamBold
mainTab.BorderSizePixel = 0
mainTab.Parent = mainFrame

local mainTabCorner = Instance.new("UICorner")
mainTabCorner.CornerRadius = UDim.new(0, 8)
mainTabCorner.Parent = mainTab

-- Bypass Tab Button
local bypassTab = Instance.new("TextButton")
bypassTab.Name = "BypassTab"
bypassTab.Size = UDim2.new(0, 100, 0, 35)
bypassTab.Position = UDim2.new(0, 130, 0, 55)
bypassTab.BackgroundColor3 = Color3.fromRGB(50, 45, 65)
bypassTab.BackgroundTransparency = 0.2
bypassTab.Text = "Bypass"
bypassTab.TextColor3 = Color3.fromRGB(255, 255, 255)
bypassTab.TextSize = 16
bypassTab.Font = Enum.Font.GothamBold
bypassTab.BorderSizePixel = 0
bypassTab.Parent = mainFrame

local bypassTabCorner = Instance.new("UICorner")
bypassTabCorner.CornerRadius = UDim.new(0, 8)
bypassTabCorner.Parent = bypassTab

-- Content Frame for Main Tab
local mainContent = Instance.new("Frame")
mainContent.Name = "MainContent"
mainContent.Size = UDim2.new(1, -40, 1, -110)
mainContent.Position = UDim2.new(0, 20, 0, 100)
mainContent.BackgroundColor3 = Color3.fromRGB(50, 45, 65)
mainContent.BackgroundTransparency = 0.3
mainContent.BorderSizePixel = 0
mainContent.Visible = true
mainContent.Parent = mainFrame

-- Start Button
local startButton = Instance.new("TextButton")
startButton.Name = "StartButton"
startButton.Size = UDim2.new(0, 160, 0, 40)
startButton.Position = UDim2.new(0.5, -80, 0, 10)
startButton.BackgroundColor3 = Color3.fromRGB(100, 80, 150)
startButton.BackgroundTransparency = 0.1
startButton.Text = "START"
startButton.TextColor3 = Color3.fromRGB(255, 255, 255)
startButton.TextSize = 18
startButton.Font = Enum.Font.GothamBold
startButton.BorderSizePixel = 0
startButton.Parent = mainContent

local startButtonCorner = Instance.new("UICorner")
startButtonCorner.CornerRadius = UDim.new(0, 8)
startButtonCorner.Parent = startButton

-- Loading Bar Background
local loadingBarBg = Instance.new("Frame")
loadingBarBg.Name = "LoadingBarBg"
loadingBarBg.Size = UDim2.new(1, -20, 0, 6)
loadingBarBg.Position = UDim2.new(0, 10, 0, 115)
loadingBarBg.BackgroundColor3 = Color3.fromRGB(30, 25, 40)
loadingBarBg.BackgroundTransparency = 0.3
loadingBarBg.BorderSizePixel = 0
loadingBarBg.Parent = mainContent

local loadingBarBgCorner = Instance.new("UICorner")
loadingBarBgCorner.CornerRadius = UDim.new(0, 3)
loadingBarBgCorner.Parent = loadingBarBg

-- Loading Bar Fill
local loadingBarFill = Instance.new("Frame")
loadingBarFill.Name = "LoadingBarFill"
loadingBarFill.Size = UDim2.new(0, 0, 1, 0)
loadingBarFill.Position = UDim2.new(0, 0, 0, 0)
loadingBarFill.BackgroundColor3 = Color3.fromRGB(150, 100, 200)
loadingBarFill.BackgroundTransparency = 0.1
loadingBarFill.BorderSizePixel = 0
loadingBarFill.Parent = loadingBarBg

local loadingBarFillCorner = Instance.new("UICorner")
loadingBarFillCorner.CornerRadius = UDim.new(0, 3)
loadingBarFillCorner.Parent = loadingBarFill

-- Player Joined Label
local playerJoinedLabel = Instance.new("TextLabel")
playerJoinedLabel.Name = "PlayerJoinedLabel"
playerJoinedLabel.Size = UDim2.new(1, -20, 0, 20)
playerJoinedLabel.Position = UDim2.new(0, 10, 0, 90)
playerJoinedLabel.BackgroundTransparency = 1
playerJoinedLabel.Text = ""
playerJoinedLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
playerJoinedLabel.TextSize = 14
playerJoinedLabel.Font = Enum.Font.GothamBold
playerJoinedLabel.TextXAlignment = Enum.TextXAlignment.Left
playerJoinedLabel.Visible = false
playerJoinedLabel.Parent = mainContent



-- Console/Coding Window
local consoleFrame = Instance.new("Frame")
consoleFrame.Name = "ConsoleFrame"
consoleFrame.Size = UDim2.new(1, -20, 0, 90)
consoleFrame.Position = UDim2.new(0, 10, 0, 130)
consoleFrame.BackgroundColor3 = Color3.fromRGB(30, 25, 40)
consoleFrame.BackgroundTransparency = 0.2
consoleFrame.BorderSizePixel = 0
consoleFrame.Parent = mainContent

local consoleCorner = Instance.new("UICorner")
consoleCorner.CornerRadius = UDim.new(0, 5)
consoleCorner.Parent = consoleFrame

-- Console Text (ScrollingFrame for text)
local consoleScroll = Instance.new("ScrollingFrame")
consoleScroll.Size = UDim2.new(1, -10, 1, -10)
consoleScroll.Position = UDim2.new(0, 5, 0, 5)
consoleScroll.BackgroundTransparency = 1
consoleScroll.BorderSizePixel = 0
consoleScroll.ScrollBarThickness = 6
consoleScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
consoleScroll.Parent = consoleFrame

local consoleText = Instance.new("TextLabel")
consoleText.Name = "ConsoleText"
consoleText.Size = UDim2.new(1, -10, 1, 0)
consoleText.Position = UDim2.new(0, 5, 0, 0)
consoleText.BackgroundTransparency = 1
consoleText.Text = ""
consoleText.TextColor3 = Color3.fromRGB(0, 255, 100)
consoleText.TextSize = 14
consoleText.Font = Enum.Font.Code
consoleText.TextXAlignment = Enum.TextXAlignment.Left
consoleText.TextYAlignment = Enum.TextYAlignment.Top
consoleText.TextWrapped = true
consoleText.RichText = true
consoleText.Parent = consoleScroll

-- Content Frame for Bypass Tab
local bypassContent = Instance.new("Frame")
bypassContent.Name = "BypassContent"
bypassContent.Size = UDim2.new(1, -40, 1, -110)
bypassContent.Position = UDim2.new(0, 20, 0, 100)
bypassContent.BackgroundColor3 = Color3.fromRGB(50, 45, 65)
bypassContent.BackgroundTransparency = 0.3
bypassContent.BorderSizePixel = 0
bypassContent.Visible = false
bypassContent.Parent = mainFrame

-- Bypass Cooldown Toggle
local bypassCooldownToggle = Instance.new("Frame")
bypassCooldownToggle.Name = "BypassCooldownToggle"
bypassCooldownToggle.Size = UDim2.new(0, 200, 0, 40)
bypassCooldownToggle.Position = UDim2.new(0, 20, 0, 20)
bypassCooldownToggle.BackgroundColor3 = Color3.fromRGB(70, 60, 90)
bypassCooldownToggle.BackgroundTransparency = 0.2
bypassCooldownToggle.BorderSizePixel = 0
bypassCooldownToggle.Parent = bypassContent

local bypassCooldownCorner = Instance.new("UICorner")
bypassCooldownCorner.CornerRadius = UDim.new(0, 8)
bypassCooldownCorner.Parent = bypassCooldownToggle

local bypassCooldownLabel = Instance.new("TextLabel")
bypassCooldownLabel.Size = UDim2.new(1, -50, 1, 0)
bypassCooldownLabel.Position = UDim2.new(0, 10, 0, 0)
bypassCooldownLabel.BackgroundTransparency = 1
bypassCooldownLabel.Text = "Bypass cooldown"
bypassCooldownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
bypassCooldownLabel.TextSize = 16
bypassCooldownLabel.Font = Enum.Font.Gotham
bypassCooldownLabel.TextXAlignment = Enum.TextXAlignment.Left
bypassCooldownLabel.Parent = bypassCooldownToggle

local bypassCooldownButton = Instance.new("TextButton")
bypassCooldownButton.Name = "ToggleButton"
bypassCooldownButton.Size = UDim2.new(0, 40, 0, 24)
bypassCooldownButton.Position = UDim2.new(1, -45, 0.5, -12)
bypassCooldownButton.BackgroundColor3 = Color3.fromRGB(60, 50, 80)
bypassCooldownButton.BackgroundTransparency = 0.2
bypassCooldownButton.Text = ""
bypassCooldownButton.BorderSizePixel = 0
bypassCooldownButton.Parent = bypassCooldownToggle

local bypassCooldownButtonCorner = Instance.new("UICorner")
bypassCooldownButtonCorner.CornerRadius = UDim.new(1, 0)
bypassCooldownButtonCorner.Parent = bypassCooldownButton

local bypassCooldownKnob = Instance.new("Frame")
bypassCooldownKnob.Name = "Knob"
bypassCooldownKnob.Size = UDim2.new(0, 18, 0, 18)
bypassCooldownKnob.Position = UDim2.new(0, 3, 0.5, -9)
bypassCooldownKnob.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
bypassCooldownKnob.BorderSizePixel = 0
bypassCooldownKnob.Parent = bypassCooldownButton

local bypassCooldownKnobCorner = Instance.new("UICorner")
bypassCooldownKnobCorner.CornerRadius = UDim.new(1, 0)
bypassCooldownKnobCorner.Parent = bypassCooldownKnob

-- Auto Block Toggle
local autoBlockToggle = Instance.new("Frame")
autoBlockToggle.Name = "AutoBlockToggle"
autoBlockToggle.Size = UDim2.new(0, 200, 0, 40)
autoBlockToggle.Position = UDim2.new(0, 20, 0, 70)
autoBlockToggle.BackgroundColor3 = Color3.fromRGB(70, 60, 90)
autoBlockToggle.BackgroundTransparency = 0.2
autoBlockToggle.BorderSizePixel = 0
autoBlockToggle.Parent = bypassContent

local autoBlockCorner = Instance.new("UICorner")
autoBlockCorner.CornerRadius = UDim.new(0, 8)
autoBlockCorner.Parent = autoBlockToggle

local autoBlockLabel = Instance.new("TextLabel")
autoBlockLabel.Size = UDim2.new(1, -50, 1, 0)
autoBlockLabel.Position = UDim2.new(0, 10, 0, 0)
autoBlockLabel.BackgroundTransparency = 1
autoBlockLabel.Text = "Auto block"
autoBlockLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
autoBlockLabel.TextSize = 16
autoBlockLabel.Font = Enum.Font.Gotham
autoBlockLabel.TextXAlignment = Enum.TextXAlignment.Left
autoBlockLabel.Parent = autoBlockToggle

local autoBlockButton = Instance.new("TextButton")
autoBlockButton.Name = "ToggleButton"
autoBlockButton.Size = UDim2.new(0, 40, 0, 24)
autoBlockButton.Position = UDim2.new(1, -45, 0.5, -12)
autoBlockButton.BackgroundColor3 = Color3.fromRGB(60, 50, 80)
autoBlockButton.BackgroundTransparency = 0.2
autoBlockButton.Text = ""
autoBlockButton.BorderSizePixel = 0
autoBlockButton.Parent = autoBlockToggle

local autoBlockButtonCorner = Instance.new("UICorner")
autoBlockButtonCorner.CornerRadius = UDim.new(1, 0)
autoBlockButtonCorner.Parent = autoBlockButton

local autoBlockKnob = Instance.new("Frame")
autoBlockKnob.Name = "Knob"
autoBlockKnob.Size = UDim2.new(0, 18, 0, 18)
autoBlockKnob.Position = UDim2.new(0, 3, 0.5, -9)
autoBlockKnob.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
autoBlockKnob.BorderSizePixel = 0
autoBlockKnob.Parent = autoBlockButton

local autoBlockKnobCorner = Instance.new("UICorner")
autoBlockKnobCorner.CornerRadius = UDim.new(1, 0)
autoBlockKnobCorner.Parent = autoBlockKnob

-- Close Button (X)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 18
closeButton.Font = Enum.Font.GothamBold
closeButton.BorderSizePixel = 0
closeButton.Parent = mainFrame

local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 8)
closeButtonCorner.Parent = closeButton

-- Minimize Button (-)
local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -70, 0, 5)
minimizeButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.TextSize = 20
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.BorderSizePixel = 0
minimizeButton.Parent = mainFrame

local minimizeButtonCorner = Instance.new("UICorner")
minimizeButtonCorner.CornerRadius = UDim.new(0, 8)
minimizeButtonCorner.Parent = minimizeButton

-- Minimized Frame (small square)
local minimizedFrame = Instance.new("Frame")
minimizedFrame.Name = "MinimizedFrame"
minimizedFrame.Size = UDim2.new(0, 80, 0, 80)
minimizedFrame.Position = UDim2.new(0.5, -40, 0, 20)
minimizedFrame.BackgroundColor3 = Color3.fromRGB(40, 35, 50)
minimizedFrame.BackgroundTransparency = 0.1
minimizedFrame.BorderSizePixel = 0
minimizedFrame.Visible = false
minimizedFrame.Parent = screenGui

local minimizedCorner = Instance.new("UICorner")
minimizedCorner.CornerRadius = UDim.new(0, 15)
minimizedCorner.Parent = minimizedFrame

-- Image in minimized frame
local minimizedImage = Instance.new("ImageLabel")
minimizedImage.Name = "MinimizedImage"
minimizedImage.Size = UDim2.new(0, 60, 0, 60)
minimizedImage.Position = UDim2.new(0.5, -30, 0.5, -30)
minimizedImage.BackgroundTransparency = 1
minimizedImage.Image = "rbxasset://130563907183918" -- Default placeholder, can be changed
minimizedImage.ScaleType = Enum.ScaleType.Fit
minimizedImage.Parent = minimizedFrame

-- Restore button (click to restore)
local restoreButton = Instance.new("TextButton")
restoreButton.Name = "RestoreButton"
restoreButton.Size = UDim2.new(1, 0, 1, 0)
restoreButton.Position = UDim2.new(0, 0, 0, 0)
restoreButton.BackgroundTransparency = 1
restoreButton.Text = ""
restoreButton.Parent = minimizedFrame

-- Variables
local isRunning = false
local spamConnection = nil
local loadingProgress = 0
local maxLoadingTime = 120
local currentMessage = 1
local messages = {"sending link..."}
local hasCompleted = false
local bypassCooldownEnabled = false
local autoBlockEnabled = false
local isMinimized = false
local consoleMessages = {}
local maxConsoleMessages = 5
local lastMessageTime = 0
local messageDelay = 0.5
local isStuttering = false
local stutterTimer = 0
local nextStutterTime = 0
local successCount = 0
local failedCount = 0

-- Functions
local function switchTab(tab)
	if tab == "main" then
		mainTab.BackgroundColor3 = Color3.fromRGB(70, 60, 90)
		bypassTab.BackgroundColor3 = Color3.fromRGB(50, 45, 65)
		mainContent.Visible = true
		bypassContent.Visible = false
	elseif tab == "bypass" then
		mainTab.BackgroundColor3 = Color3.fromRGB(50, 45, 65)
		bypassTab.BackgroundColor3 = Color3.fromRGB(70, 60, 90)
		mainContent.Visible = false
		bypassContent.Visible = true
	end
end

local function startSpam()
	isRunning = true
	hasCompleted = false
	loadingProgress = 0
	startButton.Text = "RUNNING..."
	startButton.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
	consoleText.Text = ""
	consoleMessages = {}
	lastMessageTime = 0
	loadingBarFill.Size = UDim2.new(0, 0, 1, 0)
	isStuttering = false
	stutterTimer = 0
	nextStutterTime = math.random(2, 5)
	successCount = 0
	failedCount = 0
	playerJoinedLabel.Visible = false
	playerJoinedLabel.Text = ""
	
	local startTime = tick()
	local pausedTime = 0
	
	spamConnection = game:GetService("RunService").Heartbeat:Connect(function(dt)
		local elapsed = tick() - startTime - pausedTime
		
		-- Handle stuttering (random pauses)
		stutterTimer = stutterTimer + dt
		if stutterTimer >= nextStutterTime and not isStuttering then
			isStuttering = true
			wait(math.random(0.1, 0.5)) -- Random pause duration
			pausedTime = pausedTime + (math.random(10, 50) / 100)
			isStuttering = false
			stutterTimer = 0
			nextStutterTime = math.random(2, 5)
		end
		
		-- Update loading progress (only when not stuttering)
		if not isStuttering then
			loadingProgress = math.min(elapsed / maxLoadingTime, 1)
			loadingBarFill.Size = UDim2.new(loadingProgress, 0, 1, 0)
		end
		
		if loadingProgress >= 1 and not hasCompleted then
			-- Loading complete - show PLAYER IS JOINING first
			hasCompleted = true
			playerJoinedLabel.Text = "PLAYER IS JOINING..."
			playerJoinedLabel.Visible = true
			
			-- Display final statistics
			local currentTime = os.date("%H:%M:%S")
			local totalSent = successCount + failedCount
			consoleText.Text = "[" .. currentTime .. "] Process completed.\n" ..
							   "[" .. currentTime .. "] Total sent: " .. totalSent .. "\n" ..
							   "[" .. currentTime .. "] Successful: " .. successCount .. "\n" ..
							   "[" .. currentTime .. "] Failed: " .. failedCount
			consoleText.TextColor3 = Color3.fromRGB(0, 255, 100)
			
			-- After 5 seconds, change to PLAYER JOINED and reset button
			wait(5)
			playerJoinedLabel.Text = "PLAYER JOINED"
			stopSpam()
		elseif not hasCompleted then
			-- Still loading, cycle through messages with delay (also stutters)
			if elapsed - lastMessageTime >= messageDelay and not isStuttering then
				local currentTime = os.date("%H:%M:%S")
				local result = math.random(1, 10) > 3 and "success" or "failed"
				
				if result == "success" then
					successCount = successCount + 1
					local newMessage = "[" .. currentTime .. "] sending link... success"
					table.insert(consoleMessages, newMessage)
				else
					failedCount = failedCount + 1
					local newMessage = '[' .. currentTime .. '] sending link... <font color="rgb(255, 50, 50)">failed</font>'
					table.insert(consoleMessages, newMessage)
				end
				
				-- Remove oldest message if exceeds max
				if #consoleMessages > maxConsoleMessages then
					table.remove(consoleMessages, 1)
				end
				
				-- Update console text
				consoleText.Text = table.concat(consoleMessages, "\n")
				
				lastMessageTime = elapsed
				consoleScroll.CanvasSize = UDim2.new(0, 0, 0, consoleText.TextBounds.Y + 10)
				consoleScroll.CanvasPosition = Vector2.new(0, consoleScroll.CanvasSize.Y.Offset)
			end
		end
	end)
end

local function stopSpam()
	isRunning = false
	startButton.Text = "START"
	startButton.BackgroundColor3 = Color3.fromRGB(100, 80, 150)
	if spamConnection then
		spamConnection:Disconnect()
		spamConnection = nil
	end
end

-- Event Connections
mainTab.MouseButton1Click:Connect(function()
	switchTab("main")
end)

bypassTab.MouseButton1Click:Connect(function()
	switchTab("bypass")
end)

startButton.MouseButton1Click:Connect(function()
	if isRunning then
		stopSpam()
	else
		startSpam()
	end
end)

-- Bypass Cooldown Toggle Click
bypassCooldownButton.MouseButton1Click:Connect(function()
	bypassCooldownEnabled = not bypassCooldownEnabled
	if bypassCooldownEnabled then
		bypassCooldownButton.BackgroundColor3 = Color3.fromRGB(120, 90, 180)
		bypassCooldownKnob.Position = UDim2.new(1, -21, 0.5, -9)
	else
		bypassCooldownButton.BackgroundColor3 = Color3.fromRGB(60, 50, 80)
		bypassCooldownKnob.Position = UDim2.new(0, 3, 0.5, -9)
	end
end)

-- Auto Block Toggle Click
autoBlockButton.MouseButton1Click:Connect(function()
	autoBlockEnabled = not autoBlockEnabled
	if autoBlockEnabled then
		autoBlockButton.BackgroundColor3 = Color3.fromRGB(120, 90, 180)
		autoBlockKnob.Position = UDim2.new(1, -21, 0.5, -9)
	else
		autoBlockButton.BackgroundColor3 = Color3.fromRGB(60, 50, 80)
		autoBlockKnob.Position = UDim2.new(0, 3, 0.5, -9)
	end
end)

-- Close Button Click
closeButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)

-- Minimize Button Click
minimizeButton.MouseButton1Click:Connect(function()
	if not isMinimized then
		isMinimized = true
		-- Hide all UI elements during animation
		titleLabel.Visible = false
		subtitleLabel.Visible = false
		mainTab.Visible = false
		bypassTab.Visible = false
		closeButton.Visible = false
		minimizeButton.Visible = false
		mainContent.Visible = false
		bypassContent.Visible = false
		startButton.Visible = false
		playerJoinedLabel.Visible = false
		consoleFrame.Visible = false
		loadingBarBg.Visible = false
		
		-- Smooth animation to minimize
		mainFrame:TweenSize(
			UDim2.new(0, 80, 0, 80),
			Enum.EasingDirection.InOut,
			Enum.EasingStyle.Quad,
			0.3,
			true,
			function()
				mainFrame.Visible = false
				minimizedFrame.Visible = true
			end
		)
		mainFrame:TweenPosition(
			UDim2.new(0.5, -40, 0, 20),
			Enum.EasingDirection.InOut,
			Enum.EasingStyle.Quad,
			0.3,
			true
		)
	end
end)

-- Restore Button Click
restoreButton.MouseButton1Click:Connect(function()
	if isMinimized then
		isMinimized = false
		-- Smooth animation to restore
		minimizedFrame.Visible = false
		mainFrame.Visible = true
		mainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
		mainFrame:TweenSize(
			UDim2.new(0, 500, 0, 350),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Back,
			0.3,
			true,
			function()
				-- Show all UI elements after animation
				titleLabel.Visible = true
				subtitleLabel.Visible = true
				mainTab.Visible = true
				bypassTab.Visible = true
				closeButton.Visible = true
				minimizeButton.Visible = true
				startButton.Visible = true
				consoleFrame.Visible = true
				loadingBarBg.Visible = true
				
				if activeTab == "main" then
					mainContent.Visible = true
					bypassContent.Visible = false
				else
					bypassContent.Visible = true
					mainContent.Visible = false
				end
			end
		)
	end
end)

-- Dragging functionality
local dragging = false
local dragInput, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = mainFrame.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

mainFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

-- Dragging functionality for minimized frame
local draggingMin = false
local dragInputMin, dragStartMin, startPosMin

local function updateMin(input)
	local delta = input.Position - dragStartMin
	minimizedFrame.Position = UDim2.new(startPosMin.X.Scale, startPosMin.X.Offset + delta.X, startPosMin.Y.Scale, startPosMin.Y.Offset + delta.Y)
end

minimizedFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingMin = true
		dragStartMin = input.Position
		startPosMin = minimizedFrame.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				draggingMin = false
			end
		end)
	end
end)

minimizedFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInputMin = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInputMin and draggingMin then
		updateMin(input)
	end
end)
