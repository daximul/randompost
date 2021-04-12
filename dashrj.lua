if syn and syn.queue_on_teleport then
	syn.queue_on_teleport('loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/daximul/randompost/main/dashrj.lua"))();')
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

game:GetService("UserInputService").InputBegan:Connect(function(Key, IsChat)
	if IsChat then return end
	if Key.KeyCode == Enum.KeyCode.Minus then
		Serverhop()
	end
end)
