spawn(function()
	local _ProtectionService = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/pamlib/prote.lua/main/main.lua"))()
	local _ParentClientInterface = function(Gui)
		_ProtectionService.ProtectInstance(Gui)
		local HttpService = game:GetService("HttpService")
		local CoreGui = game:GetService("CoreGui")
		Gui.Name = HttpService:GenerateGUID(false):gsub("-", ""):sub(1, math.random(25, 30))
		if (not is_sirhurt_closure) and (syn and syn.protect_gui) then
			syn.protect_gui(Gui)
			Gui.Parent = CoreGui
		elseif get_hidden_gui or gethui then
			local HiddenUI = get_hidden_gui or gethui
			Gui.Parent = HiddenUI()
		elseif CoreGui:FindFirstChild("RobloxGui") then
			Gui.Parent = CoreGui["RobloxGui"]
		else
			Gui.Parent = CoreGui
		end
	end
	local Trademark = Instance.new("ScreenGui")
	_ParentClientInterface(Trademark)
	local Mark = Instance.new("TextLabel")
	Trademark.Name = "Trademark"
	Trademark.ResetOnSpawn = false
	Trademark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Mark.Name = "Mark"
	Mark.Parent = Trademark
	Mark.AnchorPoint = Vector2.new(1, 1)
	Mark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Mark.BackgroundTransparency = 1.000
	Mark.Position = UDim2.new(1, 0, 1, 0)
	Mark.Size = UDim2.new(0, 120, 0, 27)
	Mark.Font = Enum.Font.Gotham
	Mark.Text = "BedWars Client"
	Mark.TextColor3 = Color3.fromRGB(255, 255, 255)
	Mark.TextSize = 14.000
	Mark.TextStrokeTransparency = 0.700
	Mark.Active = false
end)
spawn(function()
	while wait() do
		if not workspace:FindFirstChild("Map") then return end
		for i,v in pairs(workspace.Map.Blocks:GetChildren()) do
			v:SetAttribute("Health", 0)
		end
	end
end)
spawn(function()
	while wait(1) do
		local Players = game:GetService("Players")
		for index,plr in pairs(Players:GetPlayers()) do
			for i,v in pairs(plr.Character:GetDescendants()) do
				if v:IsA("BoxHandleAdornment") then
					v.Color = plr.TeamColor
				end
			end
		end
	end
end)
spawn(function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/DiamondHands-Exploit/BedWarsExploit/main/Source.lua"))() end)
spawn(function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/daximul/who/main/a/test/what/script.lua"))() end)
--// BedWars;
