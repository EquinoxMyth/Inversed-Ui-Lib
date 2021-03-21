---Init-----
local player = game.Players.LocalPlayer
-- services
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new
local mouse = player:GetMouse()
-------------------


-- additional
local utility = {}
local library = {}
------------------







function library.new(title)
  Name = title

local Ui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Sidebar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Sidebarbtn = Instance.new("ImageButton")
local Top = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")



Ui.Name = Name
Ui.Parent = game:WaitForChild"CoreGui"
Ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Ui
Main.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
Main.Position = UDim2.new(0.274198055, 0, 0.287139684, 0)
Main.Size = UDim2.new(0, 617, 0, 371)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main

Sidebar.Name = "Sidebar"
Sidebar.Parent = Main
Sidebar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Sidebar.Position = UDim2.new(0, 0, 0.0835579485, 0)
Sidebar.Size = UDim2.new(0, 0, 0, 340)
Sidebar.Visible = false

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Sidebar

Sidebarbtn.Name = "Sidebarbtn"
Sidebarbtn.Parent = Main
Sidebarbtn.BackgroundTransparency = 1.000
Sidebarbtn.LayoutOrder = 3
Sidebarbtn.Size = UDim2.new(0, 25, 0, 25)
Sidebarbtn.ZIndex = 2
Sidebarbtn.Image = "rbxassetid://3926307971"
Sidebarbtn.ImageColor3 = Color3.fromRGB(234, 234, 234)
Sidebarbtn.ImageRectOffset = Vector2.new(404, 44)
Sidebarbtn.ImageRectSize = Vector2.new(36, 36)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Top.Size = UDim2.new(0, 617, 0, 31)

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 617, 0, 31)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = Name
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

UICorner_3.Parent = Top


local function PMNLOC_fake_script() 
	local script = Instance.new('LocalScript', Sidebarbtn)

	local sidebar  = script.Parent.Parent.Sidebar
	toggled = false;
	
	function toggle()
		if toggled == false then
			toggled = true
			sidebar.Visible = true
			sidebar:TweenPosition(UDim2.new(0, 0,0.084, 0))
			sidebar:TweenSize(UDim2.new(0, 201,0, 340))
		else
			if toggled == true then
				toggled = false
				sidebar:TweenPosition(UDim2.new(0, 0,0.084, 0))
				sidebar:TweenSize(UDim2.new(0, 0,0, 340))
				wait(1)
				sidebar.Visible = false
				
			end
		end
	end
	
	
	script.Parent.MouseButton1Click:Connect(toggle)
end
coroutine.wrap(PMNLOC_fake_script)()
local function BHSKKW_fake_script() 
	local script = Instance.new('LocalScript', Main)

	local a=game:GetService("UserInputService")function dragify(b)dragToggle=nil;local c=0.50;dragInput=nil;dragStart=nil;local d=nil;function updateInput(e)local f=e.Position-dragStart;local g=UDim2.new(startPos.X.Scale,startPos.X.Offset+f.X,startPos.Y.Scale,startPos.Y.Offset+f.Y)game:GetService("TweenService"):Create(b,TweenInfo.new(0.30),{Position=g}):Play()end;b.InputBegan:Connect(function(e)if(e.UserInputType==Enum.UserInputType.MouseButton1 or e.UserInputType==Enum.UserInputType.Touch)and a:GetFocusedTextBox()==nil then dragToggle=true;dragStart=e.Position;startPos=b.Position;e.Changed:Connect(function()if e.UserInputState==Enum.UserInputState.End then dragToggle=false end end)end end)b.InputChanged:Connect(function(e)if e.UserInputType==Enum.UserInputType.MouseMovement or e.UserInputType==Enum.UserInputType.Touch then dragInput=e end end)game:GetService("UserInputService").InputChanged:Connect(function(e)if e==dragInput and dragToggle then updateInput(e)end end)end;dragify(script.Parent)
	
end
coroutine.wrap(BHSKKW_fake_script)()

end


function library.newButton(title)
    nameb = title
    local TextButton = Instance.new("TextButton")
    TextButton.Name = nameb
    TextButton.Parent = game.StarterGui.Ui.Main.Sidebar
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.Size = UDim2.new(0, 200, 0, 50)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000
    TextButton.Text = nameb
end
return library;










