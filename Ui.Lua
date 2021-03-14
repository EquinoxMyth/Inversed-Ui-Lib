-- services
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new
-- additional
local utility = {}






local library = {}
-- themes
local objects = {}

themes = {
Background = Color3.fromRGB(45, 45, 45),
TextColor = Color3.fromRGB(255, 255, 255),
Glow = Color3.fromRGB(0, 0, 0), 
Accent = Color3.fromRGB(10, 10, 10), 
LightContrast = Color3.fromRGB(20, 20, 20), 
DarkContrast = Color3.fromRGB(14, 14, 14),  
	
}




function utility:Create(instance, properties, children)
    local object = Instance.new(instance)
    
    for i, v in pairs(properties or {}) do
        object[i] = v
        
        if typeof(v) == "Color3" then 
            local theme = utility:Find(themes, v)
            
            if theme then
                objects[theme] = objects[theme] or {}
                objects[theme][i] = objects[theme][i] or setmetatable({}, {_mode = "k"})
                
                table.insert(objects[theme][i], object)
            end
        end
    end
    
    for i, module in pairs(children or {}) do
        module.Parent = object
    end
    
    return object
end



function library.new(title)
		local container = utility:Create("ScreenGui", {
			Name = title,
			Parent = game.CoreGui
		}, {
			utility:Create("ImageLabel", {
				Name = "Main",
				BackgroundTransparency = 1,
				Position = UDim2.new(0.25, 0, 0.052435593, 0),
				Size = UDim2.new(0, 511, 0, 428),
				Image = "rbxassetid://4641149554",
				ImageColor3 = themes.Background,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(4, 4, 296, 296)
			}, {
				utility:Create("ImageLabel", {
					Name = "Glow",
					BackgroundTransparency = 1,
					Position = UDim2.new(0, -15, 0, -15),
					Size = UDim2.new(1, 30, 1, 30),
					ZIndex = 0,
					Image = "rbxassetid://5028857084",
					ImageColor3 = themes.Glow,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(24, 24, 276, 276)
				}),
				utility:Create("ImageLabel", {
					Name = "Pages",
					BackgroundTransparency = 1,
					ClipsDescendants = true,
					Position = UDim2.new(0, 0, 0, 38),
					Size = UDim2.new(0, 126, 1, -38),
					ZIndex = 3,
					Image = "rbxassetid://5012534273",
					ImageColor3 = themes.DarkContrast,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(4, 4, 296, 296)
				}, {
					utility:Create("ScrollingFrame", {
						Name = "Pages_Container",
						Active = true,
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 0, 0, 10),
						Size = UDim2.new(1, 0, 1, -20),
						CanvasSize = UDim2.new(0, 0, 0, 314),
						ScrollBarThickness = 0
					}, {
						utility:Create("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 10)
						})
					})
				}),
				utility:Create("ImageLabel", {
					Name = "TopBar",
					BackgroundTransparency = 1,
					ClipsDescendants = true,
					Size = UDim2.new(1, 0, 0, 38),
					ZIndex = 5,
					Image = "rbxassetid://4595286933",
					ImageColor3 = themes.Accent,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(4, 4, 296, 296)
				}, {
					utility:Create("TextLabel", { -- title
						Name = "Title",
						AnchorPoint = Vector2.new(0, 0.5),
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 12, 0, 19),
						Size = UDim2.new(1, -46, 0, 16),
						ZIndex = 5,
						Font = Enum.Font.GothamBold,
						Text = title,
						TextColor3 = themes.TextColor,
						TextSize = 14,
						TextXAlignment = Enum.TextXAlignment.Left
					})
				})
			})
		})
		
		utility:InitializeKeybind()
		utility:DraggingEnabled(container.Main.TopBar, container.Main)
		
		return setmetatable({
			container = container,
			pagesContainer = container.Main.Pages.Pages_Container,
			pages = {}
		}, library)
	end






