--[[
	ui-engine-v2
	version 1.3a
	by Krnl#4145
--]]



coroutine.wrap(function()
    for i = 1,5 do 
        game.StarterGui:SetCore("SendNotification", {
        Title = "SCRIPT IS LOADING!!!!!!!!!!!!",
        Text = "",
        Icon = "",
        Duration = 1,
        })
    end
    if is_synapse_function then
        messagebox("Script is currently loading! \n \n \nPlease wait!","Stellar's Script",0)
    end
end)()

workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed

old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 


local function get()
    for k,v in next,game:GetService('Workspace').MouseIgnore:GetDescendants() do
            if v:IsA('BasePart') and v.Name == 'Durability' then
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            elseif v:IsA('BasePart') and v.Name == 'Strength' then
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            elseif v:IsA('BasePart') and v.Name == 'Chakra' then
            wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame            
        end
    end
end

local str = 8
local chr = 8
local dur = 8 
local s = 0 
local c = 0 
local d = 0 

local function z_check()
    if game.PlaceId == 4042427666 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MiscModels["Kami's lookout"]["Meshes/KamiLook Out 3_Cylinder"].CFrame + Vector3.new(0,300,0)
        for k,v in next,game:GetService("Workspace").MouseIgnore:GetChildren() do
            if v.Name == 'Durability' then
                d = d+ 1
                if d == 8 then
                print(d,"D")
            end
            elseif v.Name == 'Strength' then
                s = s + 1 
                if s == 8 then
                print(s,"S")
                end
            elseif v.Name == 'Chakra' then
                c = c + 1 
                if c == 8 then
                print(c,"C")
                end
            end
        end
    elseif game.PlaceId == 5113678354 then
        --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MiscModels["Kami's lookout"]["Meshes/KamiLook Out 3_Cylinder"].CFrame + Vector3.new(0,300,0)
        for k,v in next,game:GetService("Workspace").MouseIgnore:GetChildren() do
            if v.Name == 'Durability' then
                d = d+ 1
                if d == 4 then
                print(d,"D")
            end
            elseif v.Name == 'Strength' then
                s = s + 1 
                if s == 4 then
                print(s,"S")
                end
            elseif v.Name == 'Chakra' then
                c = c + 1 
                if c == 4 then
                print(c,"C")
                end
            end
        end
    elseif game.PlaceId == 5113680396 then
        for k,v in next,game:GetService("Workspace").MouseIgnore:GetChildren() do
            if v.Name == 'Durability' then
                d = d+ 1
                if d == 4 then
                print(d,"D")
            end
            elseif v.Name == 'Strength' then
                s = s + 1 
                if s == 4 then
                print(s,"S")
                end
            elseif v.Name == 'Chakra' then
                c = c + 1 
                if c == 4 then
                print(c,"C")
                end
            end
        end
    end
end

--5113680396
for i = 1,4 do get() end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old

z_check()

if d==8 and s==8 and c==8 and game.PlaceId == 4042427666 then 
    warn('Loading')
elseif d ==4 and s == 4 and c ==  4 and game.PlaceId == 5113678354 then
    warn('Loading')
else
    d = 0 
    s = 0 
    c = 0 
    z_check()
    for i=1,8 do get() end
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
workspace.CurrentCamera.CameraType = Enum.CameraType.Custom

if d ~= 8 and s ~= 8 and c ~= 8 and game.PlaceId == 4042427666 then
    if is_synapse_function then
        messagebox("If you need assistance join my discord \n\nCode : EYmWmXE","Script Failed Initializing",0)
    end
    for i = 1,5 do 
        game.StarterGui:SetCore("SendNotification", {
        Title = "Script Failed Initializing",
        Text = "Executor possibly not supported \n If you need assistance join my discord \n Code : EYmWmXE",
        Icon = "",
        Duration = 15,
        })
    end
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    do return end
elseif game.PlaceId == 5113678354 and d ~= 4 and s ~= 4 and c ~= 4 then
    if is_synapse_function then
        messagebox("If you need assistance join my discord \n\nCode : EYmWmXE","Script Failed Initializing",0)
    end
    for i = 1,5 do 
        game.StarterGui:SetCore("SendNotification", {
        Title = "Script Failed Initializing",
        Text = "Executor possibly not supported \n If you need assistance join my discord \n Code : EYmWmXE",
        Icon = "",
        Duration = 15,
        })
    end
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    do return end    
end 

	local ui_options  = {
		toggle_key  = Enum.KeyCode.P,
		use_synapse = false,
		Stat   = "Durability",
		Safety = 15,
		Noclip = true,
		Chikara = false,
		Zone = 100;
        Abilities = false;
        Special = "Stand",
		SpecOn  = false,
		Spin = false,
		cslot = "1",
		Keys = {
		[1] = "",
		[2] = "",
		[3] = "",
		[4] = "",
		[5] = "",
		}
	}

do
	local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
	if imgui then imgui:Destroy() end
end

local function noclip_tog()
    coroutine.wrap(function()
        loop3 =  game:GetService('RunService').Stepped:Connect(function()
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and ui_options.Noclip == true then
                for k,v in next,game.Players.LocalPlayer.Character:GetChildren() do
                    if v:IsA('BasePart') then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)()
end


local imgui = Instance.new("ScreenGui")
local Prefabs = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Window = Instance.new("ImageLabel")
local Resizer = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Toggle = Instance.new("ImageButton")
local Base = Instance.new("ImageLabel")
local Top = Instance.new("ImageLabel")
local Tabs = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabSelection = Instance.new("ImageLabel")
local TabButtons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("Frame")
local Tab = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
local TextBox_Roundify_4px = Instance.new("ImageLabel")
local Slider = Instance.new("ImageLabel")
local Title_2 = Instance.new("TextLabel")
local Indicator = Instance.new("ImageLabel")
local Value = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Circle = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Dropdown = Instance.new("TextButton")
local Indicator_2 = Instance.new("ImageLabel")
local Box = Instance.new("ImageButton")
local Objects = Instance.new("ScrollingFrame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextButton_Roundify_4px = Instance.new("ImageLabel")
local TabButton = Instance.new("TextButton")
local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")
local Folder = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local TextButton_Roundify_4px_3 = Instance.new("ImageLabel")
local Toggle_2 = Instance.new("ImageLabel")
local Objects_2 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local HorizontalAlignment = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local Console = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Source = Instance.new("TextBox")
local Comments = Instance.new("TextLabel")
local Globals = Instance.new("TextLabel")
local Keywords = Instance.new("TextLabel")
local RemoteHighlight = Instance.new("TextLabel")
local Strings = Instance.new("TextLabel")
local Tokens = Instance.new("TextLabel")
local Numbers = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local Lines = Instance.new("TextLabel")
local ColorPicker = Instance.new("ImageLabel")
local Palette = Instance.new("ImageLabel")
local Indicator_3 = Instance.new("ImageLabel")
local Sample = Instance.new("ImageLabel")
local Saturation = Instance.new("ImageLabel")
local Indicator_4 = Instance.new("Frame")
local Switch = Instance.new("TextButton")
local TextButton_Roundify_4px_4 = Instance.new("ImageLabel")
local Title_3 = Instance.new("TextLabel")
local Button_2 = Instance.new("TextButton")
local TextButton_Roundify_4px_5 = Instance.new("ImageLabel")
local DropdownButton = Instance.new("TextButton")
local Keybind = Instance.new("ImageLabel")
local Title_4 = Instance.new("TextLabel")
local Input = Instance.new("TextButton")
local Input_Roundify_4px = Instance.new("ImageLabel")
local Windows = Instance.new("Frame")

imgui.Name = "imgui"
imgui.Parent = game:GetService("CoreGui")

Prefabs.Name = "Prefabs"
Prefabs.Parent = imgui
Prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
Prefabs.Size = UDim2.new(0, 100, 0, 100)
Prefabs.Visible = false

Label.Name = "Label"
Label.Parent = Prefabs
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.Size = UDim2.new(0, 200, 0, 20)
Label.Font = Enum.Font.GothamSemibold
Label.Text = "Hello, world 123"
Label.TextColor3 = Color3.new(1, 1, 1)
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left

Window.Name = "Window"
Window.Parent = Prefabs
Window.Active = true
Window.BackgroundColor3 = Color3.new(1, 1, 1)
Window.BackgroundTransparency = 1
Window.ClipsDescendants = true
Window.Position = UDim2.new(0, 0, 0, -55)
Window.Selectable = true
Window.Size = UDim2.new(0, 200, 0, 200)
Window.Image = "rbxassetid://2851926732"
Window.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Window.ScaleType = Enum.ScaleType.Slice
Window.SliceCenter = Rect.new(12, 12, 12, 12)

Resizer.Name = "Resizer"
Resizer.Parent = Window
Resizer.Active = true
Resizer.BackgroundColor3 = Color3.new(1, 1, 1)
Resizer.BackgroundTransparency = 0.95
Resizer.BorderSizePixel = 0
Resizer.Position = UDim2.new(1, -20, 1, -20)
Resizer.Size = UDim2.new(0, 20, 0, 20)

Bar.Name = "Bar"
Bar.Parent = Window
Bar.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0, 0, 0, 5)
Bar.Size = UDim2.new(1, 0, 0, 15)

Toggle.Name = "Toggle"
Toggle.Parent = Bar
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.Position = UDim2.new(0, 5, 0, -2)
Toggle.Rotation = 90
Toggle.Size = UDim2.new(0, 20, 0, 20)
Toggle.ZIndex = 2
Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Base.Name = "Base"
Base.Parent = Bar
Base.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0, 0, 0.800000012, 0)
Base.Size = UDim2.new(1, 0, 0, 10)
Base.Image = "rbxassetid://2851926732"
Base.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Base.ScaleType = Enum.ScaleType.Slice
Base.SliceCenter = Rect.new(12, 12, 12, 12)

Top.Name = "Top"
Top.Parent = Bar
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0, 0, 0, -5)
Top.Size = UDim2.new(1, 0, 0, 10)
Top.Image = "rbxassetid://2851926732"
Top.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(12, 12, 12, 12)

Tabs.Name = "Tabs"
Tabs.Parent = Window
Tabs.BackgroundColor3 = Color3.new(1, 1, 1)
Tabs.BackgroundTransparency = 1
Tabs.Position = UDim2.new(0, 15, 0, 60)
Tabs.Size = UDim2.new(1, -30, 1, -60)

Title.Name = "Title"
Title.Parent = Window
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 30, 0, 3)
Title.Size = UDim2.new(0, 200, 0, 20)
Title.Font = Enum.Font.GothamBold
Title.Text = "Gamer Time"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left

TabSelection.Name = "TabSelection"
TabSelection.Parent = Window
TabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
TabSelection.BackgroundTransparency = 1
TabSelection.Position = UDim2.new(0, 15, 0, 30)
TabSelection.Size = UDim2.new(1, -30, 0, 25)
TabSelection.Visible = false
TabSelection.Image = "rbxassetid://2851929490"
TabSelection.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
TabSelection.ScaleType = Enum.ScaleType.Slice
TabSelection.SliceCenter = Rect.new(4, 4, 4, 4)

TabButtons.Name = "TabButtons"
TabButtons.Parent = TabSelection
TabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
TabButtons.BackgroundTransparency = 1
TabButtons.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = TabButtons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

Frame.Parent = TabSelection
Frame.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(1, 0, 0, 2)

Tab.Name = "Tab"
Tab.Parent = Prefabs
Tab.BackgroundColor3 = Color3.new(1, 1, 1)
Tab.BackgroundTransparency = 1
Tab.Size = UDim2.new(1, 0, 1, 0)
Tab.Visible = false

UIListLayout_2.Parent = Tab
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

TextBox.Parent = Prefabs
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 0, 20)
TextBox.ZIndex = 2
TextBox.Font = Enum.Font.GothamSemibold
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.PlaceholderText = "Input Text"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextBox.TextSize = 14

TextBox_Roundify_4px.Name = "TextBox_Roundify_4px"
TextBox_Roundify_4px.Parent = TextBox
TextBox_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox_Roundify_4px.BackgroundTransparency = 1
TextBox_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextBox_Roundify_4px.Image = "rbxassetid://2851929490"
TextBox_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextBox_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextBox_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Slider.Name = "Slider"
Slider.Parent = Prefabs
Slider.BackgroundColor3 = Color3.new(1, 1, 1)
Slider.BackgroundTransparency = 1
Slider.Position = UDim2.new(0, 0, 0.178571433, 0)
Slider.Size = UDim2.new(1, 0, 0, 20)
Slider.Image = "rbxassetid://2851929490"
Slider.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(4, 4, 4, 4)

Title_2.Name = "Title"
Title_2.Parent = Slider
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.Position = UDim2.new(0.5, 0, 0.5, -10)
Title_2.Size = UDim2.new(0, 0, 0, 20)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.GothamBold
Title_2.Text = "Slider"
Title_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_2.TextSize = 14

Indicator.Name = "Indicator"
Indicator.Parent = Slider
Indicator.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator.BackgroundTransparency = 1
Indicator.Size = UDim2.new(0, 0, 0, 20)
Indicator.Image = "rbxassetid://2851929490"
Indicator.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
Indicator.ScaleType = Enum.ScaleType.Slice
Indicator.SliceCenter = Rect.new(4, 4, 4, 4)

Value.Name = "Value"
Value.Parent = Slider
Value.BackgroundColor3 = Color3.new(1, 1, 1)
Value.BackgroundTransparency = 1
Value.Position = UDim2.new(1, -55, 0.5, -10)
Value.Size = UDim2.new(0, 50, 0, 20)
Value.Font = Enum.Font.GothamBold
Value.Text = "0%"
Value.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Value.TextSize = 14

TextLabel.Parent = Slider
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(1, -20, -0.75, 0)
TextLabel.Size = UDim2.new(0, 26, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "]"
TextLabel.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel.TextSize = 14

TextLabel_2.Parent = Slider
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(1, -65, -0.75, 0)
TextLabel_2.Size = UDim2.new(0, 26, 0, 50)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "["
TextLabel_2.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel_2.TextSize = 14

Circle.Name = "Circle"
Circle.Parent = Prefabs
Circle.BackgroundColor3 = Color3.new(1, 1, 1)
Circle.BackgroundTransparency = 1
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.5

UIListLayout_3.Parent = Prefabs
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 20)

Dropdown.Name = "Dropdown"
Dropdown.Parent = Prefabs
Dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
Dropdown.BackgroundTransparency = 1
Dropdown.BorderSizePixel = 0
Dropdown.Position = UDim2.new(-0.055555556, 0, 0.0833333284, 0)
Dropdown.Size = UDim2.new(0, 200, 0, 20)
Dropdown.ZIndex = 2
Dropdown.Font = Enum.Font.GothamBold
Dropdown.Text = "      Dropdown"
Dropdown.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Dropdown.TextSize = 14
Dropdown.TextXAlignment = Enum.TextXAlignment.Left

Indicator_2.Name = "Indicator"
Indicator_2.Parent = Dropdown
Indicator_2.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_2.BackgroundTransparency = 1
Indicator_2.Position = UDim2.new(0.899999976, -10, 0.100000001, 0)
Indicator_2.Rotation = -90
Indicator_2.Size = UDim2.new(0, 15, 0, 15)
Indicator_2.ZIndex = 2
Indicator_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"

Box.Name = "Box"
Box.Parent = Dropdown
Box.BackgroundColor3 = Color3.new(1, 1, 1)
Box.BackgroundTransparency = 1
Box.Position = UDim2.new(0, 0, 0, 25)
Box.Size = UDim2.new(1, 0, 0, 150)
Box.ZIndex = 3
Box.Image = "rbxassetid://2851929490"
Box.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Box.ScaleType = Enum.ScaleType.Slice
Box.SliceCenter = Rect.new(4, 4, 4, 4)

Objects.Name = "Objects"
Objects.Parent = Box
Objects.BackgroundColor3 = Color3.new(1, 1, 1)
Objects.BackgroundTransparency = 1
Objects.BorderSizePixel = 0
Objects.Size = UDim2.new(1, 0, 1, 0)
Objects.ZIndex = 3
Objects.CanvasSize = UDim2.new(0, 0, 0, 0)
Objects.ScrollBarThickness = 8

UIListLayout_4.Parent = Objects
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px.Parent = Dropdown
TextButton_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px.BackgroundTransparency = 1
TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

TabButton.Name = "TabButton"
TabButton.Parent = Prefabs
TabButton.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TabButton.BackgroundTransparency = 1
TabButton.BorderSizePixel = 0
TabButton.Position = UDim2.new(0.185185179, 0, 0, 0)
TabButton.Size = UDim2.new(0, 71, 0, 20)
TabButton.ZIndex = 2
TabButton.Font = Enum.Font.GothamSemibold
TabButton.Text = "Test tab"
TabButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TabButton.TextSize = 14

TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_2.Parent = TabButton
TextButton_Roundify_4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_2.BackgroundTransparency = 1
TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_2.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_2.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_2.SliceCenter = Rect.new(4, 4, 4, 4)

Folder.Name = "Folder"
Folder.Parent = Prefabs
Folder.BackgroundColor3 = Color3.new(1, 1, 1)
Folder.BackgroundTransparency = 1
Folder.Position = UDim2.new(0, 0, 0, 50)
Folder.Size = UDim2.new(1, 0, 0, 20)
Folder.Image = "rbxassetid://2851929490"
Folder.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
Folder.ScaleType = Enum.ScaleType.Slice
Folder.SliceCenter = Rect.new(4, 4, 4, 4)

Button.Name = "Button"
Button.Parent = Folder
Button.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button.BackgroundTransparency = 1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 0, 20)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamSemibold
Button.Text = "      Folder"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 14
Button.TextXAlignment = Enum.TextXAlignment.Left

TextButton_Roundify_4px_3.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_3.Parent = Button
TextButton_Roundify_4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_3.BackgroundTransparency = 1
TextButton_Roundify_4px_3.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_3.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_3.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_3.SliceCenter = Rect.new(4, 4, 4, 4)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Button
Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_2.BackgroundTransparency = 1
Toggle_2.Position = UDim2.new(0, 5, 0, 0)
Toggle_2.Size = UDim2.new(0, 20, 0, 20)
Toggle_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Objects_2.Name = "Objects"
Objects_2.Parent = Folder
Objects_2.BackgroundColor3 = Color3.new(1, 1, 1)
Objects_2.BackgroundTransparency = 1
Objects_2.Position = UDim2.new(0, 10, 0, 25)
Objects_2.Size = UDim2.new(1, -10, 1, -25)
Objects_2.Visible = false

UIListLayout_5.Parent = Objects_2
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 5)

HorizontalAlignment.Name = "HorizontalAlignment"
HorizontalAlignment.Parent = Prefabs
HorizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
HorizontalAlignment.BackgroundTransparency = 1
HorizontalAlignment.Size = UDim2.new(1, 0, 0, 20)

