local library = {}


themes = {
	Background = Color3.fromRGB(45, 45, 45)
	
	
}

function library.Create(uiname)
	text = uiname
	local Ui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Top = Instance.new("Frame")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")



	Ui.Name = "Ui"
	Ui.Parent = game:WaitForChild"CoreGui"
	Ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = uiname
	Main.Parent = Ui
	Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Main.Position = UDim2.new(0.256192952, 0, 0.364745021, 0)
	Main.Size = UDim2.new(0, 561, 0, 346)

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Top.Position = UDim2.new(-0.000491545186, 0, -0.00230698776, 0)
	Top.Size = UDim2.new(0, 561, 0, 42)

	Frame.Parent = Top
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, 0.857142866, 0)
	Frame.Size = UDim2.new(0, 561, 0, 6)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0, 0, -6, 0)
	TextLabel.Size = UDim2.new(0, 561, 0, 36)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = uiname
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
end






