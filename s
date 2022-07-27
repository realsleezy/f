-- Range Indicator

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local DASGASDOM = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.389558226, 0, 0.0188261345, 0)
Frame.Size = UDim2.new(0, 330, 0, 57)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.0175438598, 0)
TextLabel.Size = UDim2.new(0, 330, 0, 27)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Sleezyware Rewrite"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000

DASGASDOM.Name = "DASGASDOM"
DASGASDOM.Parent = Frame
DASGASDOM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DASGASDOM.BackgroundTransparency = 1.000
DASGASDOM.Position = UDim2.new(0, 0, 0.508771956, 0)
DASGASDOM.Size = UDim2.new(0, 330, 0, 28)
DASGASDOM.Font = Enum.Font.Code
DASGASDOM.Text = "Not In Range"
DASGASDOM.TextColor3 = Color3.fromRGB(255, 255, 255)
DASGASDOM.TextSize = 14.000

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(252, 3, 65)
Frame_2.Position = UDim2.new(0, 0, 0.491228074, 0)
Frame_2.Size = UDim2.new(0, 330, 0, 1)

-- Scripts:

local function OQWZAZ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(OQWZAZ_fake_script)()