UIListLayout_6.Parent = HorizontalAlignment
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 5)

Console.Name = "Console"
Console.Parent = Prefabs
Console.BackgroundColor3 = Color3.new(1, 1, 1)
Console.BackgroundTransparency = 1
Console.Size = UDim2.new(1, 0, 0, 200)
Console.Image = "rbxassetid://2851928141"
Console.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
Console.ScaleType = Enum.ScaleType.Slice
Console.SliceCenter = Rect.new(8, 8, 8, 8)

ScrollingFrame.Parent = Console
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 1)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 4

Source.Name = "Source"
Source.Parent = ScrollingFrame
Source.BackgroundColor3 = Color3.new(1, 1, 1)
Source.BackgroundTransparency = 1
Source.Position = UDim2.new(0, 40, 0, 0)
Source.Size = UDim2.new(1, -40, 0, 10000)
Source.ZIndex = 3
Source.ClearTextOnFocus = false
Source.Font = Enum.Font.Code
Source.MultiLine = true
Source.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
Source.Text = ""
Source.TextColor3 = Color3.new(1, 1, 1)
Source.TextSize = 15
Source.TextStrokeColor3 = Color3.new(1, 1, 1)
Source.TextWrapped = true
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Comments.Name = "Comments"
Comments.Parent = Source
Comments.BackgroundColor3 = Color3.new(1, 1, 1)
Comments.BackgroundTransparency = 1
Comments.Size = UDim2.new(1, 0, 1, 0)
Comments.ZIndex = 5
Comments.Font = Enum.Font.Code
Comments.Text = ""
Comments.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
Comments.TextSize = 15
Comments.TextXAlignment = Enum.TextXAlignment.Left
Comments.TextYAlignment = Enum.TextYAlignment.Top

Globals.Name = "Globals"
Globals.Parent = Source
Globals.BackgroundColor3 = Color3.new(1, 1, 1)
Globals.BackgroundTransparency = 1
Globals.Size = UDim2.new(1, 0, 1, 0)
Globals.ZIndex = 5
Globals.Font = Enum.Font.Code
Globals.Text = ""
Globals.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
Globals.TextSize = 15
Globals.TextXAlignment = Enum.TextXAlignment.Left
Globals.TextYAlignment = Enum.TextYAlignment.Top

Keywords.Name = "Keywords"
Keywords.Parent = Source
Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
Keywords.BackgroundTransparency = 1
Keywords.Size = UDim2.new(1, 0, 1, 0)
Keywords.ZIndex = 5
Keywords.Font = Enum.Font.Code
Keywords.Text = ""
Keywords.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
Keywords.TextSize = 15
Keywords.TextXAlignment = Enum.TextXAlignment.Left
Keywords.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight.Name = "RemoteHighlight"
RemoteHighlight.Parent = Source
RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteHighlight.BackgroundTransparency = 1
RemoteHighlight.Size = UDim2.new(1, 0, 1, 0)
RemoteHighlight.ZIndex = 5
RemoteHighlight.Font = Enum.Font.Code
RemoteHighlight.Text = ""
RemoteHighlight.TextColor3 = Color3.new(0, 0.568627, 1)
RemoteHighlight.TextSize = 15
RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight.TextYAlignment = Enum.TextYAlignment.Top

Strings.Name = "Strings"
Strings.Parent = Source
Strings.BackgroundColor3 = Color3.new(1, 1, 1)
Strings.BackgroundTransparency = 1
Strings.Size = UDim2.new(1, 0, 1, 0)
Strings.ZIndex = 5
Strings.Font = Enum.Font.Code
Strings.Text = ""
Strings.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
Strings.TextSize = 15
Strings.TextXAlignment = Enum.TextXAlignment.Left
Strings.TextYAlignment = Enum.TextYAlignment.Top

Tokens.Name = "Tokens"
Tokens.Parent = Source
Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
Tokens.BackgroundTransparency = 1
Tokens.Size = UDim2.new(1, 0, 1, 0)
Tokens.ZIndex = 5
Tokens.Font = Enum.Font.Code
Tokens.Text = ""
Tokens.TextColor3 = Color3.new(1, 1, 1)
Tokens.TextSize = 15
Tokens.TextXAlignment = Enum.TextXAlignment.Left
Tokens.TextYAlignment = Enum.TextYAlignment.Top

Numbers.Name = "Numbers"
Numbers.Parent = Source
Numbers.BackgroundColor3 = Color3.new(1, 1, 1)
Numbers.BackgroundTransparency = 1
Numbers.Size = UDim2.new(1, 0, 1, 0)
Numbers.ZIndex = 4
Numbers.Font = Enum.Font.Code
Numbers.Text = ""
Numbers.TextColor3 = Color3.new(1, 0.776471, 0)
Numbers.TextSize = 15
Numbers.TextXAlignment = Enum.TextXAlignment.Left
Numbers.TextYAlignment = Enum.TextYAlignment.Top

Info.Name = "Info"
Info.Parent = Source
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 1
Info.Size = UDim2.new(1, 0, 1, 0)
Info.ZIndex = 5
Info.Font = Enum.Font.Code
Info.Text = ""
Info.TextColor3 = Color3.new(0, 0.635294, 1)
Info.TextSize = 15
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.TextYAlignment = Enum.TextYAlignment.Top

Lines.Name = "Lines"
Lines.Parent = ScrollingFrame
Lines.BackgroundColor3 = Color3.new(1, 1, 1)
Lines.BackgroundTransparency = 1
Lines.BorderSizePixel = 0
Lines.Size = UDim2.new(0, 40, 0, 10000)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1\n"
Lines.TextColor3 = Color3.new(1, 1, 1)
Lines.TextSize = 15
Lines.TextWrapped = true
Lines.TextYAlignment = Enum.TextYAlignment.Top

ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = Prefabs
ColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
ColorPicker.BackgroundTransparency = 1
ColorPicker.Size = UDim2.new(0, 180, 0, 110)
ColorPicker.Image = "rbxassetid://2851929490"
ColorPicker.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ColorPicker.ScaleType = Enum.ScaleType.Slice
ColorPicker.SliceCenter = Rect.new(4, 4, 4, 4)

Palette.Name = "Palette"
Palette.Parent = ColorPicker
Palette.BackgroundColor3 = Color3.new(1, 1, 1)
Palette.BackgroundTransparency = 1
Palette.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
Palette.Size = UDim2.new(0, 100, 0, 100)
Palette.Image = "rbxassetid://698052001"
Palette.ScaleType = Enum.ScaleType.Slice
Palette.SliceCenter = Rect.new(4, 4, 4, 4)

Indicator_3.Name = "Indicator"
Indicator_3.Parent = Palette
Indicator_3.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_3.BackgroundTransparency = 1
Indicator_3.Size = UDim2.new(0, 5, 0, 5)
Indicator_3.ZIndex = 2
Indicator_3.Image = "rbxassetid://2851926732"
Indicator_3.ImageColor3 = Color3.new(0, 0, 0)
Indicator_3.ScaleType = Enum.ScaleType.Slice
Indicator_3.SliceCenter = Rect.new(12, 12, 12, 12)

Sample.Name = "Sample"
Sample.Parent = ColorPicker
Sample.BackgroundColor3 = Color3.new(1, 1, 1)
Sample.BackgroundTransparency = 1
Sample.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
Sample.Size = UDim2.new(0, 25, 0, 25)
Sample.Image = "rbxassetid://2851929490"
Sample.ScaleType = Enum.ScaleType.Slice
Sample.SliceCenter = Rect.new(4, 4, 4, 4)

Saturation.Name = "Saturation"
Saturation.Parent = ColorPicker
Saturation.BackgroundColor3 = Color3.new(1, 1, 1)
Saturation.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
Saturation.Size = UDim2.new(0, 15, 0, 100)
Saturation.Image = "rbxassetid://3641079629"

Indicator_4.Name = "Indicator"
Indicator_4.Parent = Saturation
Indicator_4.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_4.BorderSizePixel = 0
Indicator_4.Size = UDim2.new(0, 20, 0, 2)
Indicator_4.ZIndex = 2

Switch.Name = "Switch"
Switch.Parent = Prefabs
Switch.BackgroundColor3 = Color3.new(1, 1, 1)
Switch.BackgroundTransparency = 1
Switch.BorderSizePixel = 0
Switch.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
Switch.Size = UDim2.new(0, 20, 0, 20)
Switch.ZIndex = 2
Switch.Font = Enum.Font.SourceSans
Switch.Text = ""
Switch.TextColor3 = Color3.new(1, 1, 1)
Switch.TextSize = 18

TextButton_Roundify_4px_4.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_4.Parent = Switch
TextButton_Roundify_4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_4.BackgroundTransparency = 1
TextButton_Roundify_4px_4.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_4.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_4.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_4.ImageTransparency = 0.5
TextButton_Roundify_4px_4.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_4.SliceCenter = Rect.new(4, 4, 4, 4)

Title_3.Name = "Title"
Title_3.Parent = Switch
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.Position = UDim2.new(1.20000005, 0, 0, 0)
Title_3.Size = UDim2.new(0, 20, 0, 20)
Title_3.Font = Enum.Font.GothamSemibold
Title_3.Text = "Switch"
Title_3.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_3.TextSize = 14
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Button_2.Name = "Button"
Button_2.Parent = Prefabs
Button_2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Button_2.BackgroundTransparency = 1
Button_2.BorderSizePixel = 0
Button_2.Size = UDim2.new(0, 91, 0, 20)
Button_2.ZIndex = 2
Button_2.Font = Enum.Font.GothamSemibold
Button_2.TextColor3 = Color3.new(1, 1, 1)
Button_2.TextSize = 14

TextButton_Roundify_4px_5.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_5.Parent = Button_2
TextButton_Roundify_4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_5.BackgroundTransparency = 1
TextButton_Roundify_4px_5.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_5.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_5.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton_Roundify_4px_5.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_5.SliceCenter = Rect.new(4, 4, 4, 4)

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = Prefabs
DropdownButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
DropdownButton.BorderSizePixel = 0
DropdownButton.Size = UDim2.new(1, 0, 0, 20)
DropdownButton.ZIndex = 3
DropdownButton.Font = Enum.Font.GothamBold
DropdownButton.Text = "      Button"
DropdownButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
DropdownButton.TextSize = 14
DropdownButton.TextXAlignment = Enum.TextXAlignment.Center

Keybind.Name = "Keybind"
Keybind.Parent = Prefabs
Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind.BackgroundTransparency = 1
Keybind.Size = UDim2.new(0, 200, 0, 20)
Keybind.Image = "rbxassetid://2851929490"
Keybind.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
Keybind.ScaleType = Enum.ScaleType.Slice
Keybind.SliceCenter = Rect.new(4, 4, 4, 4)

Title_4.Name = "Title"
Title_4.Parent = Keybind
Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
Title_4.BackgroundTransparency = 1
Title_4.Size = UDim2.new(0, 0, 1, 0)
Title_4.Font = Enum.Font.GothamBold
Title_4.Text = "Keybind"
Title_4.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Title_4.TextSize = 14
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Input.Name = "Input"
Input.Parent = Keybind
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.BackgroundTransparency = 1
Input.BorderSizePixel = 0
Input.Position = UDim2.new(1, -85, 0, 2)
Input.Size = UDim2.new(0, 80, 1, -4)
Input.ZIndex = 2
Input.Font = Enum.Font.GothamSemibold
Input.Text = "RShift"
Input.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Input.TextSize = 12
Input.TextWrapped = true

Input_Roundify_4px.Name = "Input_Roundify_4px"
Input_Roundify_4px.Parent = Input
Input_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
Input_Roundify_4px.BackgroundTransparency = 1
Input_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
Input_Roundify_4px.Image = "rbxassetid://2851929490"
Input_Roundify_4px.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
Input_Roundify_4px.ScaleType = Enum.ScaleType.Slice
Input_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

Windows.Name = "Windows"
Windows.Parent = imgui
Windows.BackgroundColor3 = Color3.new(1, 1, 1)
Windows.BackgroundTransparency = 1
Windows.Position = UDim2.new(0, 0, 0, -19)
Windows.Size = UDim2.new(1, 20, 1, -20)

--[[ Script ]]--
script.Parent = imgui

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RS = game:GetService("RunService")
local ps = game:GetService("Players")

local p = ps.LocalPlayer
local mouse = p:GetMouse()

local Prefabs = script.Parent:WaitForChild("Prefabs")
local Windows = script.Parent:FindFirstChild("Windows")

local checks = {
	["binding"] = false,
}

UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == ((typeof(ui_options.toggle_key) == "EnumItem") and ui_options.toggle_key or Enum.KeyCode.RightShift) then
		if script.Parent then
			if not checks.binding then
				script.Parent.Enabled = not script.Parent.Enabled
			end
		end
	end
end)

local function Resize(part, new, _delay)
	_delay = _delay or 0.5
	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween = TweenService:Create(part, tweenInfo, new)
	tween:Play()
end

local function rgbtohsv(r, g, b) -- idk who made this function, but thanks
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, v
	v = max

	local d = max - min
	if max == 0 then
		s = 0
	else
		s = d / max
	end

	if max == min then
		h = 0
	else
		if max == r then
			h = (g - b) / d
			if g < b then
				h = h + 6
			end
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end

	return h, s, v
end

local function hasprop(object, prop)
	local a, b = pcall(function()
		return object[tostring(prop)]
	end)
	if a then
		return b
	end
end

local function gNameLen(obj)
	return obj.TextBounds.X + 15
end

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
end

local function ripple(button, x, y)
	spawn(function()
		button.ClipsDescendants = true

		local circle = Prefabs:FindFirstChild("Circle"):Clone()

		circle.Parent = button
		circle.ZIndex = 1000

		local new_x = x - circle.AbsolutePosition.X
		local new_y = y - circle.AbsolutePosition.Y
		circle.Position = UDim2.new(0, new_x, 0, new_y)

		local size = 0
		if button.AbsoluteSize.X > button.AbsoluteSize.Y then
			 size = button.AbsoluteSize.X * 1.5
		elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
			 size = button.AbsoluteSize.Y * 1.5
		elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
			size = button.AbsoluteSize.X * 1.5
		end

		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Quad", 0.5, false, nil)
		Resize(circle, {ImageTransparency = 1}, 0.5)

		wait(0.5)
		circle:Destroy()
	end)
end

local windows = 0
local library = {}

local function format_windows()
	local ull = Prefabs:FindFirstChild("UIListLayout"):Clone()
	ull.Parent = Windows
	local data = {}

	for i,v in next, Windows:GetChildren() do
		if not (v:IsA("UIListLayout")) then
			data[v] = v.AbsolutePosition
		end
	end

	ull:Destroy()

	for i,v in next, data do
		i.Position = UDim2.new(0, v.X, 0, v.Y)
	end
end

function library:FormatWindows()
	format_windows()
end

