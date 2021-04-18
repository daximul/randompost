if syn and syn.queue_on_teleport then
	syn.queue_on_teleport('loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/daximul/randompost/main/murbyrolcom.lua"))();')
end

local function Serverhop()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		Serverhop()
	end
end

local function GetRoot()
	local RootPart = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Torso") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso")
	return RootPart
end

loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/daximul/who/main/a/test/what/script.lua")))();

wait(1)

loadstring(game:HttpGetAsync(("https://pastebin.com/raw/XCep3rCU")))();
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

game:GetService("UserInputService").InputBegan:Connect(function(Key, IsChat)
	if IsChat then return end
	if Key.KeyCode == Enum.KeyCode.M then
		Serverhop()
	end
	if Key.KeyCode == Enum.KeyCode.X then
		local props = game:GetService("Workspace").Debris.Props:GetDescendants()
		for i = 1, #props do
			local prop = props[i]
			if prop.Name == "Green" then
				local PlayerCFrame = GetRoot().CFrame
				if prop.Parent.Orientation.Y > -3162 then
					GetRoot().CFrame = prop.Parent.CFrame + Vector3.new(0, 3, 0)
					wait(0.5)
					game:GetService("ReplicatedStorage").Events.Loot:FireServer(prop.Parent)
				end
			end
		end
	end
end)

wait(1)

if (not is_sirhurt_closure) and syn then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ZinityDrops/OwlHubLink/master/OwlHubBack.lua"))();
else
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Patch-Shack/newLoad/master/owlhub.lua"))();
end
