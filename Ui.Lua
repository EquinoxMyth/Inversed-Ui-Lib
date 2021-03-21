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


function library.newWindow(UiName)
  text = UiName
  

local Ui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Div = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Sidebar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")



Ui.Name = text
Ui.Parent = game.CoreGui
Ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Ui
Main.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Main.Position = UDim2.new(0.109921649, 0, 0.31596452, 0)
Main.Size = UDim2.new(0, 629, 0, 378)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Top.Size = UDim2.new(0, 629, 0, 33)

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 629, 0, 31)
TextLabel.Text = text
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

UICorner.Parent = Top

Div.Name = "Div"
Div.Parent = Top
Div.BackgroundColor3 = Color3.fromRGB(92, 92, 92)
Div.Position = UDim2.new(0, 0, 0.818181813, 0)
Div.Size = UDim2.new(0, 629, 0, 6)

UICorner_2.Parent = Div

Sidebar.Name = "Sidebar"
Sidebar.Parent = Main
Sidebar.BackgroundColor3 = Color3.fromRGB(78, 78, 78)
Sidebar.Position = UDim2.new(0, 0, 0.0873015895, 0)
Sidebar.Size = UDim2.new(0, 200, 0, 345)

UICorner_3.Parent = Sidebar

UICorner_4.Parent = Main



local function UFSNZ_fake_script() 
	local script = Instance.new('LocalScript', Main)

	local a=game:GetService("UserInputService")function dragify(b)dragToggle=nil;local c=0.50;dragInput=nil;dragStart=nil;local d=nil;function updateInput(e)local f=e.Position-dragStart;local g=UDim2.new(startPos.X.Scale,startPos.X.Offset+f.X,startPos.Y.Scale,startPos.Y.Offset+f.Y)game:GetService("TweenService"):Create(b,TweenInfo.new(0.30),{Position=g}):Play()end;b.InputBegan:Connect(function(e)if(e.UserInputType==Enum.UserInputType.MouseButton1 or e.UserInputType==Enum.UserInputType.Touch)and a:GetFocusedTextBox()==nil then dragToggle=true;dragStart=e.Position;startPos=b.Position;e.Changed:Connect(function()if e.UserInputState==Enum.UserInputState.End then dragToggle=false end end)end end)b.InputChanged:Connect(function(e)if e.UserInputType==Enum.UserInputType.MouseMovement or e.UserInputType==Enum.UserInputType.Touch then dragInput=e end end)game:GetService("UserInputService").InputChanged:Connect(function(e)if e==dragInput and dragToggle then updateInput(e)end end)end;dragify(script.Parent)
	
end
coroutine.wrap(UFSNZ_fake_script)()

 end





return library;