function library:AddWindow(title, options)
	windows = windows + 1
	local dropdown_open = false
	title = tostring(title or "New Window")
	options = (typeof(options) == "table") and options or ui_options
	options.tween_time = 0.1

	local Window = Prefabs:FindFirstChild("Window"):Clone()
	Window.Parent = Windows
	Window.Position = UDim2.new(0, 0, 0, 0)
	Window:FindFirstChild("Title").Text = title
	Window.Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)
	Window.ZIndex = Window.ZIndex + (windows * 10)

	do -- Altering Window Color
		local Title = Window:FindFirstChild("Title")
		local Bar = Window:FindFirstChild("Bar")
		local Base = Bar:FindFirstChild("Base")
		local Top = Bar:FindFirstChild("Top")
		local SplitFrame = Window:FindFirstChild("TabSelection"):FindFirstChild("Frame")
		local Toggle = Bar:FindFirstChild("Toggle")

		spawn(function()
			while true do
				Bar.BackgroundColor3 = options.main_color
				Base.BackgroundColor3 = options.main_color
				Base.ImageColor3 = options.main_color
				Top.ImageColor3 = options.main_color
				SplitFrame.BackgroundColor3 = options.main_color

				RS.Heartbeat:Wait()
			end
		end)

	end

	local Resizer = Window:WaitForChild("Resizer")

	local window_data = {}
	Window.Draggable = true

	do -- Resize Window
		local oldIcon = mouse.Icon
		local Entered = false
		Resizer.MouseEnter:Connect(function()
			Window.Draggable = false
			if options.can_resize then
				oldIcon = mouse.Icon
				-- mouse.Icon = "http://www.roblox.com/asset?id=4745131330"
			end
			Entered = true
		end)

		Resizer.MouseLeave:Connect(function()
			Entered = false
			if options.can_resize then
				mouse.Icon = oldIcon
			end
			Window.Draggable = true
		end)

		local Held = false
		UIS.InputBegan:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = true

				spawn(function() -- Loop check
					if Entered and Resizer.Active and options.can_resize then
						while Held and Resizer.Active do

							local mouse_location = gMouse()
							local x = mouse_location.X - Window.AbsolutePosition.X
							local y = mouse_location.Y - Window.AbsolutePosition.Y

							--
							if x >= options.min_size.X and y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, x, 0, y)}, options.tween_time)
							elseif x >= options.min_size.X then
								Resize(Window, {Size = UDim2.new(0, x, 0, options.min_size.Y)}, options.tween_time)
							elseif y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, y)}, options.tween_time)
							else
								Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)}, options.tween_time)
							end

							RS.Heartbeat:Wait()
						end
					end
				end)
			end
		end)
		UIS.InputEnded:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = false
			end
		end)
	end

	do -- [Open / Close] Window
		local open_close = Window:FindFirstChild("Bar"):FindFirstChild("Toggle")
		local open = true
		local canopen = true

		local oldwindowdata = {}
		local oldy = Window.AbsoluteSize.Y
		open_close.MouseButton1Click:Connect(function()
			if canopen then
				canopen = false

				if open then
					-- Close

					oldwindowdata = {}
					for i,v in next, Window:FindFirstChild("Tabs"):GetChildren() do
						oldwindowdata[v] = v.Visible
						v.Visible = false
					end

					Resizer.Active = false

					oldy = Window.AbsoluteSize.Y
					Resize(open_close, {Rotation = 0}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, 26)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 1

				else
					-- Open

					for i,v in next, oldwindowdata do
						i.Visible = v
					end

					Resizer.Active = true

					Resize(open_close, {Rotation = 90}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, oldy)}, options.tween_time)
					open_close.Parent:FindFirstChild("Base").Transparency = 0

				end

				open = not open
				wait(options.tween_time)
				canopen = true

			end
		end)
	end

	do -- UI Elements
		local tabs = Window:FindFirstChild("Tabs")
		local tab_selection = Window:FindFirstChild("TabSelection")
		local tab_buttons = tab_selection:FindFirstChild("TabButtons")

		do -- Add Tab
			function window_data:AddTab(tab_name)
				local tab_data = {}
				tab_name = tostring(tab_name or "New Tab")
				tab_selection.Visible = true

				local new_button = Prefabs:FindFirstChild("TabButton"):Clone()
				new_button.Parent = tab_buttons
				new_button.Text = tab_name
				new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
				new_button.ZIndex = new_button.ZIndex + (windows * 10)
				new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)

				local new_tab = Prefabs:FindFirstChild("Tab"):Clone()
				new_tab.Parent = tabs
				new_tab.ZIndex = new_tab.ZIndex + (windows * 10)

				local function show()
					if dropdown_open then return end
					for i, v in next, tab_buttons:GetChildren() do
						if not (v:IsA("UIListLayout")) then
							v:GetChildren()[1].ImageColor3 = Color3.fromRGB(52, 53, 56)
							Resize(v, {Size = UDim2.new(0, v.AbsoluteSize.X, 0, 20)}, options.tween_time)
						end
					end
					for i, v in next, tabs:GetChildren() do
						v.Visible = false
					end

					Resize(new_button, {Size = UDim2.new(0, new_button.AbsoluteSize.X, 0, 25)}, options.tween_time)
					new_button:GetChildren()[1].ImageColor3 = Color3.fromRGB(73, 75, 79)
					new_tab.Visible = true
				end

				new_button.MouseButton1Click:Connect(function()
					show()
				end)

				function tab_data:Show()
					show()
				end

				do -- Tab Elements

					function tab_data:AddLabel(label_text) -- [Label]
						label_text = tostring(label_text or "New Label")

						local label = Prefabs:FindFirstChild("Label"):Clone()

						label.Parent = new_tab
						label.Text = label_text
						label.Size = UDim2.new(0, gNameLen(label), 0, 20)
						label.ZIndex = label.ZIndex + (windows * 10)

						return label
					end

					function tab_data:AddButton(button_text, callback) -- [Button]
						button_text = tostring(button_text or "New Button")
						callback = typeof(callback) == "function" and callback or function()end

						local button = Prefabs:FindFirstChild("Button"):Clone()

						button.Parent = new_tab
						button.Text = button_text
						button.Size = UDim2.new(0, gNameLen(button), 0, 20)
						button.ZIndex = button.ZIndex + (windows * 10)
						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

						spawn(function()
							while true do
								if button and button:GetChildren()[1] then
									button:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						button.MouseButton1Click:Connect(function()
							ripple(button, mouse.X, mouse.Y)
							pcall(callback)
						end)

						return button
					end

					function tab_data:AddSwitch(switch_text, callback) -- [Switch]
						local switch_data = {}

						switch_text = tostring(switch_text or "New Switch")
						callback = typeof(callback) == "function" and callback or function()end

						local switch = Prefabs:FindFirstChild("Switch"):Clone()

						switch.Parent = new_tab
						switch:FindFirstChild("Title").Text = switch_text

						switch:FindFirstChild("Title").ZIndex = switch:FindFirstChild("Title").ZIndex + (windows * 10)
						switch.ZIndex = switch.ZIndex + (windows * 10)
						switch:GetChildren()[1].ZIndex = switch:GetChildren()[1].ZIndex + (windows * 10)

						spawn(function()
							while true do
								if switch and switch:GetChildren()[1] then
									switch:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						local toggled = false
						switch.MouseButton1Click:Connect(function()
							toggled = not toggled
							switch.Text = toggled and utf8.char(10003) or ""
							pcall(callback, toggled)
						end)

						function switch_data:Set(bool)
							toggled = (typeof(bool) == "boolean") and bool or false
							switch.Text = toggled and utf8.char(10003) or ""
							pcall(callback,toggled)
						end

						return switch_data, switch
					end

					function tab_data:AddTextBox(textbox_text, callback, textbox_options)
						textbox_text = tostring(textbox_text or "New TextBox")
						callback = typeof(callback) == "function" and callback or function()end
						textbox_options = typeof(textbox_options) == "table" and textbox_options or {["clear"] = true}
						textbox_options = {
							["clear"] = ((textbox_options.clear) == true)
						}

						local textbox = Prefabs:FindFirstChild("TextBox"):Clone()

						textbox.Parent = new_tab
						textbox.PlaceholderText = textbox_text
						textbox.ZIndex = textbox.ZIndex + (windows * 10)
						textbox:GetChildren()[1].ZIndex = textbox:GetChildren()[1].ZIndex + (windows * 10)

						textbox.FocusLost:Connect(function(ep)
							if ep then
								if #textbox.Text > 0 then
									pcall(callback, textbox.Text)
									if textbox_options.clear then
										textbox.Text = ""
									end
								end
							end
						end)

						return textbox
					end

					function tab_data:AddSlider(slider_text, callback, slider_options)
						local slider_data = {}

						slider_text = tostring(slider_text or "New Slider")
						callback = typeof(callback) == "function" and callback or function()end
						slider_options = typeof(slider_options) == "table" and slider_options or {}
						slider_options = {
							["min"] = slider_options.min or 0,
							["max"] = slider_options.max or 100,
							["readonly"] = slider_options.readonly or false,
						}

						local slider = Prefabs:FindFirstChild("Slider"):Clone()

						slider.Parent = new_tab
						slider.ZIndex = slider.ZIndex + (windows * 10)

						local title = slider:FindFirstChild("Title")
						local indicator = slider:FindFirstChild("Indicator")
						local value = slider:FindFirstChild("Value")
						title.ZIndex = title.ZIndex + (windows * 10)
						indicator.ZIndex = indicator.ZIndex + (windows * 10)
						value.ZIndex = value.ZIndex + (windows * 10)

						title.Text = slider_text

						do -- Slider Math
							local Entered = false
							slider.MouseEnter:Connect(function()
								Entered = true
								Window.Draggable = false
							end)
							slider.MouseLeave:Connect(function()
								Entered = false
								Window.Draggable = true
							end)

							local Held = false
							UIS.InputBegan:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = true

									spawn(function() -- Loop check
										if Entered and not slider_options.readonly then
											while Held and (not dropdown_open) do
												local mouse_location = gMouse()
												local x = (slider.AbsoluteSize.X - (slider.AbsoluteSize.X - ((mouse_location.X - slider.AbsolutePosition.X)) + 1)) / slider.AbsoluteSize.X

												local min = 0
												local max = 1

												local size = min
												if x >= min and x <= max then
													size = x
												elseif x < min then
													size = min
												elseif x > max then
													size = max
												end

												Resize(indicator, {Size = UDim2.new(size or min, 0, 0, 20)}, options.tween_time)
												local p = math.floor((size or min) * 100)

												local maxv = slider_options.max
												local minv = slider_options.min
												local diff = maxv - minv

												local sel_value = math.floor(((diff / 100) * p) + minv)

												value.Text = tostring(sel_value)
												pcall(callback, sel_value)

												RS.Heartbeat:Wait()
											end
										end
									end)
								end
							end)
							UIS.InputEnded:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = false
								end
							end)

							function slider_data:Set(new_value)
								new_value = tonumber(new_value) or 0
								new_value = (((new_value >= 0 and new_value <= 100) and new_value) / 100)

								Resize(indicator, {Size = UDim2.new(new_value or 0, 0, 0, 20)}, options.tween_time)
								local p = math.floor((new_value or 0) * 100)

								local maxv = slider_options.max
								local minv = slider_options.min
								local diff = maxv - minv

								local sel_value = math.floor(((diff / 100) * p) + minv)

								value.Text = tostring(sel_value)
								pcall(callback, sel_value)
							end

							slider_data:Set(slider_options["min"])
						end

						return slider_data, slider
					end

					function tab_data:AddKeybind(keybind_name, callback, keybind_options)
						local keybind_data = {}

						keybind_name = tostring(keybind_name or "New Keybind")
						callback = typeof(callback) == "function" and callback or function()end
						keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
						keybind_options = {
							["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
						}

						local keybind = Prefabs:FindFirstChild("Keybind"):Clone()
						local input = keybind:FindFirstChild("Input")
						local title = keybind:FindFirstChild("Title")
						keybind.ZIndex = keybind.ZIndex + (windows * 10)
						input.ZIndex = input.ZIndex + (windows * 10)
						input:GetChildren()[1].ZIndex = input:GetChildren()[1].ZIndex + (windows * 10)
						title.ZIndex = title.ZIndex + (windows * 10)

						keybind.Parent = new_tab
						title.Text = "  " .. keybind_name
						keybind.Size = UDim2.new(0, gNameLen(title) + 80, 0, 20)

						local shortkeys = { -- thanks to stroketon for helping me out with this
				            RightControl = 'RightCtrl',
				            LeftControl = 'LeftCtrl',
				            LeftShift = 'LShift',
				            RightShift = 'RShift',
				            MouseButton1 = "Mouse1",
				            MouseButton2 = "Mouse2"
				        }

						local keybind = keybind_options.standard

						function keybind_data:SetKeybind(Keybind)
							local key = shortkeys[Keybind.Name] or Keybind.Name
							input.Text = key
							keybind = Keybind
						end

						UIS.InputBegan:Connect(function(a, b)
							if checks.binding then
								spawn(function()
									wait()
									checks.binding = false
								end)
								return
							end
							if a.KeyCode == keybind and not b then
								pcall(callback, keybind)
							end
						end)

						keybind_data:SetKeybind(keybind_options.standard)

						input.MouseButton1Click:Connect(function()
							if checks.binding then return end
							input.Text = "..."
							checks.binding = true
							local a, b = UIS.InputBegan:Wait()
							keybind_data:SetKeybind(a.KeyCode)
						end)

						return keybind_data, keybind
					end

					function tab_data:AddDropdown(dropdown_name, callback)
						local dropdown_data = {}
						dropdown_name = tostring(dropdown_name or "New Dropdown")
						callback = typeof(callback) == "function" and callback or function()end

						local dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
						local box = dropdown:FindFirstChild("Box")
						local objects = box:FindFirstChild("Objects")
						local indicator = dropdown:FindFirstChild("Indicator")
						dropdown.ZIndex = dropdown.ZIndex + (windows * 10)
						box.ZIndex = box.ZIndex + (windows * 10)
						objects.ZIndex = objects.ZIndex + (windows * 10)
						indicator.ZIndex = indicator.ZIndex + (windows * 10)
						dropdown:GetChildren()[3].ZIndex = dropdown:GetChildren()[3].ZIndex + (windows * 10)

						dropdown.Parent = new_tab
						dropdown.Text = "      " .. dropdown_name
						box.Size = UDim2.new(1, 0, 0, 0)

						local open = false
						dropdown.MouseButton1Click:Connect(function()
							open = not open

							local len = (#objects:GetChildren() - 1) * 20
							if #objects:GetChildren() - 1 >= 10 then
								len = 10 * 20
								objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
							end

							if open then -- Open
								if dropdown_open then return end
								dropdown_open = true
								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
								Resize(indicator, {Rotation = 90}, options.tween_time)
							else -- Close
								dropdown_open = false
								Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
								Resize(indicator, {Rotation = -90}, options.tween_time)
							end

						end)

						function dropdown_data:Add(n)
							local object_data = {}
							n = tostring(n or "New Object")

							local object = Prefabs:FindFirstChild("DropdownButton"):Clone()

							object.Parent = objects
							object.Text = n
							object.ZIndex = object.ZIndex + (windows * 10)

							object.MouseEnter:Connect(function()
								object.BackgroundColor3 = options.main_color
							end)
							object.MouseLeave:Connect(function()
								object.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
							end)

							if open then
								local len = (#objects:GetChildren() - 1) * 20
								if #objects:GetChildren() - 1 >= 10 then
									len = 10 * 20
									objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
								end
								Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
							end

							object.MouseButton1Click:Connect(function()
								if dropdown_open then
									dropdown.Text = "      [ " .. n .. " ]"
									dropdown_open = false
									open = false
									Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
									Resize(indicator, {Rotation = -90}, options.tween_time)
									pcall(callback, n)
								end
							end)

							function object_data:Remove()
								object:Destroy()
							end

							return object, object_data
						end

						return dropdown_data, dropdown
					end

					function tab_data:AddColorPicker(callback)
						local color_picker_data = {}
						callback = typeof(callback) == "function" and callback or function()end

						local color_picker = Prefabs:FindFirstChild("ColorPicker"):Clone()

						color_picker.Parent = new_tab
						color_picker.ZIndex = color_picker.ZIndex + (windows * 10)

						local palette = color_picker:FindFirstChild("Palette")
						local sample = color_picker:FindFirstChild("Sample")
						local saturation = color_picker:FindFirstChild("Saturation")
						palette.ZIndex = palette.ZIndex + (windows * 10)
						sample.ZIndex = sample.ZIndex + (windows * 10)
						saturation.ZIndex = saturation.ZIndex + (windows * 10)

						do -- Color Picker Math
							local h = 0
							local s = 1
							local v = 1

							local function update()
								local color = Color3.fromHSV(h, s, v)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
								pcall(callback, color)
							end

							do
								local color = Color3.fromHSV(h, s, v)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
							end

							local Entered1, Entered2 = false, false
							palette.MouseEnter:Connect(function()
								Window.Draggable = false
								Entered1 = true
							end)
							palette.MouseLeave:Connect(function()
								Window.Draggable = true
								Entered1 = false
							end)
							saturation.MouseEnter:Connect(function()
								Window.Draggable = false
								Entered2 = true
							end)
							saturation.MouseLeave:Connect(function()
								Window.Draggable = true
								Entered2 = false
							end)

							local palette_indicator = palette:FindFirstChild("Indicator")
							local saturation_indicator = saturation:FindFirstChild("Indicator")
							palette_indicator.ZIndex = palette_indicator.ZIndex + (windows * 10)
							saturation_indicator.ZIndex = saturation_indicator.ZIndex + (windows * 10)

							local Held = false
							UIS.InputBegan:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = true

									spawn(function() -- Loop check
										while Held and Entered1 and (not dropdown_open) do -- Palette
											local mouse_location = gMouse()

											local x = ((palette.AbsoluteSize.X - (mouse_location.X - palette.AbsolutePosition.X)) + 1)
											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)

											local color = Color3.fromHSV(x / 100, y / 100, 0)
											h = x / 100
											s = y / 100

											Resize(palette_indicator, {Position = UDim2.new(0, math.abs(x - 100) - (palette_indicator.AbsoluteSize.X / 2), 0, math.abs(y - 100) - (palette_indicator.AbsoluteSize.Y / 2))}, options.tween_time)

											update()
											RS.Heartbeat:Wait()
										end

										while Held and Entered2 and (not dropdown_open) do -- Saturation
											local mouse_location = gMouse()
											local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)
											v = y / 100

											Resize(saturation_indicator, {Position = UDim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)

											update()
											RS.Heartbeat:Wait()
										end
									end)
								end
							end)
							UIS.InputEnded:Connect(function(inputObject)
								if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
									Held = false
								end
							end)

							function color_picker_data:Set(color)
								color = typeof(color) == "Color3" and color or Color3.new(1, 1, 1)
								local h2, s2, v2 = rgbtohsv(color.r * 255, color.g * 255, color.b * 255)
								sample.ImageColor3 = color
								saturation.ImageColor3 = Color3.fromHSV(h2, 1, 1)
								pcall(callback, color)
							end
						end

						return color_picker_data, color_picker
					end

					function tab_data:AddConsole(console_options)
						local console_data = {}

						console_options = typeof(console_options) == "table" and console_options or {["readonly"] = true,["full"] = false,}
						console_options = {
							["y"] = tonumber(console_options.y) or 200,
							["source"] = console_options.source or "Logs",
							["readonly"] = ((console_options.readonly) == true),
							["full"] = ((console_options.full) == true),
						}

						local console = Prefabs:FindFirstChild("Console"):Clone()

						console.Parent = new_tab
						console.ZIndex = console.ZIndex + (windows * 10)
						console.Size = UDim2.new(1, 0, console_options.full and 1 or 0, console_options.y)

						local sf = console:GetChildren()[1]
						local Source = sf:FindFirstChild("Source")
						local Lines = sf:FindFirstChild("Lines")
						Source.ZIndex = Source.ZIndex + (windows * 10)
						Lines.ZIndex = Lines.ZIndex + (windows * 10)

						Source.TextEditable = not console_options.readonly

						do -- Syntax Zindex
							for i,v in next, Source:GetChildren() do
								v.ZIndex = v.ZIndex + (windows * 10) + 1
							end
						end
						Source.Comments.ZIndex = Source.Comments.ZIndex + 1

						do -- Highlighting (thanks to whoever made this)
							local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
							local global_env = {"getrawmetatable", "newcclosure", "islclosure", "setclipboard", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16", "load", "fire", "Fire"}

							local Highlight = function(string, keywords)
							    local K = {}
							    local S = string
							    local Token =
							    {
							        ["="] = true,
							        ["."] = true,
							        [","] = true,
							        ["("] = true,
							        [")"] = true,
							        ["["] = true,
							        ["]"] = true,
							        ["{"] = true,
							        ["}"] = true,
							        [":"] = true,
							        ["*"] = true,
							        ["/"] = true,
							        ["+"] = true,
							        ["-"] = true,
							        ["%"] = true,
									[";"] = true,
									["~"] = true
							    }
							    for i, v in pairs(keywords) do
							        K[v] = true
							    end
							    S = S:gsub(".", function(c)
							        if Token[c] ~= nil then
							            return "\32"
							        else
							            return c
							        end
							    end)
							    S = S:gsub("%S+", function(c)
							        if K[c] ~= nil then
							            return c
							        else
							            return (" "):rep(#c)
							        end
							    end)

							    return S
							end

							local hTokens = function(string)
							    local Token =
							    {
							        ["="] = true,
							        ["."] = true,
							        [","] = true,
							        ["("] = true,
							        [")"] = true,
							        ["["] = true,
							        ["]"] = true,
							        ["{"] = true,
							        ["}"] = true,
							        [":"] = true,
							        ["*"] = true,
							        ["/"] = true,
							        ["+"] = true,
							        ["-"] = true,
							        ["%"] = true,
									[";"] = true,
									["~"] = true
							    }
							    local A = ""
							    string:gsub(".", function(c)
							        if Token[c] ~= nil then
							            A = A .. c
							        elseif c == "\n" then
							            A = A .. "\n"
									elseif c == "\t" then
										A = A .. "\t"
							        else
							            A = A .. "\32"
							        end
							    end)

							    return A
							end

							local strings = function(string)
							    local highlight = ""
							    local quote = false
							    string:gsub(".", function(c)
							        if quote == false and c == "\34" then
							            quote = true
							        elseif quote == true and c == "\34" then
							            quote = false
							        end
							        if quote == false and c == "\34" then
							            highlight = highlight .. "\34"
							        elseif c == "\n" then
							            highlight = highlight .. "\n"
									elseif c == "\t" then
									    highlight = highlight .. "\t"
							        elseif quote == true then
							            highlight = highlight .. c
							        elseif quote == false then
							            highlight = highlight .. "\32"
							        end
							    end)

							    return highlight
							end

							local info = function(string)
							    local highlight = ""
							    local quote = false
							    string:gsub(".", function(c)
							        if quote == false and c == "[" then
							            quote = true
							        elseif quote == true and c == "]" then
							            quote = false
							        end
							        if quote == false and c == "\]" then
							            highlight = highlight .. "\]"
							        elseif c == "\n" then
							            highlight = highlight .. "\n"
									elseif c == "\t" then
									    highlight = highlight .. "\t"
							        elseif quote == true then
							            highlight = highlight .. c
							        elseif quote == false then
							            highlight = highlight .. "\32"
							        end
							    end)

							    return highlight
							end

							local comments = function(string)
							    local ret = ""
							    string:gsub("[^\r\n]+", function(c)
							        local comm = false
							        local i = 0
							        c:gsub(".", function(n)
							            i = i + 1
							            if c:sub(i, i + 1) == "--" then
							                comm = true
							            end
							            if comm == true then
							                ret = ret .. n
							            else
							                ret = ret .. "\32"
							            end
							        end)
							        ret = ret
							    end)

							    return ret
							end

							local numbers = function(string)
							    local A = ""
							    string:gsub(".", function(c)
							        if tonumber(c) ~= nil then
							            A = A .. c
							        elseif c == "\n" then
							            A = A .. "\n"
									elseif c == "\t" then
										A = A .. "\t"
							        else
							            A = A .. "\32"
							        end
							    end)

							    return A
							end

							local highlight_lua = function(type)
								if type == "Text" then
									Source.Text = Source.Text:gsub("\13", "")
									Source.Text = Source.Text:gsub("\t", "      ")
									local s = Source.Text

									Source.Keywords.Text = Highlight(s, lua_keywords)
									Source.Globals.Text = Highlight(s, global_env)
									Source.RemoteHighlight.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
									Source.Tokens.Text = hTokens(s)
									Source.Numbers.Text = numbers(s)
									Source.Strings.Text = strings(s)
									Source.Comments.Text = comments(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									Lines.Text = ""
									for i = 1, lin do
										Lines.Text = Lines.Text .. i .. "\n"
									end

									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
								end
							end
							local highlight_logs = function(type)
								if type == "Text" then
									Source.Text = Source.Text:gsub("\13", "")
									Source.Text = Source.Text:gsub("\t", "      ")
									local s = Source.Text

									Source.Info.Text = info(s)

									local lin = 1
									s:gsub("\n", function()
										lin = lin + 1
									end)

									sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
								end
							end

							if console_options.source == "Lua" then
								highlight_lua("Text")
								Source.Changed:Connect(highlight_lua)
							elseif console_options.source == "Logs" then
								Lines.Visible = false

								highlight_logs("Text")
								Source.Changed:Connect(highlight_logs)
							end

							function console_data:Set(code)
								Source.Text = tostring(code)
							end

							function console_data:Get()
								return Source.Text
							end

							function console_data:Log(msg)
								Source.Text = Source.Text .. "[*] " .. tostring(msg) .. "\n"
							end

						end

						return console_data, console
					end

					function tab_data:AddHorizontalAlignment()
						local ha_data = {}

						local ha = Prefabs:FindFirstChild("HorizontalAlignment"):Clone()
						ha.Parent = new_tab

						function ha_data:AddButton(...)
							local data, object
							local ret = {tab_data:AddButton(...)}
							if typeof(ret[1]) == "table" then
								data = ret[1]
								object = ret[2]
								object.Parent = ha
								return data, object
							else
								object = ret[1]
								object.Parent = ha
								return object
							end
						end

						return ha_data, ha
					end

					function tab_data:AddFolder(folder_name) -- [Folder]
						local folder_data = {}

						folder_name = tostring(folder_name or "New Folder")

						local folder = Prefabs:FindFirstChild("Folder"):Clone()
						local button = folder:FindFirstChild("Button")
						local objects = folder:FindFirstChild("Objects")
						local toggle = button:FindFirstChild("Toggle")
						folder.ZIndex = folder.ZIndex + (windows * 10)
						button.ZIndex = button.ZIndex + (windows * 10)
						objects.ZIndex = objects.ZIndex + (windows * 10)
						toggle.ZIndex = toggle.ZIndex + (windows * 10)
						button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

						folder.Parent = new_tab
						button.Text = "      " .. folder_name

						spawn(function()
							while true do
								if button and button:GetChildren()[1] then
									button:GetChildren()[1].ImageColor3 = options.main_color
								end
								RS.Heartbeat:Wait()
							end
						end)

						local function gFolderLen()
							local n = 25
							for i,v in next, objects:GetChildren() do
								if not (v:IsA("UIListLayout")) then
									n = n + v.AbsoluteSize.Y + 5
								end
							end
							return n
						end

						local open = false
						button.MouseButton1Click:Connect(function()
							if open then -- Close
								Resize(toggle, {Rotation = 0}, options.tween_time)
								objects.Visible = false
							else -- Open
								Resize(toggle, {Rotation = 90}, options.tween_time)
								objects.Visible = true
							end

							open = not open
						end)

						spawn(function()
							while true do
								Resize(folder, {Size = UDim2.new(1, 0, 0, (open and gFolderLen() or 20))}, options.tween_time)
								wait()
							end
						end)

						for i,v in next, tab_data do
							folder_data[i] = function(...)
								local data, object
								local ret = {v(...)}
								if typeof(ret[1]) == "table" then
									data = ret[1]
									object = ret[2]
									object.Parent = objects
									return data, object
								else
									object = ret[1]
									object.Parent = objects
									return object
								end
							end
						end

						return folder_data, folder
					end

				end

				return tab_data, new_tab
			end
		end
	end

	do
		for i, v in next, Window:GetDescendants() do
			if hasprop(v, "ZIndex") then
				v.ZIndex = v.ZIndex + (windows * 10)
			end
		end
	end

	return window_data, Window
end

do -- Example UI
	local Window = library:AddWindow("Krnl#4145 SCRIPT - Anime Fighting Simulator Synapse Edition", {
		main_color = Color3.fromRGB(255, 74, 122),
		min_size = Vector2.new(400, 600),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = true,
	})
    local Tab = Window:AddTab("Main")
	local Tab3 = Window:AddTab("Boss")
	local Tab_s = Window:AddTab('Misc')
    local tab_z = Window:AddTab('Zones')
	local Tab2 = Window:AddTab("Settings")
	do -- Elements

local stats = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.MainClient.PlayerDataClient)

local total = function() 
    return stats.Data.Total
end

local stat_check = function(v) 
    for k,v in next,stats.Data.Stats[v] do
        if k == 1 then
            return v 
        end
    end
end


local player = game:GetService('Players').LocalPlayer
local source = player.PlayerGui.Main.MainClient.StatModuleClient
local keys   = player.PlayerGui.Main.Hotkeys


--require(source).SelectKey(keys[ui_options.Stat])

local parse = function(v)
    if v == 'Strength' then
        require(source).SelectKey(keys[1])
    elseif v == 'Durability' then
        if stat_check("Durability") < 100 then
            require(source).SelectKey(keys[2])  
        else
            require(source).SelectKey(keys[4])
        end
    elseif v == 'Chakra' then    
        require(source).SelectKey(keys[3])
    elseif v == 'Sword' then
        require(source).SelectKey(keys[4])
    end
end
require(source).ActivateKey()

local remote_fire = function()
    loop = game:GetService("RunService").RenderStepped:Connect(function()
        require(source).ActivateKey()
    end)
end

    


	    
		Tab:AddLabel("\nScript : stellar#4242 \nUi Lib : Singularity#5490")
        Tab:AddLabel(getgenv().str) -- when i obfuscated this broke so i had to do getgenv().str
        
sex = {}

function NearestValue(t, number)  -- found this function somewhere on stackoverflow ????
    local smallestSoFar, smallestIndex
    for i, y in ipairs(t) do
        if not smallestSoFar or (math.abs(number-y) < smallestSoFar) then
            smallestSoFar = math.abs(number-y)
            smallestIndex = i
        end
    end
    return smallestIndex, t[smallestIndex]
end


local function zone_check()
    --for k in next, sex do rawset(sex, k, nil) end
    for _,v in next,game:GetService("Workspace").MouseIgnore:GetDescendants() do
        if  v.Name == 'Requires' and v.Parent.Name == ui_options.Stat and v.Value <= stat_check(ui_options.Stat)  then
            table.insert(sex,v.Value)
        end
    end
    local d,zval    = NearestValue(sex,stat_check(ui_options.Stat))
    --if stat_check(ui_options.Stat) >= zval then
    if zval ~= nil then
        ui_options.Zone = zval
    elseif zval == nil and ui_options.Stat == 'Chakra' then
        ui_options.Zone = 500
    end
    --end
    for k in next, sex do rawset(sex, k, nil) end
end

		local Switch = Tab:AddSwitch("Auto", function(bool)
			if bool == true then
			parse(ui_options.Stat)
			remote_fire()
			zone_check()
			coroutine.wrap(function()
			    loop2 = game:GetService('RunService').Stepped:Connect(function()
			        if require(source).SelectedKey == nil then
			            parse(ui_options.Stat)
			        end
			        for k,v in next,game:GetService("Workspace").MouseIgnore:GetChildren() do
			            if v.Name == ui_options.Stat and v:FindFirstChild('Requires') and v.Requires.Value == ui_options.Zone and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
			                zone_check()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,ui_options.Safety,0)
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			            end
                    end
                end)
			end)()
        elseif  bool == false then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        loop:Disconnect()
        loop2:Disconnect()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
	end
end)
		
local train_switch = Tab:AddSwitch('Train',function(v)
		    if v == true then
		    parse(ui_options.Stat)
		    remote_fire()
		    else
		    loop:Disconnect()
		    end
end)

		
		
Tab:AddSwitch('Chikara', function(val)
        ui_options.Chikara = val    
        if val == true then

        while wait() do
            --coroutine.wrap(function()
                for k,v in next,game:GetService("Workspace").MouseIgnore:GetDescendants() do
                    if ui_options.Chikara == true and v.Name == 'ClickDetector' and v.Parent.Name == 'ClickBox' and v.Parent.Parent.Name == 'ChikaraCrate' then
                        fireclickdetector(v)
                        wait(1.5)
                    end
                end
            --end)()
            if ui_options.Chikara == false then
                break
            end
        end
    end
end)

 Tab:AddSwitch('Players',function(v)
    if v == true then
        loop4 = game:GetService('RunService').Stepped:Connect(function()
            for k,v in next,game.Players:GetChildren() do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    v.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position+(8.55)* player.Character.HumanoidRootPart.CFrame.lookVector + (-1)* player.Character.HumanoidRootPart.CFrame.upVector, player.Character.HumanoidRootPart.Position)
                end
            end
        end)
    elseif v == false then
        loop4:Disconnect()
    end
end)


		
		local noclip_switch = Tab:AddSwitch('Noclip',function(v)
		    if v == true then
		    ui_options.Noclip = v
		    noclip_tog()
		    else
		    ui_options.Noclip = v
		    loop3:Disconnect()
		    end
		end)
		
        --noclip_switch:Set(true)
        

        Tab:AddSwitch('Devil Fruit', function(voo)
        if voo == true then
            loop99 = game:GetService('RunService').Stepped:Connect(function()
                coroutine.wrap(function()
                    for k,v in next,game:GetService("Workspace").MiscModels:GetDescendants() do 
                        if v.Name == "Meshes/gum gum_Cube.002" then
                            player.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,2,0)
                        end
                    end
                end)()
            end)
        elseif voo == false then 
            loop99:Disconnect()
		end
		end)
		


		local keep = {"Boros"}


		local function sell_champ()
			for k,v in next,game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.Champions.Container.List:GetChildren() do 
				if v:FindFirstChild('Container') and not table.find(keep,v.Container.ChampionName.Text) then
					wait(.1)
					for z,s in next,getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.Champions.Container.List[v.Name].Container.View.MouseButton1Click) do
						s:Fire()
					end
					wait(.1)
					for i,o in next,getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.Champions.Container.Details.Sell.MouseButton1Click) do
						o:Fire()
					end
					wait(.1)
					for l,p in next,getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.Champions.Container.Details.Confirm.Yes.MouseButton1Click) do
						p.Function()
					end
				end
			end
		end
				
		local function buy_champ()
			fireclickdetector(game:GetService("Workspace").Shops.SaiyanPod.ClickBox.ClickDetector)
			wait()
			for k,v in next,getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.SpecialObtain.Container.Buy.MouseButton1Click) do
				v.Function()
			end
		end
		


		Tab_s:AddSwitch('Auto Spin',function(j)			
		selling = false
			if j == true then
				ui_options.Spin = true
				while wait(3.25) and ui_options.Spin == true do
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Category.Frames.Champions.Container.List:FindFirstChild('4') and selling == false then
						sell_champ()
						selling = true
					elseif require(game:GetService("Players").LocalPlayer.PlayerGui.Main.MainClient.PlayerDataClient).Data.Chikara >= 5000 then
						buy_champ()
						selling = false
					end
				end
			elseif j == false then
				ui_options.Spin = false
			end
		end)
		Tab_s:AddSwitch('Equip Champion',function(z)
			if z == true then
				game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer("SummonChamp",tonumber(ui_options.cslot))
				eventz = game.Players.LocalPlayer.CharacterAdded:Connect(function(v)
					if v then 
						wait(.75)
						game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction:InvokeServer("SummonChamp",tonumber(ui_options.cslot))
					end 
				end)
			elseif z == false then
				eventz:Disconnect()
			end
		end)

		local c_drop = Tab_s:AddDropdown("Champion To Equip",function(v)
			ui_options.cslot = v
		end)
		c_drop:Add("1")
		c_drop:Add("2")
		c_drop:Add("3")
		c_drop:Add("4")

		Tab_s:AddLabel("Champions To Keep")
		con_c = Tab_s:AddConsole({
			["y"] = 98,
			["readonly"] = true,
			["source"] = "Logs",
		})

		Tab_s:AddTextBox('Add More Champions To Keep',function(str)
			for k,v in next,game:GetService("ReplicatedStorage").RSPackage.Champions:GetChildren() do
				if string.lower(str) == string.lower(v.Name) and not table.find(keep,v.Name) then
					table.insert(keep,v.Name)
					for k,v in next,keep do       
						print(k,v)
					end

					con_c:Log("Saving: "..v.Name)
					return
				elseif string.lower(str) == string.lower(v.Name) and table.find(keep,v.Name) then
					for d,z in next,keep do       
						if z == v.Name then
							table.remove(keep,d)
						end
					end
					con_c:Log("Selling: "..v.Name)
					return
				end
			end
		end)

		for k,v in next,keep do            
			con_c:Log("Saving: "..v)
		end


		
		
		local Dropdown = Tab:AddDropdown("Stat Priority", function(object)
			ui_options.Stat = object
			parse(object)
			zone_check()
		end)
		
			Dropdown:Add("Strength")
			Dropdown:Add("Durability")
			Dropdown:Add("Chakra")
			Dropdown:Add("Sword")

        local slider_safety = Tab:AddSlider('Teleport Safety',function(val)
            ui_options.Safety = val
        end,{['min']=0,['max']=35})
        slider_safety:Set(0)
        ws=Tab:AddSlider('Walk Speed',function(v)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=v end,{['min']=16,['max']=500})
        js=Tab:AddSlider('Jump Power',function(v)game.Players.LocalPlayer.Character.Humanoid.JumpPower=v end,{['min']=50,['max']=500})
        ws:Set(0)
        js:Set(14)

		Tab2:AddKeybind("Hide UI", function(key)
		    ui_options.toggle_key = key
		end, { -- (options are optional)
			["standard"] = Enum.KeyCode.P -- Default: RightShift
		})
		
        Tab2:AddButton('Copy Code',function()setclipboard("https://discord.com/invite/EYmWmXE")end)
		Tab2:AddLabel('\n \nNeed Support? | Wanna Request Features?\nJoin my Discord\nCode : EYmWmXE')


		local Folder = Tab:AddFolder("Teleports") -- This can contain exactly the same as a Tab. You can have as many folders as you'd like to.
		Folder:AddLabel("Global Teleports")


		local syn_tog = Folder:AddSwitch('Use Synapse Functions',function(v)
		    ui_options.use_synapse = v
		end)
		if is_synapse_function then
		   syn_tog:Set(true)
		   ui_options.use_synapse = true
		end
		local Folder2 = Folder:AddFolder("Shops")
		for k,v in next,workspace.Shops:GetChildren() do
		    Folder2:AddButton(v.Name,function()
		    if ui_options.use_synapse == true then
		        fireclickdetector(v.ClickBox.ClickDetector)
		    else
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.ClickBox.CFrame + Vector3.new(0,5,0)
		    end
		end)
    end

        local Folder3 = Folder:AddFolder("Quests")
        for k,v in next,workspace.NPCs:GetChildren() do
        Folder3:AddButton(v.Name,function()
        if ui_options.use_synapse == true then
		    fireclickdetector(v.ClickBox.ClickDetector)
	        else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.ClickBox.CFrame + Vector3.new(0,5,0)
            end
        end)
	end
	
		tab_z:AddLabel('Training Zones')
        local Folder4 = tab_z:AddFolder('Strength')
        local duraf = tab_z:AddFolder('Durability')
        local chakf = tab_z:AddFolder('Chakra')
        for k,v in next,game:GetService("Workspace").MouseIgnore:GetChildren() do
            if  v.Name == 'Chakra' then
                chakf:AddButton(v.DisplayHolder.Display.Area.Text.." ["..v.DisplayHolder.Display.Requires.Text.."]",function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,10,0)
                end)
            end
        end
        for k,v in next,game:GetService("Workspace").MouseIgnore:GetChildren() do
            if v.Name == 'Durability' then
                duraf:AddButton(v.DisplayHolder.Display.Area.Text.." ["..v.DisplayHolder.Display.Requires.Text.."]",function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,10,0)
                end)
            end
        end

        for k,v in next,game:GetService("Workspace").MouseIgnore:GetChildren() do
            if v.Name == 'Strength' then
                Folder4:AddButton(v.DisplayHolder.Display.Area.Text.." ["..v.DisplayHolder.Display.Requires.Text.."]",function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,10,0)
                end)
            end
        end
        
        local Folder5 = Folder:AddFolder('Dimensions')
        for k,v in next,game:GetService("Workspace").DimensionPortal:GetChildren() do
            if v:FindFirstChild('PlaceID') then
            Folder5:AddButton(v.Name.. " ".."["..v.PlaceID.Value.."]",function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.ClickBox.CFrame
            end)
        end
        end

        local GeneralFunction = game:GetService("ReplicatedStorage").RSPackage.Events.GeneralFunction

        Tab3:AddLabel('Assign abilities to use against the boss [KEYBINDS]')






