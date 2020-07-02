local functions = debug.getupvalues or getgc
if functions then
    game:GetService("StarterGui"):SetCore("SendNotification", 
    {
    Title = "Prison Life Gui";
    Text = "Loaded";
    Duration = 5;
    Button1 = "k boomer";
    Button2 = "hi";
    }
)
else game:GetService("Players").LocalPlayer:Kick("Sorry boss but your exploit doesnt support the functions needed")
end
if KRNL_LOADED then
    game:GetService("Players").LocalPlayer:Kick("oho krnl detected, ur gay")
end

if game.PlaceId ~= 155615604 then
    game.Players.LocalPlayer:Kick("This script is for prison life only")
end

local humanoid = 0
repeat
    humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
until
    humanoid
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiwi-i/wallys-ui-fork/master/lib.lua", true))()
local gui = library:CreateWindow("Prison GUI")
local gui2 = library:CreateWindow("Prison GUI")
gui:Section("Combat")
gui:Button("Grab All Guns", function()
	local GrabGuns = game.Workspace.Remote.ItemHandler
	GrabGuns:InvokeServer(Workspace.Prison_ITEMS:FindFirstChild("Remington 870", true).ITEMPICKUP)
	wait(0.1)
	GrabGuns:InvokeServer(Workspace.Prison_ITEMS:FindFirstChild("M9", true).ITEMPICKUP)
	wait(0.1)
	GrabGuns:InvokeServer(Workspace.Prison_ITEMS:FindFirstChild("AK-47", true).ITEMPICKUP)
	wait(0.1)
	GrabGuns:InvokeServer(Workspace.Prison_ITEMS.single:FindFirstChild("Key card", true).ITEMPICKUP)
    wait(0.1)
    GrabGuns:InvokeServer(Workspace.Prison_ITEMS.single:FindFirstChild("Hammer", true).ITEMPIKCUP)
end)
gui:Button("Gun Mod", function()
	local getreg = debug.getregistry or getreg

	for i,v in pairs(getreg()) do
    	if typeof(v) == "table" then
        	if v.Bullets then
            	v.Damage = 999
            	v.MaxAmmo = math.huge
            	v.CurrentAmmo = math.huge
            	v.StoredAmmo = math.huge
            	v.FireRate = 0
            	v.AutoFire = true
            	v.Range = math.huge
            	v.Bullets = 20
        	end
    	end
    end
end)
gui:Button("One Punch", function()
	mainRemotes = game.ReplicatedStorage
	meleeRemote = mainRemotes["meleeEvent"]
	mouse = game.Players.LocalPlayer:GetMouse()
	punching = false
	cooldown = false
	function punch()
		cooldown = true
		local a = Instance.new("Part", game.Players.LocalPlayer.Character)
		a.Transparency = 1
		a.Size = Vector3.new(5, 2, 3)
		a.CanCollide = false
		local b = Instance.new("Weld", a)
		b.Part0 = game.Players.LocalPlayer.Character.Torso
		b.Part1 = a
		b.C1 = CFrame.new(0, 0, 2)
		a.Touched:connect(
			function(c)
				if game.Players:FindFirstChild(c.Parent.Name) then
					local d = game.Players:FindFirstChild(c.Parent.Name)
					if d.Name ~= game.Players.LocalPlayer.Name then
						a:Destroy()
						for e = 1, 100 do
							meleeRemote:FireServer(d)
						end
					end
				end
			end
		)
		wait(1)
		cooldown = false
		a:Destroy()
	end
	mouse.KeyDown:connect(
		function(f)
			if cooldown == false then
				if f:lower() == "f" then
					punch()
				end
			end
		end
	)
end)
gui:Section("Misc")
gui:Button("Kill All", function()
	local prevteam = tostring(game.Players.LocalPlayer.Team)
	game.Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
	wait(0.5)
	function kill(a)
		local A_1 =
		{
		[1] =
		{
		["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
		["Distance"] = 3.2524313926697,
		["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
		["Hit"] = a.Character.Head
		},
		   [2] =
		{
		["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
		["Distance"] = 3.2699294090271,
		["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
		["Hit"] = a.Character.Head
		},
		[3] =
		{
		["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
		["Distance"] = 3.1665518283844,
		["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
		["Hit"] = a.Character.Head
		},
		[4] =
		{
		["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
		["Distance"] = 3.3218522071838,
		["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
		["Hit"] = a.Character.Head
		},
		[5] =
		{
		["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
		["Distance"] = 3.222757101059,
		["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
		["Hit"] = a.Character.Head
		}
		}
		local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
		local Event = game:GetService("ReplicatedStorage").ShootEvent
		Event:FireServer(A_1, A_2)
		Event:FireServer(A_1, A_2)
		end
	
		for i,v in pairs(game.Players:GetChildren())do
		if v.Name ~= game.Players.LocalPlayer.Name then
		kill(v)
		end
		end
		wait(0.5)
	if prevteam == "Inmates" then
	    game.Workspace.Remote.TeamEvent:FireServer("Bright orange")
	elseif prevteam == "Criminals" then
		local touchie = game:GetService("Workspace")["Criminals Spawn"].SpawnLocation
		local playertouchie = game.Players.LocalPlayer.Character.HumanoidRootPart
		firetouchinterest(playertouchie, touchie, 0)
		firetouchinterest(playertouchie, touchie, 1)
	elseif prevteam == "Guards" then
		game.Workspace.Remote.TeamEvent:FireServer("Bright blue")
	end
end)
gui:Button("Arrest All", function()
	local prevteam = tostring(game.Players.LocalPlayer.Team)
	game.Workspace.Remote.TeamEvent:FireServer("Bright blue")
	wait(1)
	for _,v in pairs(game.Players:GetChildren()) do
		if tostring(v.Team) == "Criminals" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
			wait(0.85)
			game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
		end
	end
	
	if prevteam == "Criminals" then
	    local touchie = game:GetService("Workspace")["Criminals Spawn"].SpawnLocation
    	local playertouchie = game.Players.LocalPlayer.Character.HumanoidRootPart
    	firetouchinterest(playertouchie, touchie, 0)
		firetouchinterest(playertouchie, touchie, 1)
	elseif prevteam == "Inmates" then
		game.Workspace.Remote.TeamEvent:FireServer("Bright orange")
	end
end)
gui:Button("Taze Bypass", function()
	local plr = game.Players.LocalPlayer
	local char = plr.Character
	char.ClientInputHandler.Disabled = true
	plr.CharacterAdded:connect(function()
		game.Workspace:WaitForChild(plr.Name)
		char.ClientInputHandler.Disabled = true
	end)
end)
gui:Section("Movement")
gui:Box('Walk Speed', {
    flag = "ws";
    type = 'number';
}, function(new, old, enter)
    repeat
        humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    until
        humanoid
    humanoid.WalkSpeed = tonumber(new)
end)
gui:Box('Jump Power', {
    flag = "jp";
    type = 'number';
}, function(new, old, enter)
    repeat
        humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    until
        humanoid
    humanoid.JumpPower = tonumber(new)
end)
gui:Toggle("Noclip", {flag = "noclip"})
local nam = game.Players.LocalPlayer.Name
game:GetService('RunService').Stepped:connect(function()
    if gui.flags.noclip then
        for a, b in pairs(game.Workspace:GetChildren()) do
            if b.Name == nam then
                for i, v in pairs(game.Workspace[nam]:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end
    end
end)
gui:Toggle("Infinite Stamina", {flag = "infstamina"})
local plr = game.Players.LocalPlayer
spawn(
    function()
        local curstaminamode
        while wait() do
            if gui.flags.infstamina ~= curstaminamode then
                if gui.flags.infstamina then
                    for i,v in next, getgc() do 
                        if type(v) == "function" and getfenv(v).script and getfenv(v).script == plr.Character.ClientInputHandler then 
                            for i2,v2 in next, debug.getupvalues(v) do 
                                if type(v2) == "number" then 
                                    debug.setupvalue(v, i2, math.huge)
                                end
                            end
                        end
                    end
                else
                    for i,v in next, getgc() do 
                        if type(v) == "function" and getfenv(v).script and getfenv(v).script == plr.Character.ClientInputHandler then 
                            for i2,v2 in next, debug.getupvalues(v) do 
                                if type(v2) == "number" then 
                                    debug.setupvalue(v, i2, 12)
                                end
                            end
                        end
                    end
                end
            end
            curstaminamode = gui.flags.infstamina
		end
    end
)
gui2:Section("Team")
gui2:Button("Guards", function()
    game.Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
gui2:Button("Inmates", function()
    game.Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
gui2:Button("Criminals", function()
    local touchie = game:GetService("Workspace")["Criminals Spawn"].SpawnLocation
    local playertouchie = game.Players.LocalPlayer.Character.HumanoidRootPart
    firetouchinterest(playertouchie, touchie, 0)
    firetouchinterest(playertouchie, touchie, 1)
end)
gui2:Button("Neutral", function()
    game.Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)