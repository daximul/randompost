local ScriptsHolder = {}

local AddScript = function(scriptname, devs, gameid, scrfunction)
	ScriptsHolder[#ScriptsHolder + 1] = {
		["Name"] = tostring(scriptname),
		["Dev"] = tostring(devs),
		["ID"] = tostring(gameid),
		["Func"] = scrfunction
	}
end

local LoadURL = function(link)
	return loadstring(game:HttpGetAsync((tostring(link))))();
end

AddScript("CMD-X", "Various Developers", "Universal", function()
	LoadURL("https://raw.githubusercontent.com/Toon-arch/cmdx-1.5/main/minified.lua")
end)

AddScript("Sense Client", "Toon", "Universal", function()
	LoadURL("https://raw.githubusercontent.com/Toon-arch/SenseClient/main/main.lua")
end)

AddScript("Hotel Elephant [Ruin Map]", "Redus", "23578803", function()
	LoadURL("https://raw.githubusercontent.com/Redusofficial/Redus-Roblox-Scripts/main/Hotel%20elephant.lua")
end)

AddScript("Saber Simulator [Auto Farm]", "RyanRenolds", "3823781113", function()
	LoadURL("https://raw.githubusercontent.com/ScriptRUs/Banana/main/SaberSimulatorV2.lua")
end)

AddScript("Zombie Uprising [Kill Aura]", "MSDOS", "4972091010", function()
	LoadURL("https://raw.githubusercontent.com/toskaman/fb/master/MSDOS")
end)

return ScriptsHolder