Tab3:AddSwitch('Attack Boss',function(v)
    Spawned = false
	remd = false
	if v == true then
		Switch:Set(false)
        loop6=game:GetService('RunService').Stepped:Connect(function()
            coroutine.wrap(function()
                for k,v in next,game:GetService("Workspace").BossArena:GetChildren() do
                    if v:FindFirstChild('HumanoidRootPart') then
                        local mob = v 
                        if remd == false and mob and mob:FindFirstChild('HumanoidRootPart') and mob.HumanoidRootPart:FindFirstChild('RootRigAttachment') and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            ui_options.Abilities = false
                            player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame 
                            mob.HumanoidRootPart:FindFirstChild('RootRigAttachment'):Destroy()
                            position = player.Character.HumanoidRootPart.Position
                            player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
                            humanoidrootpart = player.Character.HumanoidRootPart:clone()
                            player.Character.HumanoidRootPart:Destroy()
                            humanoidrootpart.Parent = player.Character
                            player.Character:MoveTo(position)
                            player.Character.Humanoid.Health = -90  

                            remd = true
                        end
                        if remd ==  true and not mob.HumanoidRootPart:FindFirstChild('RootRigAttachment')  and player.Character and player.Character:FindFirstChild('HumanoidRootPart') and player.Character:FindFirstChild('humanoidrootpart') == nil  then
                            ui_options.Abilities = true

                                player.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position-(10.55)* v.HumanoidRootPart.CFrame.lookVector + (0)* v.HumanoidRootPart.CFrame.upVector, v.HumanoidRootPart.Position)
                            if ui_options.Abilities == true then 
                                if ui_options.SpecOn == true then
                                    game.ReplicatedStorage.RSPackage.Events.GeneralEvent:FireServer('SpecialAction',{['Request'] = 'Power',['Key'] = 'Z'})
                                end
                                for k,v in next,ui_options.Keys do
                                    if v ~= "n" then
                                        wait()
                                        GeneralFunction:InvokeServer(
                                            "UseP",
                                            {
                                                ["External"] = {
                                                    ["MouseP"] = CFrame.new(0,0,0)
                                                },
                                                ["Key"] = v
                                            }
                                        )
                                    end
                                end
                                ui_options.Abilities = true 
                            end
                        end
                    elseif Spawned == true and mob == nil and tonumber(string.match(game:GetService("Workspace").BossArena.ClickBox.BillboardGui.Info.Timer.Text,"%d+")) >= 96 and player.Character and player.Character:FindFirstChild('Humanoid') then
                        Spawned = false
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0 
                    elseif v:FindFirstChild('HumanoidRootPart') == nil  and tonumber(string.match(game:GetService("Workspace").BossArena.ClickBox.BillboardGui.Info.Timer.Text,"%d+")) <= 5 and Spawned == false then
                        Spawned = true
                        fireclickdetector(game.Workspace.BossArena.ClickBox.ClickDetector)
                        remd = false
                        print(Spawned)
                    end
                end
            end)()
        end)
    end
    if v == false then loop6:Disconnect() end
