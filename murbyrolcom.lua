if syn and syn.queue_on_teleport then
	syn.queue_on_teleport('loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/daximul/randompost/main/murbyrolcom.lua"))();')
end
loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/daximul/who/main/a/test/what/script.lua")))();
wait(2)
loadstring(game:HttpGetAsync(("https://pastebin.com/raw/XCep3rCU")))();
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:Connect(function(key)
	if key:lower() == "m" then
		-- local TP = game:GetService("TeleportService")
		-- TP:Teleport(4572253581)
		execCmd("serverhop")
	end
end)
wait(2)
Mouse.KeyDown:connect(function(KeyPressed)
	if KeyPressed:lower() == "x" then
		local props = game:GetService("Workspace").Debris.Props:GetDescendants()
		for i = 1, #props do
			local prop = props[i]
			if prop.Name == "Green" then
				local PlayerCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
				if prop.Parent.Orientation.Y > -3162 then
					LocalPlayer.Character.HumanoidRootPart.CFrame = prop.Parent.CFrame + Vector3.new(0, 3, 0)
					wait(0.5)
					game:GetService("ReplicatedStorage").Events.Loot:FireServer(prop.Parent)
				end
			end
		end
	end
end)
wait(2)
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ZinityDrops/OwlHubLink/master/OwlHubBack.lua"))();
