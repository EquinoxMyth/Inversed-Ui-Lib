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



