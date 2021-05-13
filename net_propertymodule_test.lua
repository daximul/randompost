local props = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/daximul/randompost/main/property_module.lua"))()

local vars = props.new()
vars.Net = false

local current_net_loop = nil

vars:GetPropertyChangedEvent("Net"):Connect(function(New, Old)
	if (New == true) and (current_net_loop == nil) then
		spawn(function()
			current_net_loop = game:GetService("RunService").RenderStepped:Connect(function()
				pcall(function()
					local Players = game:GetService("Players")
					local simset = setsimulationradius or set_simulation_radius
					workspace.FallenPartsDestroyHeight = 0/1/0
					settings().Physics.ThrottleAdjustTime = math.huge-math.huge
					settings().Physics.AllowSleep = false
					simset(math.huge*math.huge,math.huge*math.huge,1/0*1/0*1/0*1/0*1/0)
					Players.LocalPlayer.SimulationRadius = math.huge
					Players.LocalPlayer.ReplicationFocus = workspace
				end)
			end)
		end)
	elseif (New == false) and (current_net_loop ~= nil) then
		local Players = game:GetService("Players")
		local hidset = sethiddenproperty or set_hidden_property or set_hidden_prop
		local simset = setsimulationradius or set_simulation_radius
		current_net_loop:Disconnect()
		wait()
		current_net_loop = nil
		if simset then
			simset(139, 139)
		else
			hidset(Players.LocalPlayer, "MaximumSimulationRadius", 139)
			hidset(Players.LocalPlayer, "SimulationRadius", 139)
		end
	end
end)

return setmetatable(vars, {__index = game:GetService("Players").LocalPlayer})