end)


        Tab3:AddSwitch('Use Specials',function(val)
			if val == true then
				ui_options.SpecOn = false
				game.ReplicatedStorage.RSPackage.Events.GeneralFunction:InvokeServer('Summon',ui_options.Special)
					spec_c = game.Players.LocalPlayer.CharacterAdded:Connect(function(v)
					if v then
						wait(2)
						game.ReplicatedStorage.RSPackage.Events.GeneralFunction:InvokeServer('Summon',ui_options.Special)
					end
				end)
            elseif val == false then
				ui_options.SpecOn = false
				spec_c:Disconnect()
            end
        end)

        s_drop = Tab3:AddDropdown('Select Special',function(v)
            ui_options.Special = v
        end)

        s_drop:Add('Stand')
        s_drop:Add('Kagune')
        s_drop:Add('Fruit')
        s_drop:Add('Quirk')
        s_drop:Add('Grimoire')






        Tab3:AddSwitch('Use Abilities',function(val)
            if val == true then 
                ui_options.Abilities = true
            elseif val == false then
                ui_options.Abilities = false
            end
        end)
        Tab3:AddKeybind("Ability 1",
            function(key)
                if string.sub(tostring(key),-1) ~=ui_options.Keys[1] then
                    ui_options.Keys[1] = string.sub(tostring(key),-1) 
                else
                    return 
                end
            end, { 
			["standard"] = Enum.KeyCode.Unknown
		})
		
		Tab3:AddKeybind("Ability 2",
            function(key)
                if string.sub(tostring(key),-1) ~=ui_options.Keys[2] then
                    ui_options.Keys[2] = string.sub(tostring(key),-1) 
                else
                    return 
                end
            end, { 
			["standard"] = Enum.KeyCode.Unknown
		})
		
		Tab3:AddKeybind("Ability 3",
            function(key)
                if string.sub(tostring(key),-1) ~=ui_options.Keys[3] then
                    ui_options.Keys[3] = string.sub(tostring(key),-1) 
                else
                    return 
                end
            end, { 
			["standard"] = Enum.KeyCode.Unknown
		})
		
		Tab3:AddKeybind("Ability 4",
            function(key)
                if string.sub(tostring(key),-1) ~=ui_options.Keys[4] then
                    ui_options.Keys[4] = string.sub(tostring(key),-1) 
                else
                    return 
                end
            end, { 
			["standard"] = Enum.KeyCode.Unknown
		})

		Tab3:AddKeybind("Ability 5",
		function(key)
			if string.sub(tostring(key),-1) ~=ui_options.Keys[5] then
				ui_options.Keys[5] = string.sub(tostring(key),-1) 
			else
				return 
			end
		end, { 
		["standard"] = Enum.KeyCode.Unknown
	})
    Tab:Show()
	library:FormatWindows()
    end
