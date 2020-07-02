local functions = debug.getupvalues or getgc or syn_getgc
if functions then
    game:GetService("StarterGui"):SetCore("SendNotification", 
    {
    Title = "Redwood Prison Scripts";
    Text = "Loaded (Toggle key : RShift)";
    Duration = 5;
    Button1 = "k boomer";
    Button2 = "hi";
    }
)
else game:GetService("Players").LocalPlayer:Kick("Sorry boss but your exploit doesnt support the functions needed")
end
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Frame.Position = UDim2.new(0.189167336, 0, 0.251842737, 0)
Frame.Size = UDim2.new(0, 744, 0, 333)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.290516049, 0, -0.0210210215, 0)
TextLabel.Size = UDim2.new(0, 308, 0, 56)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Redwood Gui"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 16.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.147147149, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Grab All Guns"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 17.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.365591407, 0, 0.147147149, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Gun Mods"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 17.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(0.731182814, 0, 0.147147149, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Kill All"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 17.000

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.Position = UDim2.new(0, 0, 0.423423439, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Taze All"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 17.000


Frame.Active = true
Frame.Draggable = true
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.RightShift then
        if Frame.Visible == false then
            Frame.Visible = true
        else
            Frame.Visible = false
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

TextButton.MouseButton1Click:Connect(function()
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "M1014")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "SPAS-12")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Makrov")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Dragunov")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Taser")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Ham Sandwich")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Pancakes")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Steak")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Punch")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Handcuffs")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Shank")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Hammer")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Guitar")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "ACR")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "L86A2")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "M60")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Beretta M9")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "UMP-45")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "AK47-U")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Revolver")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Minigun")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "M16")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "S&W 638")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "M14")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "AK47")
    game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "M98B")
end)

TextButton_2.MouseButton1Click:Connect(function()
    for i,v in pairs(getgc()) do
        if type(v) == "function" then
            for i2,v2 in pairs(debug.getupvalues(v)) do
                if type(v2) == "table" then
                    if v2.curAmmo or v2.maxAmmo then
                        v2.curAmmo = math.huge
                        v2.maxAmmo = math.huge
                        v2.coolDown = 0
                        v2.realoadTime = 0
                        v2.range = 9999999999999999
                        v2.fireType = "automatic"
                        v2.sprayRange = 0
                        v2.damage = math.huge
                    end
                end
            end
        end
    end
end)

TextButton_3.MouseButton1Click:Connect(function()
    for _,v in pairs(game.Players:GetChildren()) do
        game.Workspace.resources.RemoteEvent:FireServer("dealDamage", v.Character.Humanoid, 100)
    end
end)

TextButton_4.MouseButton1Click:Connect(function()
    game:GetService("Workspace").resources.RemoteFunction:InvokeServer("requestTeam", "police")
    wait(0.2)
    for _,v in pairs(game.Players:GetChildren()) do 
        game.Workspace.resources.RemoteEvent:FireServer("tase", v)
    end
    wait(0.2)
    game:GetService("Workspace").resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
end)