end5,106661,125125,102520,117914,150853,100868,116094,121432,126722,100857,135017,170940,161739,173879,182482,146463,115900,149701,184118,185065,178848,188057,101940,183377,163912,188658,170671,146011,130135,99364,189651,176481,165640,112467,154580,174532,112841,173572,132228,174752,190760,122186,172454,112026,96091,188775,124041,145227,106455,171583,174161,154373,160476,189214,148316,186946,175581,189904,105574,113924,135627,120707,113072,101095,115831,188794,170812,127466,155748,156306,139164,187127,115937,134160,117155,165282,124944,111732,189282,151292,182192,172974,108322,177863,162625,125519,183216,174691,125499,173235,148890,190896,122078,119376,117108,164915,172250,109748,143702,126376,150239,107757,156471,127935,129801,177746,188599,116783,166011,117718,163422,137596,188120,139951,167159,143453,142699,168197,161310,191768,119030,121332,179269,96253,147207,123243,172369,135337,119512,121981,191720,136991,96289,123245,126861,103351,173734,164953,153218,130780,122362,139856,171734,113334,142345,99353,133336,168537,149688,101001,100598,101928,133550,105488,165299,172339,106317,163088,178144,158359,165216,174362,176300,110005,112995,106719,112970,171969,104428,142600,123655,113676,185332,142930,144913,149969,143695,188607,165669,170430,147817,101859,136044,158221,131745,124972,159400,149042,175705,133043,148398,115983,179938,148291,140753,118118,120893,144188,151559,157381,189087,166773,175494,144127,132673,126065,97771,100384,172113,118448,130268,102762,144835,167458,185365,175432,176651,192122,130417,187548,137127,109975,103714,159239,168108,137369,142244,104280,116437,165579,102886,146448,107505,132987,140808,103148,113291,149458,166487,139006,123120,119993,96158,96911,96923,167343,133736,111122,182291,188929,173262,180445,184910,177889,156036,124630,162410,153021,125019,102392,137823,117187,122557,191123,131605,124355,124624,130959,186999,102089,149579,190248,182147,163027,185903,183659,98695,157720,123043,106871,156059,120808,187192,163767,124565,158180,134665,166275,112446,181059,138668,166294,121009,178272,102791,134983,173280,162239,165157,109946,109140,107277,142788,156653,96609,147023,177079,151370,163675,149535,139010,114713,118969,101152,102057,142598,138125,144758,124477,105433,111783,108675,154249,139329,128707,191144,126973,103893,101192,130467,153738,116321,148474,97411,154930,156049,133955,117180,162054,141976,178255,155983,110724,134394,182459,172933,126615,172854,104665,124093,122451,187052,127931,187032,144490,162264,185416,186643,102163,136350,158286,116509,165494,104836,186551,114506,143667,159322,117670,134003,148022,190811,116755,124954,132072,111069,156685,149862,154173,169523,116412,135417,190704,146311,178385,132132,162722,127343,176862,121079,121756,140090,161887,150472,165076,167519,130281,190149,99401,119769,115895,173142,101660,144896,156756,162294,181206,185992,97629,151553,150659,147112,106242,159196,172354,151960,104992,146632,171402,135973,160078,129003,104183,97393,166948,149093,165575,155897,127624,157014,146966,142621,119367,145824,175584,191794,98699,114004,165459,134529,161547,104567,143711,177016,180526,177630,158780,175429,115592,122475,172315,100397,128783,158490,163397,109825,102280,144081,183882,142067,122166,112613,126501,98866,133290,170662,122621,158333,155074,96378,162440,105618,108987,179640,177350,180907,135687,112983,162197,130854,161298,145180,184108,165452,100232,163357,148784,187350,136988,108928,191358,152603,161467,149663,130843,139539,183668,157047,190625,110922,173662,161026,122754,179500,190640,112956,143530,151924,172072,96494,152135,128921,159888,119031,187246,157851,125133,122469,142225,165996,158161,161215,98865,154653,128979,165215,116386,147284,179430,97074,107126,108259,151299,96628,138773,149116,121547,188637,174629,143557,108147,103004,116747,142581,146814,126480,158910,168586,109514,165796,182721,132837,157394,177103,137791,188938,134140,150279,166205,159441,128389,147970,104718,160349,143031,147131,171782,125075,136783,122295,121059,120412,176584,130480,131908,121022,187797,188578,165800,139865,135657,147742,144212,155873,114455,144903,184668,172254,103159,126859,190624,116146,170252,166336,147925,175658,184628,176910,96719,151815,166109,136133,184560,138147,168897,153908,183982,122539,99862,99170,139657,131491,134597,104390,109128,96891,168213,121788,141399,106311,117777,118566,123847,153255,151713,147980,171398,144912,176245,99354,184546,120171,103757,156467,123148,150839,150538,164004,113011,172241,97940,133577,144905,172719,117356,174653,110158,128821,177497,160373,142061,173876,141062,169079,108856,174623,180800,126241,105233,156643,135284,140708,190549,112187,181332,116945,181919,122081,109363,133546,114463,109689,146841,124981,112163,190643,144363,143767,189743,177279,172404,159190,121470,105689,161290,122781,191550,147229,117994,96514,102169,138487,138647,153832,124665,116831,103835,97552,146684,123241,117327,148337,184895,101301,130512,109905,144214,119843,173292,103318,112626,99733,168909,153779,153639,183923,136219,186287,121371,151251,110159,110789,146985,182251,106968,118238,170075,133841,122549,113089,99491,155675,97567,98112,104661,186456,151930,121659,100244,164648,133138,126585,136563,175562,162097,180853,146916,173294,158274,162852,151360,164595,109923,96069,99062,107549,133629,143188,173632,181869,164693,170704,188448,131738,105150,187816,125214,168238,171395,182655,99871,141401,144343,179294,183901,188073,184695,155376,122331,107060,184478,126562,125766,166566,126124,190406,161734,185922,182075,164979,155244,132698,121881,120433,136136,100094,141842,151277,116100,113915,166792,159885,99410,141069,155828,150663,163986,164276,138398,161744,161743,145767,148204,104614,182739,111163,132546,176355,132242,125047,173661,101968,169807,168832,118205,136819,110256,190461,155064,187300,168986,114482,96803,167623,176727,121556,176536,137716,136636,154287,103702,133553,109451,167083,130388,166987,114315,161576,153745,178788,130996,118326,154390,136650,119174,128681,143012,137796,159878,131377,103644,117135,110148,172841,101100,106259,131291,176429,131652,178782,97260,161224,115633,110995,104652,120574,145545,177976,138096,159933,103597,183365,169760,166315,177418,165438,125468,112564,167920,172809,171328,170833,140408,156421,127181,158199,123926,163274,140654,100695,134216,191689,155849,180909,186996,130499,154412,190134,146769,173271,183445,169795,115131,100281,113514,136059,186622,155437,114790,140351,102800,137037,151903,159704,190360,133085,169413,182406,103151,141256,104573,174603,124706,139587,139238,116976,110088,122701,141575,136241,134664,154183,140739,141858,173719,102957,176665,183048,117416,141572,182131,124768,113536,171045,132298,102766,97114,174021,138678,153380,171277,152728,147273,109158,181672,174123,125312,132454,101895,184369,182679,168544,127733,153465,142464,107681,125956,126340,120454,185402,141786,110543,146404,129639,160075,172090,137984,158373,99011,167917,183718,162420,153834,104352,129726,113969,97902,154508,144054,113608,132760,182934,137575,191789,162910,173468,113410,166575,145635,156119,178509,167911,147177,138805,127941,185601,128788,116986,168415,110550,191234,141895,186235,161959,148122,118048,127413,149110,142008,167072,149059,98530,190001,151384,118922,143754,104783,103018,102099,176062,150547,104584,185166,147790,151643,160229,110923,137215,173760,184625,126249,134492,113565,169330,158200,154196,165434,163078,148442,143366,168911,104267,176490,126044,187042,171034,101572,156721,102003,102326,154964,189462,188363,136907,128637,102638,186192,134898,99984,167791,120627,161927,189445,163261,187023,176764,176715,160772,135821,119980,149368,174563,115782,156118,165691,113808,98806,122482,118023,170367,138093,132737,115834,113019,148045,161711,187357,178915,107088,148326,107180,151569,160465,144522,102689,159682,183826,170745,192145,141988,184846,97882,113815,151742,169837,125619,114721,185099,151376,96823,106181,191559,173780,177228,123516,162171,167335,185522,163298,104318,191639,145944,132081,137042,135435,114518,122339,180311,107095,96085,170747,182787,112688,129286,183800,123880,105725,157613,189191,139100,113074,158847,176513,109690,131345,185190,142892,108465,107177,158067,177165,118084,170838,187137,180952,191339,155010,168460,101645,173827,119182,180350,102855,166041,142795,130435,180002,129082,187232,163528,172507,134245,100690,147745,142485,149371,166793,172726,116454,104218,145454,112872,144640,157649,179939,173593,157096,160041,126075,110580,137804,97183,121211,109576,116138,109002,153213,113637,162185,154660,102658,179542,99629,119806,137386,172450,121360,96830,171127,172617,177693,179948,119509,124978,164946,123331,188955,98563,121226,182326,118799,159406,135539,155278,141108,113601,120902,107586,125989,191350,162859,182860,136505,109926,151673,135504,147909,106640,127708,167792,159203,115872,172689,150130,128040,149237,162787,120073,183290,144878,135302,100369,97801,190925,148198,114087,112178,152621,98577,188880,186598,185687,156096,160978,132484,176153,131383,174640,99583,146650,183226,179481,140144,188186,130753,177740,171542,130997,103688,151169,158020,129216,171766,135853,157521,173350,157294,122105,139687,181030,173150,99750,102854,162178,188154,166133,115254,133612,190542,99355,107068,166829,145933,154554,131233,109038,150793,117006,173115,154637,116049,124456,158999,121724,112150,98302,104654,143377,116250,107815,110588,178799,102092,132270,148170,148580,110625,121535,114267,133399,104195,177056,114562,129747,99546,96941,125280,131369,102955,165786,168559,166917,117894,119450,171609,173274,172574,142065,134156,170062,154332,182694,96828,119997,104109,139993,169842,176824,170551,183545,156259,140823,179245,149959,143509,121840,143818,127942,116488,98174,136955,112025,96089,104825,117451,130229,130264,191427,103427,144732,107844,156509,124785,168629,142774,99978,184676,178744,136994,173624,129864,140977,176347,121063,134528,172117,102388,149010,176721,110576,144373,143373,158849,127616,111946,135946,170260,108390,117548,123924,110733,185861,102998,137435,158938,174765,112054,169849,152924,137339,144068,136114,177405,163787,114001,127786,145719,186888,112090,151799,151647,162460,186392,180473,101671,160359,154461,191851,161511,174101,157974,163604,135095,171207,131346,106428,99073,129035,108318,121969,183697,156976,182150,175113,120802,151344,182759,136295,135341,128420,152692,133409,190799,155991,114250,146517,167366,186202,143067,175572,110509,131102,185576,137893,96329,115399,186361,156704,159194,108174,131978,108542,140087,159724,108239,163533,158970,190880,150267,126449,187329,106939,113066,139868,188691,113234,138556,123010,113860,136614,142821,183855,142521,155718,172973,102496,133984,117261,151962,125900,165839,113917,167654,175029,120669,158719,164024,190670,187153,185184,99224,134198,109179,153807,174807,128992,113458,108544,110380,174845,123772,98940,190697,178193,168000,141721,167763,99343,143836,178110,112144,151332,127363,171717,121209,107701,144696,152533,97101,126788,188245,129478,115206,151865,153490,127009,109967,133300,126953,144455,99756,185246,173975,180321,138656,119903,142419,110040,120227,140336,168852,155136,187182,165224,116804,123338,142874,99245,150418,156006,148049,114027,162822,103649,139995,111219,134807,118154,169714,145089,158900,121077,174188,135630,177485,124138,113062,125343,180471,147025,188189,184742,189310,178734,165911,183304,160994,180191,151458,190156,102889,116701,150623,163333,165063,181036,116511,100650,174549,122803,128151,99081,177502,139046,173326,162271,129996,134891,169159,107824,108360,119491,104079,152351,103460,181886,160931,101225,161288,108930,142076,111465,191467,113665,154661,169101,161951,102027,130732,143559,160156,174503,140457,125117,132752,179719,122949,170590,168609,114827,127583,158712,143598,182749,129061,120176,142769,119600,175025,182084,148744,161432,131448,150900,128958,146601,189161,181101,167808,103282,152197,150806,151533,166649,126928,106674,121189,144038,101191,96710,124146,188815,104128,155536,120297,135850,97936,152589,100081,115403,120655,182904,145532,114843,123526,189155,174325,157616,144288,98383,106943,106028,190673,180701,110144,97416,138853,172991,129139,170532,184934,96806,117905,117329,181690,122858,172381,181861,148134,149920,153986,160239,104266,104064,100717,163004,162808,131059,101615,110409,164798,145361,110859,124492,179329,157427,183683,138045,147231,150234,121379,161032,155502,152369,147157,184900,135818,140965,128233,177908,107144,148003,126299,177988,114832,135673,179296,142451,170759,177012,181401,187304,164362,171075,143527,169214,112249,165493,148301,171531,133678,143335,162679,117809,107983,113844,147286,111738,147412,159380,96960,173666,99924,143116,127899,116065,126773,138600,141548,139027,128403,178072,98546,180752,109582,182897,138044,99455,150229,142150,175648,146038,99506,103869,156143,160328,107122,162338,165775,146436,140576,143738,130198,133538,185298,126180,122471,166647,127383,133480,126930,158963,155624,158911,124111,101988,99220,109931,130645,154129,107138,173524,141876,174090,123051,109133,181964,158833,175909,129479,129299,113141,152490,132927,169986,166195,174970,162570,127720,103178,158066,108153,139726,103632,159235,129414,106237,119850,166585,115978,139043,158864,183742,136271,183693,129266,138537,111725,147071,132171,173831,152942,101215,129247,111307,169570,133272,113121,104004,144756,117458,114357,106072,127633,165061,142160,132555,156585,187573,103522,134929,167155,176503,160818,192044,133427,143027,100168,123269,189746,99414,189780,112532,101007,125295,133652,161747,156361,106711,110710,188717,144528,128688,109792,139166,168779,167756,158006,173723,173914,179027,145266,153917,124653,170719,109896,116233,149704,188521,137995,117468,161560,168265,127773,160538,149257,115356,113377,165326,116248,183311,159157,183995,162590,179753,115119,180164,100774,112882,107850,159124,173867,143964,138259,132289,155036,117184,158685,151951,105429,152400,165825,158629,169709,128823,127984,188850,175262,136623,125012,99292,135360,128369,131972,190729,104622,178347,138301,180996,158111,130740,146617,158069,135960,114486,168849,120340,138334,118008,116098,106030,116963,191835,185965,107908,137278,109006,163901,126415,108431,96992,140445,176679,173492,152635,170953,97125,127491,125422,187913,142155,97561,144599,164008,103563,100559,183413,104044,139434,142940,123579,133466,177126,179196,103824,146747,171044,140446,188444,112579,109573,185915,161905,97341,184341,151807,98591,128043,116096,176218,104938,155230,104275,163605,180613,160561,106245,104690,167400,145770,161972,155611,140016,150648,101693,169672,166615,178248,149073,108046,181416,184003,187553,128429,167269,144501,117446,185503,129263,175522,136075,138053,100420,136761,129690,180417,153016,99048,165248,176165,111553,151265,177320,165355,113672,111825,187035,185234,122112,170835,165024,164017,135538,135757,101516,163744,147688,177259,128113,172688,191143,136903,108201,188894,160890,151047,137190,162373,146461,170468,185194,161920,143376,123631,182043,121732,147615,146677,190224,130041,120084,120912,173236,186838,123425,174759,121925,164492,157788,125091,126563,190154,111236,135105,185502,102433,113855,170150,185555,106118,131870,123903,106906,163658,143048,116168,148349,176650,130899,185955,112395,134808,97907,111328,133053,153318,178867,165140,191166,165646,133459,102952,98897,191409,128862,128651,106016,107841,112758,97934,148812,114099,162085,159230,177710,120059,99776,191755,135340,111416,160234,97372,99502,139285,112657,160357,153537,139928,179104,134525,121161,115291,167399,149605,126331,118738,182657,180880,132736,132919,108396,108941,138265,151276,119130,146060,121096,160283,106918,163811,159166,186114,105512,118587,179454,156541,126659,152325,98668,155242,100123,117805,182957,136875,187550,186325,132158,168515,139512,187572,151810,101814,153098,186928,161384,181134,180523,132110,188818,139939,172804,155093,159547,188972,179761,131010,129766,121223,117014,134471,176529,138042,143140,127465,133739,140333,165551,103932,133236,176255,110848,142298,188461,165951,163399,136343,177091,164184,133327,165863,131717,178961,184187,100180,157741,139012,179853,189502,106203,118260,100026,109747,106489,180067,160048,156136,157655,150583,155804,181158,102423,99398,109477,180315,131065,99264,167912,160732,122071,101611,101806,106066,152228,110979,187751,180434,155218,119173,124378,191421,121572,128181,140921,137340,107046,100402,190315,103106,143501,152388,132025,169105,170752,140249,166010,116748,154153,167222,181377,112764,142885,102902,138922,183582,101858,102427,127829,170297,116987,96413,154100,155125,191877,111945,174486,139445,124536,181422,135216,186800,171993,152505,100828,159865,103122,159934,166346,123095,116838,180306,151409,166199,150291,153613,171846,188006,123550,103912,178312,133198,178790,121169,138538,166678,154027,168588,129387,132965,186093,114851,145837,139871,188506,100024,110324,187846,111635,139083,115654,191180,118232,99955,100769,122173,185542,109836,190136,157260,176023,162489,124964,109839,110536,175334,98437,120751,131528,140520,101951,106639,167628,167755,153081,163538,113253,104078,152945,189737,115395,166973,188103,133752,171538,104697,166267,154817,144648,161936,133281,171607,162594,125339,130305,111104,153099,183408,100247,111546,102928,166866,135827,147455,168201,113572,186931,128689,108162,155716,152480,163863,130951,111055,102062,96341,174659,120019,106415,112261,152174,104212,166004,136497,163766,149727,109110,142292,154831,153107,152168,157794,184801,129595,168476,98621,170331,117441,113133,133117,174579,96608,98610,125210,150158,181060,110091,117488,152451,186540,100846,126944,179984,126529,153458,128671,132777,120142,189158,148849,185643,168243,185658,134620,102707,170251,170181,106860,188102,183940,189414,151423,157915,169775,149482,172863,134233,171705,115351,108529,102799,163985,125777,166614,152639,157681,169589,120889,118749,97440,121871,190169,175180,154416,135439,181091,97529,136587,103660,161950,110571,185863,126383,123174,150916,166265,184150,189719,137116,99111,99296,122169,123231,153441,155366,169975,123221,115492,111715,99754,141289,184686,140428,185482,179960,172267,148425,104613,170450,147478,100389,145744,98622,188988,168788,155819,101058,170564,108334,187088,102636,150485,175801,121200,96217,126506,134811,157591,127687,152321,153028,146725,183634,182217,171303,106964,188927,162474,140967,140540,103587,116256,143056,102482,112603,176077,104198,172398,187963,167577,108159,174694,175270,138005,107963,120884,152848,156780,148030,123052,110377,170096,116708,169685,169710,146215,137320,97265,188156,145145,164766,162406,130510,125859,136391,148982,160621,165831,108713,174147,175743,191572,111386,126250,154821,140066,142762,104330,160345,153520,185424,104074,142137,160430,138065,96426,180010,156758,117145,176505,118077,121505,155170,151606,131487,130303,188512,163897,185053,135099,96677,145186,170294,171254,189824,161427,152461,96694,112858,160646,113375,161674,176900,131121,116038,164968,160834,136096,110828,113432,125904,151825,123831,154927,191255,112269,107023,127865,138567,177791,175720,184978,125334,189699,113940,98152,138479,119641,179415,140879,102575,171775,105694,176678,148040,165542,178032,127227,176136,188893,157795,175499,155731,189083,186237,190327,122189,178078,119249,148707,185734,106952,123083,114156,170370,170227,186633,104490,111440,111927,154441,147906,182468,156965,101028,151000,129879,127568,106735,101991,167080,186046,138511,104196,145827,169662,185310,123444,111271,146088,142844,98260,153025,183600,98801,122470,124505,147429,170030,174645,179609,160323,135390,152941,166396,157159,169063,113687,146147,161267,165193,115449,184375,188631,138674,170999,96909,171097,157751,139808,167522,146242,159545,180831,129339,144551,123936,124393,118052,184637,131106,106814,126799,154866,123549,188730,123384,116430,168981,121557,176916,150786,113483,178707,187414,127533,142535,147178,175071,161334,123343,130490,188642,134115,102125,123561,115706,103936,122336,191459,116843,175793,97871,185899,121475,134566,163443,113863,127539,144805,115176,184193,164602,143330,130762,131725,137431,154063,103987,109855,119584,186155,120010,163555,126740,183342,147554,120948,133478,170108,122660,138632,170917,106023,120469,169943,155258,110390,153767,145228,182164,165102,190793,190848,158766,165033,116756,143766,138507,126995,162654,154766,158108,179368,112894,123380,154587,153679,107529,145078,133686,174301,142834,174219,116373,118026,115360,159421,103399,114452,162417,136617,154176,179994,187823,191009,191480,97444,143079,123921,98829,98723,139972,127347,104950,107650,142146,118554,135864,159122,129952,125095,122726,149791,107909,130702,178895,172651,121785,155907,119586,114488,123007,174774,174270,98194,105669,176456,158499,164558,115221,156514,168656,141454,113975,102325,130107,135733,147454,108223,103059,96649,178547,120726,148577,137680,157782,148477,160552,147637,174551,106615,105871,127201,125409,108635,101987,98812,149484,156943,167820,97982,151853,143150,162608,121643,187957,112717,111846,139287,148227,129715,170787,120974,182311,126568,189440,136261,148109,103723,98325,161958,150231,149480,127939,160449,131607,164666,149821,114755,108289,178085,132686,172255,187314,135779,112569,186370,121257,129123,179416,180386,170478,190386,150111,133356,168622,104990,169921,130205,121740,161021,164796,188781,181860,179236,108361,102560,116582,101620,107191,135419,153093,148613,156483,100152,170502,138086,105069,164950,190570,173352,145527,120441,128365,100609,119067,134161,109700,143955,177019,164343,106388,167002,181605,121323,188398,178662,147599,132591,140027,160553,186132,107238,111329,147213,113984,137247,129621,184064,131721,167795,102922,105609,128926,174550,180920,190778,168681,99903,114732,175368,107755,100702,96359,164623,155264,154148,177217,147149,185428,188248,170955,117572,104237,102268,159701,163212,184726,191207,142512,136784,154549,125667,161609,98228,121640,133876,115201,148201,169057,139585,153042,191430,99483,116896,110877,131040,111090,110980,153435,96587,151329,102129,155460,127431,126036,108710,147801,106331,189550,98352,99839,103179,122211,186822,177289,136523,167489,146679,175352,118249,100431,166928,190567,188012,150188,167267,180133,173728,97773,135869,120664,132230,175133,118796,155435,153145,176516,124348,126570,135235,172923,129093,105170,114747,116585,122222,173960,180443,176223,100554,105687,102382,131822,129736,186531,175690,122262,150885,153305,161329,165278,175513,143277,120477,131788,178425,183900,167453,130507,132164,103620,96624,163754,132985,117942,117607,121041,102547,186061,158489,169389,144825,98374,143128,176068,155436,170695,100958,128976,127981,121170,121694,98354,160599,120897,191541,169926,164195,115695,165865,178479,167659,99394,140222,175632,132848,191677,148262,140923,179282,175204,178417,140596,152535,101059,147364,143061,135791,176287,100645,124853,108107,166365,183338,186365,96265,157247,124334,170276,166674,154420,161615,132398,156676,96219,113059,136993,154947,97993,110475,131986,184264,117204,118415,108083,116909,140692,174480,141510,115202,164801,188232,106496,143352,151795,190766,145819,110780,167219,106685,134941,97235,137276,145918,131458,148431,145677,121027,107348,106363,143045,171189,140673,122693,188825,191685,109166,132977,173980,115959,164990,152245,156185,155853,132492,137290,123094,173335,180178,176286,113913,103549,167426,133024,150113,140123,124691,96313,177839,101233,141101,136149,123906,183842,163354,150773,111005,109899,97175,116951,139399,148465,159177,123821,128842,115792,191777,113039,105835,113452,164718,102518,172683,163903,188831,119456,140161,135865,102546,184025,164643,96236,161505,135493,132637,123965,146490,105003,115302,135387,119894,116837,173269,117361,164785,171040,191748,154989,171374,178084,123869,167784,145862,157631,99582,137918,145681,112634,178991,124071,96390,112788,149091,153385,176512,189134,157943,132974,103250,188931,175402,138821,144787,132076,169729,153307,113498,177322,149311,153783,141003,113248,189204,187224,145994,123186,179242,173613,116108,135495,142728,178522,118068,137243,108810,179783,145788,161141,115785,126505,116110,167856,115012,149813,107998,177558,124239,181047,101307,131276,146633,179342,118718,107409,132046,144029,145122,155452,144028,120345,104202,96721,124143,172868,184164,101304,133306,138608,152463,172571,178192,155605,132672,126166,159776,188649,145735,166855,153602,101327,158195,132263,177305,127367,133873,110320,165939,178482,166989,152131,148472,105529,188268,171699,133372,116822,162781,135695,129348,182052,124523,154233,112040,112230,147967,181972,106950,106097,161113,180219,100067,141800,155477,180126,122751,116426,177963,184937,114704,146824,99254,99608,126828,184330,145549,164715,168664,175452,171293,158140,140586,177649,155581,171499,160237,165416,148299,178129,168408,191705,191249,163104,158358,171785,132137,178561,171038,102506,98851,191197,137163,179645,131837,143336,104564,153454,150711,122013,127930,113722,144821,106780,184550,101981,136566,182861,103326,142659,97680,97614,109627,150184,169083,102376,157904,128728,148194,156204,101242,128008,184842,169026,107030,155263,105232,165453,143199,179729,180414,149559,191359,173365,120504,178845,177224,178409,182072,107592,113339,176979,105193,134125,167512,131454,97793,158608,102200,190794,124219,149511,166304,118367,183469,169796,181399,191055,155967,154456,97461,170086,165853,153170,119537,102223,134304,102893,125007,121733,138252,184669,141920,156766,174070,163993,179718,121162,105921,160399,138864,99165,183964,111170,138927,168369,104038,182396,96239,115470,132733,130989,162815,152169,133866,161227,134288,170002,145594,189652,173592,186886,184904,184733,191979,136230,168073,130057,158920,125804,187588,132218,148511,185068,142528,114297,130317,162044,127620,185252,166191,130693,165968,153890,137456,170224,163854,113392,162181,153754,99229,180128,109824,164610,142595,104823,182949,129793,181104,150205,180614,151734,108531,134666,162128,121068,171687,104113,104098,139108,170762,167699,131884,116129,167205,122894,146801,98838,171116,133067,156156,189151,103463,178118,117952,138591,179049,129410,97580,190790,174071,175036,117405,140775,161757,165995,123133,171042,170257,185376,191303,103827,137822,104887,121058,137125,146818,187526,126686,181783,117034,121499,140329,120054,187729,98182,127102,135486,134262,158520,109889,176733,130344,169883,108060,97014,145494,164528,130458,123089,120231,179238,181638,134079,147334,116170,169998,101417,113222,140630,125739,124435,188188,133011,142681,127229,141536,118908,130773,158768,188933,154363,107779,132114,150264,108850,146464,163110,151165,114276,124511,110989,119068,111013,184057,150510,170246,168241,163376,153631,154579,135594,137505,101771,146692,158073,162587,138385,132657,191392,161210,186431,179472,183992,163276,134615,110497,101634,177159,112429,184157,106377,150794,114160,156125,167502,165544,142035,107142,171444,156832,127192,178196,124426,182729,184421,169918,108840,179540,133523,161636,189649,118875,187071,136379,104839,120355,127525,180775,112181,139554,162355,134155,135985,170931,141856,134605,131332,115697,168448,132032,138982,179539,126783,125039,119822,102167,150991,124376,129670,107997,147810,181449,102884,111473,99882,109782,119881,99405,164922,140752,134610,99646,181476,150398,124321,112370,147523,142316,162538,168030,127286,135936,145386,186927,122771,163247,172721,133973,189619,138777,99714,175687,117899,171935,121876,148004,122812,124592,129443,156501,183680,107809,167223,99318,97549,187722,129027,169348,181306,124480,103423,191111,160279,140560,150161,130519,103436,105143,137631,142804,170130,162448,101449,163150,116978,136673,167758,187469,188889,154771,166165,142895,174273,120510,154422,102464,127735,136047,154045,104068,153964,115699,185003,104959,139293,191919,167220,169462,101451,172737,122550,163559,147804,137413,131914,160176,107813,123098,191914,100270,171873,111845,98003,179200,102299,102466,178046,106233,163648,155631,184461,101962,154807,104669,177902,190738,145630,121691,181798,119488,148948,104874,112302,112336,127070,129893,185681,161391,108843,151720,178453,101966,169792,187670,132468,112909,156460,114109,190480,175312,134869,128673,145740,160738,174903,163210,177190,114126,130409,146911,129584,117936,145337,128656,187161,141351,152495,155333,164692,98199,164598,129434,149715,159539,188004,127199,143913,127756,131008,102339,182280,140600,186780,101764,149619,112088,170724,100029,164842,155806,171830,147089,120180,117138,176671,175231,118658,139606,169633,153316,184657,157766,137561,105770,101590,104095,113398,170184,147324,128807,163278,192052,103027,141472,141993,96047,143499,129495,174874,184479,163292,151377,161212,118643,185162,121525,138905,149844,162117,159483,172766,124087,114475,125586,130835,112996,125267,144655,122672,99944,166969,140715,114044,153494,123232,177769,159243,146723,124743,155656,182162,147116,140131,100059,129666,148694,157978,135102,165992,163554,96836,98448,162026,115255,170622,174782,124072,159040,135929,164824,160976,184938,109269,163999,180159,117624,109364,127134,137674,183009,142529,158995,96067,116965,101067,116050,160741,120041,116624,156499,115151,104659,142850,150134,160427,96556,148691,192134,99008,135600,156409,109394,106279,126677,101406,165395,164553,147179,96931,121003,168554,119616,106008,99948,176725,178843,130352,103898,172793,188735,132666,183675,164164,166128,101726,191611,105751,142719,143894,116311,148768,177954,106656,147676,158232,128350,182385,134358,148651,176197,159557,144135,115225,173438,134486,131602,118454,131851,154596,123417,157450,103156,161285,116010,164299,107341,116710,135415,105289,164418,111080,190210,142165,103775,187848,170923,160652,97702,162362,136180,130621,104324,134475,114975,133358,133593,103442,136095,118041,132278,104031,102054,144066,115582,103961,116672,107581,107741,183863,102393,122823,167721,102328,179158,133229,112021,170744,129900,168174,159032,139883,114665,110839,157009,185431,132065,123205,118147,132712,110117,159145,158411,101280,140197,131013,189300,183987,111968,185153,115739,99877,178373,156077,126709,114859,98236,159175,133068,127707,187017,169114,145691,106838,173090,130988,100345,182746,186662,102454,114113,109176,186435,144187,132497,132274,108464,153601,124613,146834,127557,143394,103647,165109,148550,136508,177690,188560,98791,192064,127925,147401,100679,161412,136452,181827,160980,147682,112801,99881,111912,109547,179130,121393,176555,108367,104407,170229,131495,174261,150281,137608,134639,100319,169303,99043,148934,117024,152460,127041,154969,184305,133404,140938,143441,142563,137756,127582,183163,188412,181943,186345,136018,159599,178535,127497,123799,179241,105895,186813,106779,111556,181019,97301,172771,104451,159461,153530,96816,144153,122666,159227,175682,180313,120136,140613,150486,168517,132148,177951,126636,105648,159593,189092,114711,142856,109028,102661,98295,143648,144700,176702,152239,141620,96145,124133,162116,132816,185885,107979,119829,144228,164159,175956,110499,138703,184126,144205,173895,105736,174143,158468,134870,142983,130380,181853,108882,149489,103459,104852,150396,171617,186697,116352,101544,111655,172753,183366,102777,118802,96525,156918,110640,134421,177463,168898,132023,177038,144990,97954,106089,157606,131073,148463,111842,97765,162300,133104,129302,165567,169942,104885,138910,122967,155440,184405,125752,163117,171807,167079,145716,143735,191290,105533,117647,97437,141277,181491,143646,126935,188612,112614,185021,187701,117827,132163,156665,115167,143204,191261,102898,103224,126004,171391,111599,170686,97003,159816,99838,101812,116806,122545,115123,164274,97278,155139,152416,119449,127802,147369,102174,127098,174775,191502,136584,152870,154998,103334,116740,191011,136694,116697,156902,107513,173952,107350,158493,178560,170199,99727,168682,148991,178728,138309,165420,116808,106967,96301,114387,103801,176711,144126,122198,98832,108160,106055,133563,101203,129011,166643,154520,152359,105019,127124,148141,101918,113078,183000,154146,181156,159911,136484,131210,132955,110663,126675,160463,186908,185426,182547,122884,167587,149708,104422,186382,169071,183119,180825,145116,186818,100876,159940,158081,136743,156846,146521,126510,188747,187050,102734,133444,109643,108437,165475,152804,117981,177870,119372,130917,139396,102574,169734,145279,145813,155392,155812,137616,182170,134040,139260,156863,111853,173992,122251,146592,161503,107372,175240,165094,146759,166730,123776,169841,136883,171533,156486,130442,184803,159382,190040,162213,134634,160644,178386,180279,137281,124388,179985,149347,125525,121451,191452,102872,143890,183102,100506,125703,176521,102055,159453,125706,122712,113881,145805,130385,141266,178199,154034,164516,120548,112629,174571,106567,165622,156607,144112,170983,174586,112066,129439,187164,146629,123283,130306,128538,112720,99437,155771,175652,164543,164740,113518,151448,186124,159637,182893,175059,120806,181018,111939,167544,111643,111036,157980,175980,127080,130392,146543,110223,116695,186426,122350,188511,168393,121849,117581,137527,112655,136151,99325,103194,149780,120691,99633,174232,166710,134292,153221,136084,149427,157414,177437,136613,105943,128549,148132,178195,145450,145572,109442,117674,179584,152488,102702,159275,111533,120614,103857,108276,127169,135365,135257,100141,175797,101430,183858,136017,164591,112495,189200,177881,135500,186002,129368,174818,96947,145662,176196,142185,123744,156616,147897,115976,117922,136233,106787,148050,177478,151993,113957,118580,104638,132105,113020,161625,144407,105700,161513,180138,115191,157172,113976,97815,144611,137434,180727,152530,143911,129775,164496,106819,98542,183161,128285,133181,118013,144256,99887,137328,104030,160716,119366,145012,165290,187704,139351,127561,159958,137323,160494,138811,115949,142666,174567,173999,117599,110734,97903,139096,153289,145908,165924,170774,174278,113329,172950,146738,115740,143071,119687,136021,174585,153217,108493,136543,167134,111754,97335,110190,106175,169259,103501,186836,190350,176675,130132,182593,157760,171225,111840,120333,103145,102650,142224,188481,152427,146167,147436,120925,148061,182008,140096,130798,162357,179723,152496,181843,181538,152523,161527,97661,111932,127729,166416,161387,184125,181577,140789,152756,170928,140609,181229,99560,131612,189433,97785,144225,154647,121213,184134,98481,136678,143572,154740,125640,110574,141218,105022,133155,185912,120818,116148,141834,125350,152674,121136,131486,122104,161691,98515,148772,131989,96781,154482,121272,143944,119227,131629,183339,152972,124037,170818,113697,97144,186027,97423,143181,135252,182315,105641,97584,152790,163587,143464,104696,142766,162056,107907,110619,140797,190374,188317,130656,158174,189215,174262,138961,139073,176773,131668,161403,132377,182188,116035,142318,135512,97888,161892,108588,188724,192080,166750,185127,103542,115635,116525,116285,165553,142815,190337,106739,133456,186783,97000,105116,113161,184712,104653,176701,114183,139192,125036,117196,127886,191871,169860,163062,118424,163789,156953,154594,147696,179493,161169,107438,143101,133261,107541,172971,131254,125654,104706,96833,147270,181028,185156,180183,98364,162005,184828,117679,160440,122133,152209,184943,134100,172568,165829,117096,119910,113348,155658,112863,151477,115853,174126,142329,140888,151514,131807,99065,117968,133913,164215,97637,161602,140038,131606,114385,134907,128636,137576,155638,124337,114508,184075,114133,183343,147784,163232,137205,147867,186685,104034,109988,152485,138827,167561,178527,133391,175986,107794,107912,177025,100712,189377,156012,132266,164357,105053,164972,101230,130477,163113,181217,128839,146512,185314,153498,142725,104328,162536,174748,135057,168226,164606,189879,139623,100765,128095,153462,155926,181085,122538,141641,120001,101012,177734,153666,138955,190027,184110,132539,124571,187667,114247,165955,108841,190812,105530,182683,104145,181856,150606,128809,129163,116434,153837,158008,107842,105738,141334,143430,181011,180323,146467,150299,131709,99658,133498,184381,109318,153667,175591,150253,135424,175229,185216,165552,98065,170611,180447,100848,151664,107086,181356,147842,140094,125591,129745,166859,180863,102794,134388,105717,102977,152983,144736,181116,147781,182597,120034,119315,149940,134495,122902,147297,137886,156919,165199,164227,169510,160779,116141,115527,134232,165496,147176,148885,148084,115335,128604,189991,167436,108453,162603,108852,175500,165702,143895,108316,98090,187295,185086,166666,175736,174988,176076,114990,111487,171767,99555,179665,128555,109964,190106,165548,127695,167249,139851,125425,128916,188869,130685,148940,118164,183630,191140,151721,149924,141857,174358,183724,121425,127519,102338,157538,135949,125547,166587,126488,141532,176305,156379,164062,136113,101952,139082,111426,98146,99523,162853,117865,108715,106328,97692,189624,186269,102067,154871,158213,136564,139433,100434,186273,110704,101429,149326,186331,105438,140403,155964,127738,140554,123096,135408,135802,96584,107056,96868,107247,113043,104219,139684,170419,137419,115397,97760,135904,102152,100602,161142,187506,179782,167020,185264,180038,158548,175587,117134,183785,132376,127727,159444,106932,114141,187346,169076,119991,101996,170258,155942,113768,128601,137173,180370,169966,161990,116338,171315,109739,140454,186871,154935,101136,156554,106716,182095,170674,127639,154966,139968,115461,130627,133996,120759,120617,115580,131866,126407,131438,159740,117080,122757,153990,148408,156679,139977,185747,137585,122403,105034,134228,159529,102605,105206,133696,184173,164289,120363,183720,164021,142034,145900,183029,116401,101941,104833,171438,177005,130957,177329,137975,171103,144321,185272,182445,168439,160510,138697,162414,110973,161614,187270,110596,152849,159615,112119,127410,106068,121801,167235,115657,149538,124238,171059,166687,122689,108509,108217,177748,152598,180790,185731,176611,152918,160603,141727,100105,158613,142463,131945,97230,171422,146595,170985,188045,135705,133139,162443,101827,179142,116370,114971,108951,133233,169738,138176,135905,120718,157553,160413,99451,120141,137499,140583,185409,142518,127701,130061,131826,183355,126848,134614,146665,100149,160714,181191,124475,162147,114102,134046,145750,159408,157199,188552,169610,106767,159966,189223,122795,138923,136209,167633,183689,164667,135582,131088,137711,184099,137130,144132,102469,149492,154950,172349,102511,132840,188826,184928,179659,149253,132742,161471,119867,115125,177169,178951,153589,146796,161519,169362,157965,123732,182245,159106,146652,156609,100298,133699,110554,143121,130849,156999,110924,152862,144241,112705,174154,116209,162449,177696,139637,166899,172368,143261,158214,182747,119898,111434,189381,105865,113523,141809,146974,118303,191368,177797,101831,178038,145601,170763,105819,126292,121229,150081,145421,184367,144139,106728,143893,166590,112816,97496,158839,134693,135164,138431,168052,166159,151214,125790,171299,166335,108132,101011,152001,162690,137131,108944,98356,110801,130652,121224,106842,159306,114675,175154,138482,121906,136342,145019,164980,163944,136939,151600,122053,180645,189638,155802,111192,143163,164454,178384,111606,155974,97838,189547,111695,190972,152978,96486,170708,102037,125742,121600,106840,191821,184939,100325,165881,142744,159136,131888,114202,105186,156620,127441,134524,109409,185950,110890,106012,172949,117877,186112,136479,122782,176722,154081,135089,166626,168533,173418,114093,113544,147674,106145,183418,114694,145170,174847,128443,137609,117089,161740,142998,137338,189574,185774,189795,180602,189722,184998,157673,134804,132632,184324,102760,139832,190218,132548,136600,186295,99834,124953,183725,105776,134451,148295,134653,116556,116291,191818,144025,124262,162892,165812,140083,185174,137915,108906,118470,190484,138686,151519,181676,130277,189874,179044,152153,143093,112369,182623,114074,100998,171380,147477,181606,189599,151198,149236,100227,166729,115375,127406,183825,137443,116337,138695,186439,155214,147902,151608,185929,127283,170557,121476,102503,186703,138271,129009,108984,110702,143363,185417,173938,109019,106625,180071,175576,149432,96397,137799,121300,101190,165400,149401,145673,115239,173293,114090,125149,172599,175408,154906,159285,112414,174419,135812,187620,187949,127450,167855,132629,149815,116903,182596,134271,116819,185636,178464,176064,158723,131862,175098,171823,106309,169767,132559,160111,157692,99967,120314,126104,136064,121020,148593,120072,118267,126468,100787,155014,173147,101939,111111,118181,130405,181260,114763,117366,119425,124433,166320,184524,102340,153697,114445,118194,99954,104543,145346,113788,176319,152206,174510,116261,97413,165189,114222,115472,148399,111704,163042,185511,104739,139622,164023,117829,163344,148682,140412,124515,181536,162034,185986,118466,97025,163496,143220,180382,151088,114416,104454,161116,184260,145443,135303,190930,159608,128570,117061,182600,139909,186859,148870,100835,134587,180545,129436,177833,153801,96686,184529,186735,126106,172227,131751,126148,179552,131968,131531,166435,127810,161043,100313,151358,178395,114064,182161,105091,119873,98953,189630,183233,192062,138289,191949,182927,142763,105500,119627,159883,139931,114330,174110,138282,134979,111025,137884,167093,137497,159660,165982,161388,143167,191327,165388,114295,147859,147170,165806,144423,109016,96247,165837,127148,188771,162323,179171,174482,146806,141445,162115,165374,132123,187762,158098,122678,157330,138119,153522,112300,170831,128892,177670,140976,100992,122125,160632,185268,135313,137382,180436,109879,107759,188385,109522,100885,151997,156042,177245,133346,190311,179366,136845,131812,166999,115845,100891,184716,167616,157438,114903,103153,128490,104627,188668,168380,142397,191491,177268,132583,122137,135548,146896,115301,109930,101437,158858,170684,147484,163469,138035,99253,175244,120035,122931,161470,127488,156081,176258,149144,101971,107428,142982,126186,175399,126730,98860,188679,130413,169612,147341,152749,108109,164739,137023,110239,160808,186304,103974,157703,97852,174060,111875,137360,103429,108346,135041,156022,177866,178172,181487,159249,171725,128278,125329,124516,188415,129337,148260,124986,143854,165594,97596,170480,132490,177432,147592,155114,155183,159863,130513,160447,114278,110737,137875,188855,152514,111193,171440,139563,102128,188228,139872,110958,139758,98135,121252,131553,166145,113314,108865,144610,117010,178893,120083,161884,135078,190449,141153,189006,187676,107166,114337,151275,145524,148614,170670,175281,156217,102765,162642,164632,187966,189315,127608,106301,97920,122790,154544,103199,148595,134768,99055,141298,149327,96660,150463,141137,138329,157592,141746,183130,101588,128363,166715,128802,181034,176327,136007,170077,190647,185888,122345,104695,116659,169332,155890,141637,184627,101917,110750,102024,128657,188713,165349,162739,130672,130776,99143,149752,130700,187403,171104,144412,142223,102976,149012,122773,187540,106531,185921,167905,98538,177333,174861,148149,151932,178676,121944,174095,186973,133502,166983,176660,106855,110818,169453,159659,164437,137399,178758,157908,121187,107494,116727,105978,102927,170960,144712,189509,145404,157518,134035,163459,142311,185283,111999,130548,170864,119726,121891,179300,153773,98534,161585,176298,185970,157431,140473,190513,124591,140639,187641,131397,102837,104797,162794,166273,151238,148005,143635,128709,128217,153108,115656,103593,125635,140895,111601,101022,166361,106718,184027,131842,109331,166114,122282,109493,102197,109767,156473,103523,143065,167113,118105,100716,128919,119878,145195,153559,175978,134806,107692,172037,161234,184376,184781,153906,121579,140290,143183,150452,140568,150010,134555,133421,102316,151262,183611,149214,115130,131038,119152,122396,110300,103280,96232,145502,144535,184167,139619,106482,131249,158485,99326,173301,192054,173291,114783,131684,146381,104050,190042,162400,117817,150540,126728,165972,127690,169644,149411,96513,184496,174745,101715,107339,134342,124522,105726,153866,157036,187240,154698,100437,124721,190310,158306,107298,169801,190672,163201,144336,183898,145334,153423,145372,172905,165432,120992,150009,162905,129731,106570,167036,161789,118988,113114,190410,138203,179389,126230,176290,118577,107465,169646,100991,167828,164583,113379,117902,123878,190038,137057,159085,146980,147992,185497,186397,149726,111098,100347,183384,124539,138935,157138,191954,120190,112372,137195,160739,177088,175716,112307,148771,136649,116051,162082,191035,105903,191210,183613,120656,111331,141458,137376,123644,127800,181670,170552,160160,160888,166518,118994,139428,171035,135670,143447,166318,157349,155732,144418,152876,177359,124857,168478,170092,122987,177493,119251,100008,127751,110157,143609,109744,190340,129371,153301,165682,158267,109462,155337,170503,151585,162033,165371,153833,102289,153241,154650,125622,179125,118109,153728,117422,101739,166426,149130,127834,133767,102741,169902,104571,140504,169445,110753,178632,169129,99234,149192,166290,134403,169341,103701,132012,112698,107945,158484,131283,171950,180791,153587,139325,192176,114212,115896,135469,109757,181187,101156,169769,97910,114588,180342,165844,172636,114855,187374,101532,121217,132109,142265,144405,96344,136266,184739,121782,115396,177943,163089,124178,129340,99735,148959,159645,103279,126947,166470,116907,183395,179913,100945,145331,169446,97736,124113,154469,157319,96970,144085,100784,122335,108734,133905,172143,174709,131887,159037,146003,129920,170846,141750,177430,155181,98906,139681,152049,128238,121384,139402,164439,188992,121683,142115,187362,162402,128294,157906,152413,147351,180345,167066,112934,181649,125366,169216,113345,106830,122468,120904,136902,138353,127330,146396,134062,182864,110611,132509,183223,130679,146675,124749,177967,120532,172218,121310,187616,106818,187470,145448,127678,185090,151782,97829,169988,128759,158887,106024,175566,120053,134564,158905,172944,178027,134074,99798,116915,106109,111808,190986,107491,121787,171279,110511,177047,187185,102451,104496,117004,189475,117869,100926,175738,115184,142964,191340,156567,175030,167773,171314,98896,145797,98322,114651,101850,121959,107190,142084,126582,170034,181863,152919,179784,173777,184070,134890,144217,184787,126852,185280,109018,148026,152511,102607,117606,121835,165034,182976,133904,163367,133461,126868,135227,97501,122097,113828,182874,189580,150782,189443,134473,129703,173782,119697,174241,171872,144563,175824,171740,161051,172030,122558,128335,130692,160759,118085,169139,191082,141869,189695,177815,161551,159719,134521,179901,113612,113331,176211,147121,162191,142273,147807,183177,183236,134586,183749,184468,149213,99525,146220,123694,148918,167632,104305,167924,158867,96969,125918,126466,140685,136347,143612,134053,191837,96786,163038,156618,99402,189289,178683,148551,176881,134454,190970,99261,184589,130638,167729,112357,126981,170382,154306,120812,136377,132841,128949,179852,108790,149428,146905,109645,98445,124222,189905,104008,176737,152272,162196,129729,132775,173458,143062,154764,126371,150855,108422,171486,181580,133634,136445,129432,136641,98561,137872,134839,115863,96352,172337,123602,139157,190677,119717,172506,187903,115447,183451,113539,172064,141467,134440,110669,184439,99042,148380,126469,151195,145000,166301,123995,117099,120003,154491,152548,99316,156868,153583,153574,123728,122655,173651,144410,181041,116820,144181,191540,181317,129338,172807,179570,142113,148820,129044,123307,178563,147740,114597,149908,96701,185730,141905,115868,182289,105798,172298,105466,119420,185291,146247,138117,151579,131514,98257,115725,135386,119091,151039,96576,160224,150342,161158,122349,107219,140349,102973,134428,128832,133815,115934,123192,177108,107040,135335,136215,111578,160388,177363,142574,140702,134293,115096,142196,165712,155693,100850,105377,181733,158113,135689,161665,127826,115953,147624,132876,97293,159512,124403,187203,116791,168941,113746,147976,110043,168400,102517,187112,171401,182557,149080,167538,114820,167441,164690,180643,133967,128454,103469,126719,112844,173546,136513,188502,168382,189100,134649,127710,111555,174686,120132,159263,138105,103258,97642,107685,109159,135440,125643,187447,134690,130110,171976,140807,191820,154524,139017,122606,153460,118357,103137,120538,114900,111827,119657,102995,161727,113758,105714,131856,151011,141166,191635,159621,126622,137972,137050,119610,103025,170749,126907,126010,132411,155962,97503,175649,190229,111045,156961,127128,151744,114623,167902,112143,147317,187339,129600,147079,191317,178305,166054,112257,123524,154405,131934,150820,144591,128207,188453,137710,123733,189718,158700,101480,100511,118937,146122,138978,132421,179017,185945,179052,120850,178702,119926,177394,173466,172995,170044,165953,151392,160930,139178,126321,140838,131297,128769,173699,179036,166588,110993,164613,147305,107745,98988,163482,179956,109539,184977,176267,112459,186376,156963,181270,121573,112188,140198,167333,165523,176353,180709,180736,105787,110651,99174,176058,155898,140426,188641,122024,126749,124654,186251,180252,114479,139143,175362,180861,183371,167061,186827,186334,154108,104103,118271,116502,180600,163552,112777,98759,165952,153416,127671,156800,139078,126442,153525,148527,103164,139125,146406,186014,186857,122810,131390,166510,187337,124741,152268,164720,162219,140219,189675,176295,105376,190726,185229,154686,129944,97769,116858,172727,137283,151778,153685,175106,110335,110379,188206,108004,150388,146696,97985,99485,130046,128818,99737,162062,181404,100015,155368,130097,115031,177725,106191,173544,105754,116271,122466,156637,137348,105400,109894,148938,109784,136926,143423,99728,143004,136795,146014,117666,137752,182151,160241,173311,145720,168707,158817,114483,126655,138673,104838,125539,104112,154083,140386,129523,96175,148470,97495,131905,138560,178083,155019,153152,105695,163026,170920,184907,125566,106616,109236,144281,111488,151264,129922,129421,100061,155896,176909,113260,113810,100512,176974,127950,141753,157985,171730,180809,172747,181831,101694,125470,134878,167423,189632,191652,101708,187847,110120,151898,108208,102756,131192,157418,103870,118691,156298,183150,118943,147235,103439,105653,144515,124185,112347,144302,189990,116992,114393,185374,142339,141029,128812,107312,111364,133095,113950,128597,96507,155011,162212,133316,168323,132026,131642,107054,159061,184378,168896,101893,187148,141518,161168,191626,180449,128019,148606,169285,179615,136578,180105,121726,115938,126889,112877,147836,133111,141404,150395,173056,179255,175711,181931,141007,175182,176823,185196,172792,157796,112442,104926,107406,164695,189658,187972,155592,178398,189866,162089,152898,139777,97345,145007,140547,154105,154527,99157,185228,153101,161592,101476,184967,178631,125402,107105,114533,184830,184759,127219,167554,126772,167200,139688,114830,184710,133367,178374,153443,156892,129243,155729,100653,119106,148422,188722,170929,108678,134131,129412,173957,165472,139763,160604,96393,97732,176736,133375,105677,106947,164942,142857,188600,118952,115798,118716,110812,96094,105745,188701,174552,172952,186993,185883,101662,179364,188554,100929,143821,132098,187336,190560,99841,151416,165005,142537,162734,110714,123793,177735,138426,112885,159056,153410,186258,142901,186757,142530,156853,160651,189185,145117,158845,183669,180410,125166,112621,125086,180766,148136,144553,170121,163403,163375,158539,99674,143084,172672,162492,142480,184423,133990,177920,190942,103820,99824,186601,116073,162144,104778,124672,156391,137388,134103,184678,102458,119171,119789,117299,130267,128250,114526,145107,154976,163700,170001,131512,140371,133994,136175,147866,157218,113649,177315,178280,178266,122650,131028,165628,166997,98720,167499,106664,105481,118730,118006,128424,153174,131379,167380,107353,141886,120158,164656,129945,154621,98349,147117,154099,99725,146934,129088,102441,159301,152075,191101,177177,107407,128828,113759,155270,117613,135091,144004,113888,168299,119678,155946,142426,145659,168713,129825,174781,150421,143365,142462,109524,110211,97944,136077,148404,154639,169229,108385,190215,100110,96687,158777,166881,101481,97264,176247,158790,158211,128607,131506,190037,99682,110489,155199,160029,108467,133239,104578,112671,142172,166785,116598,118050,138925,130078,164374,106764,148314,124582,109502,127835,117349,144384,161913,168740,115610,136625,157612,153491,122923,190018,185325,170391,150936,155028,171445,144632,122481,155206,167275,141236,171363,99313,121038,105698,165196,150226,119963,142854,125359,160909,117649,190062,182386,141464,142423,142446,155657,162275,122288,129240,108655,111567,137206,187906,187014,167025,159537,152612,164247,192070,103570,107699,144718,165412,158600,190959,124121,174211,98688,124566,192144,147003,118788,101983,112826,153393,162375,188270,109004,184624,133159,130130,99487,157140,153851,164826,139175,100910,123567,107450,178623,167360,109812,165354,147702,167454,116784,128588,144155,186183,111365,178885,184433,142820,171090,152666,104125,149673,135127,156388,98858,132506,107347,183264,146621,176539,108410,176625,115312,125082,180152,142262,115509,189466,172620,96966,169035,131935,181678,115833,160324,143595,140905,180740,132785,122883,113948,106058,100875,102110,96264,145143,98056,130918,190732,142911,118704,176560,179648,131621,167726,142674,107888,133149,180570,121900,142117,157840,146413,176066,186417,156279,163421,101500,153592,137134,107800,157824,110118,99904,146637,172846,172901,174630,113919,158559,96273,136142,115143,114029,99422,156386,104023,171313,108415,120782,121434,134682,149540,175137,153676,189794,154574,179456,185753,134931,167450,131433,105018,118405,154939,112312,173565,113335,143909,142758,170667,173560,170950,161283,150807,156881,137855,134662,154664,102938,110895,173496,154839,122947,110050,96623,171317,162759,137897,181264,165801,120427,121882,101531,117260,116150,99584,106214,163983,186368,161738,181879,135901,169272,135922,190983,120131,175791,144461,189227,152285,165813,138517,156962,97908,149874,138317,154560,187576,127736,107270,178020,96431,189061,153368,116421,131781,184661,111419,173036,161960,179248,132631,125382,102216,188158,168957,176753,131883,188555,141910,140506,96450,142236,134145,169937,101341,127581,123470,189010,143643,158684,121318,117566,158308,184163,175955,130475,126700,122230,166734,140245,160415,180759,111711,187221,139836,158165,100504,99240,114548,114433,116216,110216,159678,108874,130992,103965,131113,153810,99356,129107,177790,96940,123790,159039,120468,125668,125018,170454,120417,173844,145604,135336,186723,153781,182951,146024,129438,113211,177835,134517,146388,139279,162091,189396,176550,99740,141326,145178,179795,115322,162557,186120,183255,101237,185183,161943,115812,122985,156900,158940,155985,150195,102332,174135,170800,109114,139160,107375,122515,152883,110934,179505,189355,127388,103562,147407,134443,174024,131083,165369,157881,119110,138802,171718,122970,143022,148552,107123,150917,179810,187493,183702,168242,121291,189164,153960,183429,149838,112225,121262,177742,106502,127327,163990,159044,152059,172319,187838,145355,165807,183124,125678,126999,177888,185306,127841,187021,103624,142768,115791,169543,174115,138669,135839,168905,182292,173450,171560,179450,127026,107121,178154,175011,145839,97267,180469,173773,131110,133201,161600,127750,191556,104171,108538,140224,115488,159532,131115,115034,132529,101689,143462,111433,173421,133935,180867,152632,184727,121718,138043,117421,133021,109416,191981,146689,109875,116966,112330,97682,164661,175732,99645,111220,142327,137123,111458,163991,103543,130038,122544,161373,175885,163775,170451,102146,120575,105640,138620,138716,178106,104347,123970,98379,138001,148542,108668,163366,108269,138197,131975,102273,126139,139788,152434,126303,173785,127034,99150,100350,118369,117252,188088,169652,111744,171815,113661,115274,158602,117644,165957,140631,155058,107456,173227,130186,161349,162120,130358,132198,112404,131977,126927,126786,178652,169358,173351,185557,156755,102180,192155,111669,147427,139978,128154,105249,105109,165914,153826,188083,120402,136868,167807,188926,153199,172212,130179,137318,151512,175438,109481,96834,124370,113028,155247,98784,175921,102294,142902,129694,163022,186089,136708,110919,106938,126282,181000,109892,142445,191270,146187,180146,148843,181652,140486,162381,151667,119196,129587,180452,179206,173088,177090,110920,127837,183240,138409,184132,133303,117086,124389,153411,176908,115226,176886,127214,103026,176053,147315,100033,129391,166373,174007,121087,102407,96749,106589,125255,178644,119037,167532,126809,118381,145036,154327,177992,105638,151131,161084,146971,136121,181518,124957,153181,173737,125073,180104,171837,105526,132635,144486,104354,126807,152561,121865,114063,114480,127558,96898,125225,188313,165778,124473,143266,179417,134331,108383,146550,103061,102755,171747,148783,118915,167299,157564,178134,189644,112275,134012,157983,155959,183008,174805,186432,146345,100060,108202,108543,110266,189803,100668,176354,111100,160777,108801,157529,144881,177642,122401,113178,104374,105001,127906,190253,183525,191423,153374,186026,143575,182891,103301,119324,139793,115543,181905,185490,133847,96446,107776,164570,103270,137568,107093,152762,187781,118355,185943,171820,107830,106999,156633,155794,113052,178953,132628,183614,153982,133076,113904,180622,169618,125346,136281,187601,125274,100068,177293,104185,178626,103141,176836,168240,142569,175390,121492,116207,101989,127376,107344,116455,184814,135634,112778,108120,160776,112167,181849,102483,154955,104106,122439,167144,139810,98167,123774,119968,170187,168688,156457,134663,159387,122270,174268,118510,169198,132143,187303,165281,104848,147475,118521,106526,127211,147507,110405,178007,141253,102156,118996,161949,128493,158553,120328,137168,141146,167970,138954,104427,187840,141617,153844,125716,121433,161450,181316,119939,129142,177562,153999,156855,177414,164596,183807,136076,156154,168077,173892,123676,141482,170161,138403,110731,126066,152070,188458,185751,154892,188355,155925,100002,162793,130945,97873,172093,168024,149666,181176,118827,147666,146019,188296,135061,127711,108240,183346,110915,104201,164104,170964,189020,165626,142505,158854,152658,154582,100919,164634,185453,142164,135373,179953,113290,156436,149575,140142,147370,161054,127742,115741,179321,192002,186681,150722,149468,152106,133917,134801,99249,142434,152292,158346,143179,102863,164955,113747,171667,101621,117552,160729,136126,167907,146370,168717,178629,128725,159956,130839,155773,145310,127269,117667,97229,176244,171809,172213,132515,98198,176993,118861,172915,176610,107918,127696,151104,114684,133898,130469,182187,152585,183820,133219,121343,147826,156147,114016,113391,168392,158683,131257,183215,175400,174547,97389,125934,131411,150521,99385,184922,103993,119336,184394,156642,102126,158320,131984,98123,139697,96599,99239,147904,99669,142732,108679,162269,116475,115931,100773,177017,109065,113067,166874,181126,134141,138958,183747,147393,170601,132765,186841,100693,145879,166374,102502,116361,148016,149894,166702,133576,173654,129615,119749,156997,189293,155598,152776,106669,133874,116086,107152,144846,101748,172207,110140,180813,98316,102637,127879,135121,138330,176987,182690,110351,182335,130515,191149,115495,110951,135228,138107,129720,131140,139519,125510,186065,145074,133216,111502,108878,188529,180285,164126,138419,121964,178636,97164,136362,172610,153070,172444,101713,140113,119040,178366,130156,147890,174264,127823,117640,160186,99381,179781,131393,185830,159625,102739,98601,118295,116284,179974,158959,100457,184745,184051,145105,140396,182627,98790,106146,96318,126196,123263,108270,111457,147626,149197,116860,158312,189102,185231,119775,183079,173498,152036,181770,149753,119803,153784,116824,105589,122893,173417,110845,157325,103384,146129,150422,100300,175985,98269,185547,136029,185107,114258,134238,126835,183306,169702,124154,182564,188837,165152,175308,162195,110142,139616,134773,133877,119888,190017,160240,111572,138990,131357,163456,135587,109466,99932,132803,106574,180263,186700,159638,140766,103679,146131,136375,150787,114622,120878,174193,190791,132969,138462,126339,137279,140416,110885,100388,163180,163805,154471,97079,142979,153720,175053,188122,160385,103133,125763,146845,157130,182587,185657,118139,172976,187908,168333,179121,101625,180202,133910,141162,154193,158327,136173,170699,123848,143980,123099,180275,124275,155845,160086,120430,166546,122082,132878,161613,158786,172676,119454,113698,190977,128489,104491,149722,157542,163553,188037,144963,114395,112482,126866,105559,118044,177264,140580,152029,130036,190645,176175,102188,150082,115362,174535,100978,172742,191384,179127,99535,133339,185496,119774,158096,108323,101329,151868,112812,179563,179605,142010,172229,174492,148989,180356,190768,182483,178679,171407,142000,174601,140307,101463,129358,121658,142599,123116,128785,98315,145969,167890,161908,180923,165505,133962,149794,96795,178829,180574,180448,159808,128745,152207,161033,190734,191614,191383,184368,135786,190383,167596,106702,180702,126768,141672,159847,111462,143827,167115,185048,122935,188175,126920,148496,111302,159459,156599,137469,117975,103817,144609,169748,160624,130559,114674,165821,179515,167511,153994,190388,121487,124332,182606,129481,148014,175301,173529,159464,158079,138792,120699,122972,187961,149149,98611,181361,144934,119325,105571,177914,125836,145892,138017,154145,171229,161188,178778,104154,107543,107240,163756,176834,137721,177838,147542,177609,190033,134230,172621,180142,158068,184416,123419,185884,130582,111065,127040,168331,163187,131939,98948,108847,121646,109596,117011,170706,177544,101720,164727,157090,170243,105224,145161,183482,182595,113087,148219,154439,96535,169195,120964,125405,109648,163667,164536,182158,168313,145607,112633,132264,170021,149308,116166,133559,163499,117940,136665,101808,103309,121029,149898,147901,176977,152641,146851,157938,125671,128978,166306,117993,109738,184849,156310,161901,167027,175158,146524,145925,123165,143201,158537,112238,161457,119451,154605,147011,124900,146702,112678,147725,107276,170012,175159,101076,131951,112408,100371,112935,156410,140285,147841,103657,129934,114435,190363,102414,97357,162192,152821,115426,153891,157816,162977,107542,133023,167345,179275,139206,135703,115483,181152,146295,139052,98852,183921,154408,118066,181634,147152,130939,178549,189878,184616,128292,142650,155253,160253,154065,123229,101834,131849,176774,177796,180576,156985,153876,101508,110645,184001,144413,98480,167046,100290,134034,154615,172035,148131,109458,111273,151535,172575,165725,156428,142779,187437,104222,162901,178114,174080,107283,140817,130288,165324,159416,163326,132946,131107,157025,97527,126032,97594,110674,120282,184191,189268,183878,109143,150544,106590,107427,123816,123825,96877,151611,129866,126378,125367,135943,190538,179139,134671,125483,115860,190685,158056,111408,162866,132744,142531,121418,114885,120862,169955,182408,127632,146681,168730,151806,106075,121497,171255,178539,108246,160894,105385,136460,134932,179670,159924,168846,158303,127258,135270,131828,126135,183714,157738,144800,131594,130818,100477,118053,115417,163340,151269,159323,97724,135976,97291,155690,117521,184960,113812,120370,120544,167153,181555,144679,167764,152994,98584,177331,123282,149022,166140,124257,122569,143124,168721,121577,148449,175678,167376,100378,141979,166589,180053,103344,159118,188436,169722,155234,181954,138698,101978,125633,113236,183282,189208,99922,135762,146004,112227,129716,99717,126746,114161,108612,144400,108248,151187,144774,126721,126335,188143,108724,102790,166652,178163,152203,166046,134072,97355,172386,189280,135574,97839,126086,149902,183334,153581,160464,116567,137797,97782,99858,154094,117943,128371,149033,103743,174335,181559,103829,149925,130799,169444,153586,132396,135748,123066,144449,159814,150354,131239,147242,129146,169967,163560,174461,97376,131424,124583,176026,182987,170117,157181,116678,176302,114846,107671,126872,96650,107785,121798,127869,120048,173163,172590,162995,118489,136384,119458,127765,186234,124846,107260,188940,186717,100249,160123,192153,153482,180648,159981,186842,186011,161915,152584,153751,139507,98680,101982,149438,141987,164456,153869,133675,100941,120728,137299,178004,162574,168259,100354,141766,150799,136599,103426,153345,168511,130842,189154,171216,108693,152476,116600,171203,111493,144693,173504,169321,139607,108477,176095,127319,137202,117631,148912,181107,126144,144954,170427,152141,122587,190703,141182,158215,122154,174401,107396,107227,97465,114275,123449,151544,142341,153295,133110,166920,165655,173194,154205,151873,150742,129404,109432,161293,179925,139708,166902,117341,163192,132277,154132,182648,118590,162488,176839,164112,168650,161627,147326,189082,174380,143534,174345,133924,149319,105195,121542,182337,117206,175221,112348,101579,133531,180941,161571,192180,157838,175469,119928,104302,185399,134401,125877,151792,184867,139482,186315,187036,189367,189142,188396,123986,163542,128643,130821,144283,146936,104257,107249,175061,161153,105371,184418,142020,124720,186953,132043,140119,151222,112870,152742,177323,133153,113569,183453,130589,98978,143583,128128,111018,174320,120175,125223,150339,104625,185324,157878,130972,103971,192083,163384,171115,144717,106543,130300,184557,113366,106018,108687,106809,127686,103170,176994,189091,175854,119289,161107,149748,190241,110090,127511,116768,174299,165923,165368,158106,155026,176390,183250,172293,168123,124766,126100,99946,147041,133072,141075,130104,125738,164321,99161,164058,110698,147855,102039,156053,145815,169044,160016,114590,166289,158584,176772,182579,115711,170742,137649,98732,109723,100722,188959,96865,160011,160666,111762,179458,173136,111534,104565,147877,99147,125613,121322,169238,105254,106699,103130,97589,136048,134573,171000,96168,112284,129075,124686,104425,186580,134332,190072,179374,125886,107995,138343,118020,155720,147574,98716,128726,133430,153717,168540,186923,114972,115082,
