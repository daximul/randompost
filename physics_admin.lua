local function CreateInterface()
	local Interface = Instance.new("ScreenGui")
	local List = Instance.new("Frame")
	local Border = Instance.new("Frame")
	local Frame = Instance.new("Frame")
	local Shadow = Instance.new("ImageLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Shadow_2 = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local Close = Instance.new("TextButton")
	local Main = Instance.new("Frame")
	local Shadow_3 = Instance.new("ImageLabel")
	local cmdsu = Instance.new("TextLabel")
	local NotedBar = Instance.new("TextLabel")
	local Box = Instance.new("TextBox")
	local Shadow_4 = Instance.new("ImageLabel")
	local CommandTemplate = Instance.new("TextButton")
	local Label = Instance.new("TextLabel")
	Interface.Name = "Interface"
	Interface.DisplayOrder = 32767
	Interface.ResetOnSpawn = false
	List.Name = "List"
	List.Parent = Interface
	List.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	List.BorderSizePixel = 0
	List.Position = UDim2.new(0.694000006, -75, 10, -105)
	List.Size = UDim2.new(0, 2, 0, 6)
	List.Visible = false
	List.ZIndex = 0
	Border.Name = "Border"
	Border.Parent = List
	Border.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Border.BorderColor3 = Color3.fromRGB(94, 83, 81)
	Border.BorderSizePixel = 0
	Border.Size = UDim2.new(12.799943, -10, 2.61904764, -10)
	Border.ZIndex = 0
	Frame.Parent = Border
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderColor3 = Color3.fromRGB(52, 45, 45)
	Frame.BorderSizePixel = 0
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(0, -2147483648, 0, 0)
	Frame.Size = UDim2.new(0, -10, 8.18000031, -42)
	Frame.ZIndex = 10
	Shadow.Name = "Shadow"
	Shadow.Parent = Frame
	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow.BackgroundTransparency = 1.000
	Shadow.Position = UDim2.new(0, 0, 0, -4)
	Shadow.Size = UDim2.new(1, 0, 1, 8)
	Shadow.ZIndex = 5
	Shadow.Image = "rbxassetid://222785823"
	Shadow.ScaleType = Enum.ScaleType.Slice
	Shadow.SliceCenter = Rect.new(100, 100, 100, 100)
	Shadow.SliceScale = 0.250
	ScrollingFrame.Parent = Frame
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderColor3 = Color3.fromRGB(52, 45, 45)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.ClipsDescendants = false
	ScrollingFrame.Position = UDim2.new(-0.257349551, 0, -0.00863282476, 0)
	ScrollingFrame.Selectable = false
	ScrollingFrame.Size = UDim2.new(-0.092928946, 0, -1.44635117, -5)
	ScrollingFrame.ZIndex = 10
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
	ScrollingFrame.ScrollBarThickness = 4
	UIListLayout.Parent = ScrollingFrame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
	Shadow_2.Name = "Shadow"
	Shadow_2.Parent = List
	Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_2.BackgroundTransparency = 1.000
	Shadow_2.Position = UDim2.new(0, -2, 0, -2)
	Shadow_2.Size = UDim2.new(1, 5, 1, 5)
	Shadow_2.ZIndex = -5
	Shadow_2.Image = "rbxassetid://222785823"
	Shadow_2.ScaleType = Enum.ScaleType.Slice
	Shadow_2.SliceCenter = Rect.new(100, 100, 100, 100)
	Shadow_2.SliceScale = 0.250
	Title.Name = "Title"
	Title.Parent = List
	Title.Active = true
	Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(49.5, -50, -0.80951947, 5)
	Title.Selectable = true
	Title.Size = UDim2.new(0, 1, 0, 0)
	Title.Font = Enum.Font.Gotham
	Title.Text = ""
	Title.TextColor3 = Color3.fromRGB(0, 0, 0)
	Title.TextSize = 14.000
	Close.Name = "Close"
	Close.Parent = List
	Close.Active = false
	Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(1.59997559, 0, 0.0238138828, 0)
	Close.Font = Enum.Font.Gotham
	Close.Text = ""
	Close.TextColor3 = Color3.fromRGB(0, 0, 0)
	Close.TextSize = 14.000
	Main.Name = "Main"
	Main.Parent = Interface
	Main.BackgroundColor3 = Color3.fromRGB(24, 21, 19)
	Main.BackgroundTransparency = 0.700
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, -75, 1.5, -105)
	Main.Size = UDim2.new(0, 178, 0, 31)
	Main.ZIndex = 0
	Shadow_3.Name = "Shadow"
	Shadow_3.Parent = Main
	Shadow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_3.BackgroundTransparency = 1.000
	Shadow_3.Position = UDim2.new(0, -2, 0, -2)
	Shadow_3.Size = UDim2.new(1, 5, 1, 5)
	Shadow_3.ZIndex = -5
	Shadow_3.Image = "rbxassetid://222785823"
	Shadow_3.ScaleType = Enum.ScaleType.Slice
	Shadow_3.SliceCenter = Rect.new(100, 100, 100, 100)
	Shadow_3.SliceScale = 0.250
	cmdsu.Name = "cmdsu"
	cmdsu.Parent = Main
	cmdsu.BackgroundColor3 = Color3.fromRGB(29, 25, 23)
	cmdsu.BackgroundTransparency = 1.000
	cmdsu.BorderColor3 = Color3.fromRGB(52, 45, 45)
	cmdsu.BorderSizePixel = 0
	cmdsu.Position = UDim2.new(0, 20, 0, 6)
	cmdsu.Size = UDim2.new(0.899999976, -10, 1.93700004, -42)
	cmdsu.Font = Enum.Font.Gotham
	cmdsu.Text = ""
	cmdsu.TextColor3 = Color3.fromRGB(62, 62, 62)
	cmdsu.TextSize = 12.000
	cmdsu.TextWrapped = true
	cmdsu.TextXAlignment = Enum.TextXAlignment.Left
	NotedBar.Name = "NotedBar"
	NotedBar.Parent = Main
	NotedBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotedBar.BackgroundTransparency = 1.000
	NotedBar.BorderSizePixel = 0
	NotedBar.Size = UDim2.new(0, 20, 0, 30)
	NotedBar.Font = Enum.Font.Gotham
	NotedBar.Text = ">"
	NotedBar.TextColor3 = Color3.fromRGB(163, 153, 152)
	NotedBar.TextSize = 12.000
	NotedBar.TextWrapped = true
	Box.Name = "Box"
	Box.Parent = Main
	Box.Active = false
	Box.BackgroundColor3 = Color3.fromRGB(29, 25, 23)
	Box.BackgroundTransparency = 1.000
	Box.BorderColor3 = Color3.fromRGB(52, 45, 45)
	Box.ClipsDescendants = true
	Box.Position = UDim2.new(0, 20, 0, 6)
	Box.Selectable = false
	Box.Size = UDim2.new(0.899999976, -10, 1.93681777, -42)
	Box.ZIndex = 10
	Box.Font = Enum.Font.Gotham
	Box.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	Box.Text = ""
	Box.TextColor3 = Color3.fromRGB(163, 153, 152)
	Box.TextSize = 12.000
	Box.TextWrapped = true
	Box.TextXAlignment = Enum.TextXAlignment.Left
	Shadow_4.Name = "Shadow"
	Shadow_4.Parent = Box
	Shadow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_4.BackgroundTransparency = 1.000
	Shadow_4.Position = UDim2.new(0, 0, 0, -4)
	Shadow_4.Size = UDim2.new(1, 0, 1, 8)
	Shadow_4.Visible = false
	Shadow_4.ZIndex = 5
	Shadow_4.Image = "rbxassetid://222785823"
	Shadow_4.ScaleType = Enum.ScaleType.Slice
	Shadow_4.SliceCenter = Rect.new(100, 100, 100, 100)
	Shadow_4.SliceScale = 0.250
	CommandTemplate.Name = "CommandTemplate"
	CommandTemplate.Parent = Interface
	CommandTemplate.Active = false
	CommandTemplate.BackgroundColor3 = Color3.fromRGB(29, 25, 23)
	CommandTemplate.BorderColor3 = Color3.fromRGB(52, 45, 45)
	CommandTemplate.Position = UDim2.new(0.5, -85, 0.5, -10)
	CommandTemplate.Selectable = false
	CommandTemplate.Size = UDim2.new(0, 110, 0, 20)
	CommandTemplate.Visible = false
	CommandTemplate.ZIndex = 10
	CommandTemplate.AutoButtonColor = false
	CommandTemplate.Text = ""
	Label.Name = "Label"
	Label.Parent = CommandTemplate
	Label.BackgroundColor3 = Color3.fromRGB(29, 25, 23)
	Label.BackgroundTransparency = 1.000
	Label.BorderColor3 = Color3.fromRGB(52, 45, 45)
	Label.BorderSizePixel = 0
	Label.Position = UDim2.new(0, 5, 0.5, -6)
	Label.Size = UDim2.new(1.14545453, -26, 0, 12)
	Label.ZIndex = 10
	Label.Font = Enum.Font.Gotham
	Label.Text = "Bruh"
	Label.TextColor3 = Color3.fromRGB(163, 153, 152)
	Label.TextScaled = true
	Label.TextSize = 12.000
	Label.TextWrapped = true
	return Interface
end
local function SetParent(Gui)
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
local GUI = CreateInterface()
SetParent(GUI)
local Main = GUI.Main
local Cmdbar = Main.Box
local CommandsGui = GUI.List
local CMDsF = GUI.List.Border.Frame.ScrollingFrame
local Players = game:GetService("Players")
local PlrMouse = Players.LocalPlayer:GetMouse()
local Prefix = "\\"
local cmds = {}
local customAlias = {}
local DEBUG = false
local function Startup()
	Main.Position = UDim2.new(0.5, -75, 1.5, -105)
	CommandsGui.Position = UDim2.new(0.694, -75, 10, -105)
	Cmdbar.Text = ""
	Main.cmdsu.Text = ""
end
local function CmdBarStatus(bool)
	local GuiPositions = {
		Shown = UDim2.new(0.5, -75, 0.997, -105),
		Hidden = UDim2.new(0.5, -75, 1.5, -105),
	}
	if bool == true then
		Main:TweenPosition(GuiPositions.Shown, "InOut", "Sine", 0.4, true, nil)
	else
		Main:TweenPosition(GuiPositions.Hidden, "InOut", "Sine", 0.4, true, nil)
	end
end
local function CaptureCmdBar()
	Cmdbar:CaptureFocus()
	spawn(function()
		repeat Cmdbar.Text = '' until Cmdbar.Text == ''
	end)
	spawn(function()
		CmdBarStatus(true)
	end)
end
local function FindInTable(tbl,val)
	if tbl == nil then return false end
	for _,v in pairs(tbl) do
		if v == val then return true end
	end 
	return false
end
local function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
local function GetInTable(Table, Name)
	for i = 1, #Table do
		if Table[i] == Name then
			return i
		end
	end
	return false
end
local function findCmd(cmd_name)
	for i,v in pairs(cmds)do
		if v.NAME:lower()==cmd_name:lower() or FindInTable(v.ALIAS,cmd_name:lower()) then
			return v
		end
	end
	return customAlias[cmd_name:lower()]
end
local function splitString(str,delim)
	local broken = {}
	if delim == nil then delim = "," end
	for w in string.gmatch(str,"[^"..delim.."]+") do
		table.insert(broken,w)
	end
	return broken
end
local cmdHistory = {}
local lastCmds = {}
local historyCount = 0
local split = " "
local lastBreakTime = 0
local cargs = ""
local function execCmd(cmdStr,speaker,store)
	cmdStr = cmdStr:gsub("%s+$","")
	spawn(function()
		local rawCmdStr = cmdStr
		cmdStr = string.gsub(cmdStr,"\\\\","%%BackSlash%%")
		local commandsToRun = splitString(cmdStr,"\\")
		for i,v in pairs(commandsToRun) do
			v = string.gsub(v,"%%BackSlash%%","\\")
			local x,y,num = v:find("^(%d+)%^")
			local cmdDelay = 0
			local infTimes = false
			if num then
				v = v:sub(y+1)
				local x,y,del = v:find("^([%d%.]+)%^")
				if del then
					v = v:sub(y+1)
					cmdDelay = tonumber(del) or 0
				end
			else
				local x,y = v:find("^inf%^")
				if x then
					infTimes = true
					v = v:sub(y+1)
					local x,y,del = v:find("^([%d%.]+)%^")
					if del then
						v = v:sub(y+1)
						del = tonumber(del) or 1
						cmdDelay = (del > 0 and del or 1)
					else
						cmdDelay = 1
					end
				end
			end
			num = tonumber(num or 1)

			if v:sub(1,1) == "!" then
				local chunks = splitString(v:sub(2),split)
				if chunks[1] and lastCmds[chunks[1]] then v = lastCmds[chunks[1]] end
			end

			local args = splitString(v,split)
			local cmdName = args[1]
			local cmd = findCmd(cmdName)
			if cmd then
				table.remove(args,1)
				cargs = args
				if not speaker then speaker = Players.LocalPlayer end
				if store then
					if speaker == Players.LocalPlayer then
						if cmdHistory[1] ~= rawCmdStr and rawCmdStr:sub(1,11) ~= 'lastcommand' and rawCmdStr:sub(1,7) ~= 'lastcmd' then
							table.insert(cmdHistory,1,rawCmdStr)
						end
					end
					if #cmdHistory > 30 then table.remove(cmdHistory) end

					lastCmds[cmdName] = v
				end
				local cmdStartTime = tick()
				if infTimes then
					while lastBreakTime < cmdStartTime do
						local success,err = pcall(cmd.FUNC,args, speaker)
						if not success and DEBUG then
							warn("Command Error:", cmdName, err)
						end
						wait(cmdDelay)
					end
				else
					for rep = 1,num do
						if lastBreakTime > cmdStartTime then break end
						local success,err = pcall(function()
							cmd.FUNC(args, speaker)
						end)
						if not success and DEBUG then
							warn("Command Error:", cmdName, err)
						end
						if cmdDelay ~= 0 then wait(cmdDelay) end
					end
				end
			end
		end
	end)
end
local function getargstring(begin)
	local start = begin-1
	local AA = '' for i,v in pairs(cargs) do
		if i > start then
			if AA ~= '' then
				AA = AA .. ' ' .. v
			else
				AA = AA .. v
			end
		end
	end
	return AA
end
local function addcmd(name,alias,func,plgn)
	cmds[#cmds+1]=
		{
			NAME=name;
			ALIAS=alias or {};
			FUNC=func;
			PLUGIN=plgn;
		}
end
local SpecialPlayerCases = {
	["all"] = function(speaker)return Players:GetPlayers() end,
	["others"] = function(speaker)
		local plrs = {}
		for i,v in pairs(Players:GetPlayers()) do
			if v ~= speaker then
				table.insert(plrs,v)
			end
		end
		return plrs
	end,
	["me"] = function(speaker)return {speaker} end,
	["#(%d+)"] = function(speaker,args,currentList)
		local returns = {}
		local randAmount = tonumber(args[1])
		local players = {unpack(currentList)}
		for i = 1,randAmount do
			if #players == 0 then break end
			local randIndex = math.random(1,#players)
			table.insert(returns,players[randIndex])
			table.remove(players,randIndex)
		end
		return returns
	end,
	["random"] = function(speaker,args,currentList)
		local players = currentList
		return {players[math.random(1,#players)]}
	end,
	["%%(.+)"] = function(speaker,args)
		local returns = {}
		local team = args[1]
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team and string.sub(string.lower(plr.Team.Name),1,#team) == string.lower(team) then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["allies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["enemies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["team"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonteam"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["friends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonfriends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if not plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["guests"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Guest then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["bacons"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character:FindFirstChild('Pal Hair') or plr.Character:FindFirstChild('Kate Hair') then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["age(%d+)"] = function(speaker,args)
		local returns = {}
		local age = tonumber(args[1])
		if not age == nil then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.AccountAge <= age then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nearest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local lowest = math.huge
		local NearestPlayer = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance < lowest then
					lowest = distance
					NearestPlayer = {plr}
				end
			end
		end
		return NearestPlayer
	end,
	["farthest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local highest = 0
		local Farthest = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance > highest then
					highest = distance
					Farthest = {plr}
				end
			end
		end
		return Farthest
	end,
	["group(%d+)"] = function(speaker,args)
		local returns = {}
		local groupID = tonumber(args[1])
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsInGroup(groupID) then  
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["alive"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["dead"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if (not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid")) or plr.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["rad(%d+)"] = function(speaker,args)
		local returns = {}
		local radius = tonumber(args[1])
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and getRoot(plr.Character) then
				local magnitude = (getRoot(plr.Character).Position-getRoot(speakerChar).Position).magnitude
				if magnitude <= radius then table.insert(returns,plr) end
			end
		end
		return returns
	end
}
local function toTokens(str)
	local tokens = {}
	for op,name in string.gmatch(str,"([+-])([^+-]+)") do
		table.insert(tokens,{Operator = op,Name = name})
	end
	return tokens
end
local function onlyIncludeInTable(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end
local function removeTableMatches(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end
local function getPlayersByName(name)
	local found = {}
	for i,v in pairs(Players:GetChildren()) do
		if string.sub(string.lower(v.Name),1,#name) == string.lower(name) then
			table.insert(found,v)
		end
	end
	return found
end
local function getPlayer(list,speaker)
	if list == nil then return {speaker.Name} end
	local nameList = splitString(list,",")

	local foundList = {}

	for _,name in pairs(nameList) do
		if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
		local tokens = toTokens(name)
		local initialPlayers = Players:GetPlayers()

		for i,v in pairs(tokens) do
			if v.Operator == "+" then
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = onlyIncludeInTable(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
				end
			else
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = removeTableMatches(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
				end
			end
		end

		for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
	end

	local foundNames = {}
	for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end

	return foundNames
end
local function autoComplete(str,curText)
	local endingChar = {"[", "/", "(", " "}
	local stop = 0
	for i=1,#str do
		local c = str:sub(i,i)
		if table.find(endingChar, c) then
			stop = i
			break
		end
	end
	curText = curText or Cmdbar.Text
	local subPos = 0
	local pos = 1
	local findRes = string.find(curText,"\\",pos)
	while findRes do
		subPos = findRes
		pos = findRes+1
		findRes = string.find(curText,"\\",pos)
	end
	if curText:sub(subPos+1,subPos+1) == "!" then subPos = subPos + 1 end
	Cmdbar.Text = curText:sub(1,subPos) .. str:sub(1, stop - 1)..' '
	wait()
	Cmdbar.Text = Cmdbar.Text:gsub( '\t', '' )
	Cmdbar.CursorPosition = #Cmdbar.Text+1
end
local function fixChar(str,curText)
	if str == nil then
		return
	else
		local endingChar = {"[", "/", "(", " "}
		local stop = 0
		for i=1,#str do
			local c = str:sub(i,i)
			if table.find(endingChar, c) then
				stop = i
				break
			end
		end
		curText = curText or Cmdbar.Text
		local subPos = 0
		local pos = 1
		local findRes = string.find(curText,"\\",pos)
		while findRes do
			subPos = findRes
			pos = findRes+1
			findRes = string.find(curText,"\\",pos)
		end
		if curText:sub(subPos+1,subPos+1) == "!" then subPos = subPos + 1 end
		Main.cmdsu.Text = curText:sub(1,subPos) .. str:sub(1, stop - 1)..' '
		wait()
		Main.cmdsu.Text = Main.cmdsu.Text:gsub( '\t', '' )
	end
end
local function Match(name,str)
	str = str:gsub("%W", "%%%1")
	return name:lower():find(str:lower()) and true
end
local topCommand = nil
function IndexContents(str)
	topCommand = nil
	local chunks = {}
	if str:sub(#str,#str) == "\\" then str = "" end
	for w in string.gmatch(str,"[^\\]+") do
		table.insert(chunks,w)
	end
	if #chunks > 0 then str = chunks[#chunks] end
	for i,v in next, CMDsF:GetChildren() do
		if v:IsA("TextButton") then
			if Match(v.Label.Text, str) then
				if topCommand == nil then
					topCommand = v.Label.Text
				end
			end
		end
	end
end
spawn(function() IndexContents("") end)
local function getcommand(strn)
	if strn:sub(1,string.len(Prefix))==Prefix then return{"cmd",string.len(Prefix)+1}
	end return
end
local function do_execute(str, plr)
	str = str:gsub('/e ', '')
	local t = getcommand(str)
	if not t then return end
	str = str:sub(t[2])
	if t[1] == "cmd" then
		execCmd(str, plr, true)
		IndexContents("")
	end
end
Players.LocalPlayer.Chatted:Connect(function(message)
	spawn(function()
		wait()
		message = message:lower()
		do_execute(message, Players.LocalPlayer)
	end)
end)
local tabComplete = nil
Cmdbar.FocusLost:Connect(function(enterPressed)
	Main.cmdsu.Text = ""
	if tabComplete then tabComplete:Disconnect() end
	wait()
	if not Cmdbar:IsFocused() then
		IndexContents("")
	end
end)
Cmdbar:GetPropertyChangedSignal("Text"):Connect(function()
	if Cmdbar:IsFocused() then
		IndexContents(Cmdbar.Text)
		fixChar(topCommand)
	end
end)
Cmdbar.Focused:Connect(function()
	local userinpser = game:GetService("UserInputService")
	tabComplete = userinpser.InputBegan:Connect(function(input, gameProcessed)
		if Cmdbar:IsFocused() then
			if input.KeyCode == Enum.KeyCode.Tab and topCommand ~= nil then
				autoComplete(topCommand)
			end
		else
			tabComplete:Disconnect()
		end
	end)
end)
local function Search()
	local InputText = string.upper(Cmdbar.Text)
	for _,button in pairs(CMDsF:GetChildren())do
		if button:IsA("TextButton")then
			if InputText == "" or string.find(string.upper(button.Name), InputText) ~= nil then
				button.Visible = true
			else
				button.Visible = false
			end
		end
	end
end
Cmdbar.Changed:Connect(Search)
spawn(function()
	CMDsF.CanvasSize = UDim2.new(0, 0, 0, CMDsF.UIListLayout.AbsoluteContentSize.Y)
	CMDsF.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		CMDsF.CanvasSize = UDim2.new(0, 0, 0, CMDsF.UIListLayout.AbsoluteContentSize.Y)
	end)
end)
local function addlisttext(text)
	local NewCommand = GUI.CommandTemplate:Clone()
	NewCommand.Label.Text = text
	NewCommand.Name = "Command"
	NewCommand.Parent = CMDsF
	NewCommand.Visible = true
end
PlrMouse.KeyDown:Connect(function(key)
	if (key == Prefix) then
		CaptureCmdBar()
	end
end)
Cmdbar.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		pcall(function()
			CmdBarStatus(false)
		end)
		local cmdbarText = Cmdbar.Text:gsub("^"..'%'..Prefix,"")
		execCmd(cmdbarText, Players.LocalPlayer, true)
	end
	wait()
	if not Cmdbar:IsFocused() then
		Cmdbar.Text = ""
	end
end)
local function newCmd(name, aliases, func)
	local id = #cmds + 1
	cmds[id] = {
		NAME = name,
		ALIAS = aliases or {},
		FUNC = func
	}
	addlisttext(name)
	if aliases ~= nil or aliases ~= {} or aliases ~= { } then
		for i,v in pairs(aliases) do
			addlisttext(v)
		end
	end
end
Startup()
newCmd(" ", {}, " ", " ", function(args, speaker) end)

local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop

local function SetSimulationRadius()
	settings().Physics.AllowSleep = false
	if sethidden then
		pcall(function()
			settings().Physics.AllowSleep = false
			sethidden(Players.LocalPlayer, "SimulationRadius", math.huge)
			sethidden(Players.LocalPlayer, "MaxSimulationRadius", math.huge)
			Players.LocalPlayer.MaximumSimulationRadius = math.huge
			Players.LocalPlayer.ReplicationFocus = workspace
		end)
	end
end

local CollideOn = true
local SelectedParts = {}
local OnlySelectedParts = false
local BlackHoleDestroyParts = true

local function SelectedPartsCheck()
	if OnlySelectedParts == false then
		return false
	else
		return true
	end
end

spawn(function()

newCmd("nogravparts", {}, function(args, speaker)
	SetSimulationRadius()
			   
				if SelectedPartsCheck() == false then

					local function zeroGrav(part)
						if part:FindFirstChild("BodyForce") then return end
						local temp = Instance.new("BodyForce")
						temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
						temp.Parent = part
					end

				for i,v in ipairs(workspace:GetDescendants()) do
					if v:IsA("BasePart") and v.Anchored == false then
						if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
							zeroGrav(v)
						end
					end
				end
			else

				local function zeroGrav(part)
					if part:FindFirstChild("BodyForce") then return end
					local temp = Instance.new("BodyForce")
					temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
					temp.Parent = part
				end

				for i,v in ipairs(SelectedParts) do
					if v:IsA("BasePart") and v.Anchored == false then
						if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
							zeroGrav(v)
						end
					end
				end
			end
end)

newCmd("gravparts", {}, function(args, speaker)
	for i,v in ipairs(workspace:GetDescendants()) do
					if v:IsA("Part") and v.Anchored == false then
						v.CanCollide = true
						if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						v:FindFirstChild("BodyForce"):Destroy()
				end
end)

newCmd("supergravparts", {}, function(args, speaker)
	execCmd("gravparts")
			wait(0.3)
			
			SetSimulationRadius()
			
			if SelectedPartsCheck() == false then

			local function SuperGrav(part)
				if part:FindFirstChild("BodyForce") then return end
				local temp2 = Instance.new("BodyForce")
				temp2.Force = part:GetMass() * Vector3.new(0,-5500,0)
				temp2.Parent = part
			end	

			for i,v in ipairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and v.Anchored == false then
					if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						SuperGrav(v)
					end
				end
			end
end)

newCmd("invertgravparts", {}, function(args, speaker)
	execCmd("gravparts")

			SetSimulationRadius()

			if SelectedPartsCheck() == false then

				local function InvertGrav(part)
					if part:FindFirstChild("BodyForce") then return end
					local temp2 = Instance.new("BodyForce")
					temp2.Force = part:GetMass() * Vector3.new(0,5500,0)
					temp2.Parent = part
				end	

			for i,v in ipairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and v.Anchored == false then
					if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						InvertGrav(v)
					end
				end
			end
end)

newCmd("pushparts", {}, function(args, speaker)
	SetSimulationRadius()

			if SelectedPartsCheck() == false then

				local function InvertGrav2(part)
					if part:FindFirstChild("BodyForce") then return end
					local temp2 = Instance.new("BodyForce")
					temp2.Force = part:GetMass() * Vector3.new(0,1000,0)
					temp2.Parent = part
				end
			
			for i,v in ipairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and v.Anchored == false then
					if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						InvertGrav2(v)
					end
				end
			end
			wait(0.45)
			execCmd("gravparts")
		else

			local function InvertGrav2(part)
				if part:FindFirstChild("BodyForce") then return end
				local temp2 = Instance.new("BodyForce")
				temp2.Force = part:GetMass() * Vector3.new(0,1000,0)
				temp2.Parent = part
			end

			for i,v in ipairs(SelectedParts) do
				if v:IsA("BasePart") and v.Anchored == false then
					if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						InvertGrav2(v)
					end
				end
			end
			wait(0.45)
			execCmd("gravparts")
		end
end)

newCmd("bombparts", {}, function(args, speaker)
	SetSimulationRadius()

			local function InvertGrav3(part)
				if part:FindFirstChild("BodyForce") then return end
				local temp2 = Instance.new("BodyForce")
				temp2.Force = part:GetMass() * Vector3.new(0,1250,0)
				temp2.Parent = part
			end	
			for i,v in ipairs(workspace:GetDescendants()) do
				if v:IsA("Part") and v.Anchored == false then
					if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						InvertGrav3(v)
					end
				end
			end
			wait(0.7)
			execCmd("gravparts")
			wait(0.3)
			
			SetSimulationRadius()

			local function SuperGrav22(part)
				if part:FindFirstChild("BodyForce") then return end
				local temp2 = Instance.new("BodyForce")
				temp2.Force = part:GetMass() * Vector3.new(0,-3500,0)
				temp2.Parent = part
			end	
			for i,v in ipairs(workspace:GetDescendants()) do
				if v:IsA("Part") and v.Anchored == false then
					if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						SuperGrav22(v)
					end
				end
			end
			wait(0.7)
			execCmd("gravparts")
			wait(0.1)
			
			SetSimulationRadius()

			local function zeroGrav2(part)
				if part:FindFirstChild("BodyForce") then return end
				local temp = Instance.new("BodyForce")
				temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
				temp.Parent = part
			end
			
			for i,v in ipairs(workspace:GetDescendants()) do
				if v:IsA("Part") and v.Anchored == false then
					if not (v:IsDescendantOf(Players.LocalPlayer.Character)) then
						zeroGrav2(v)
					end
				end
			end
			wait(3)
			execCmd("gravparts")
end)

newCmd("deleteunanchored", {"deleteua", "cleanua"}, function(args, speaker)
	SetSimulationRadius()

	local LocalPlayer = game:GetService("Players").LocalPlayer

	local unanchoredparts7 = {}

	local movers = {}

	if SelectedPartsCheck() == false then
			
			for index, part in pairs(workspace:GetDescendants()) do
				if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
					part.CanCollide = false
			table.insert(unanchoredparts7, part)
			if part:FindFirstChildOfClass("BodyPosition") ~= nil then
				part:FindFirstChildOfClass("BodyPosition"):Destroy()
			end
		end
	end
	 wait(0.2)
	
	for index, part in pairs(unanchoredparts7) do
		local mover = Instance.new("BodyPosition", part)
		table.insert(movers, mover)
		mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			end
		
		for index, mover in pairs(movers) do
			mover.Position = Vector3.new(0,workspace.FallenPartsDestroyHeight + 1,0)
		end
		wait(2)
		for index, mover in pairs(movers) do
			mover:Destroy()
	end
else
	for index, part in pairs(SelectedParts) do
		if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
			part.CanCollide = false
	if part:FindFirstChildOfClass("BodyPosition") ~= nil then
		part:FindFirstChildOfClass("BodyPosition"):Destroy()
	end
end
end
wait(0.2)

for index, part in pairs(SelectedParts) do
local mover = Instance.new("BodyPosition", part)
table.insert(movers, mover)
mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	end

for index, mover in pairs(movers) do
	mover.Position = Vector3.new(0,workspace.FallenPartsDestroyHeight + 1,0)
end
wait(2)
for index, mover in pairs(movers) do
	mover:Destroy()
end
end
end)

newCmd("moveparts", {}, function(args, speaker)
	SetSimulationRadius()

		local players = getPlayer(args[1], speaker) 
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local unanchoredparts = {}
		local movers = {}
 

		if SelectedPartsCheck() == false then

				for index, part in pairs(workspace:GetDescendants()) do
					if part:IsA("Part" or "MeshPart" or "Model") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
				table.insert(unanchoredparts, part)
				if part:FindFirstChildOfClass("BodyPosition") ~= nil then
					part:FindFirstChildOfClass("BodyPosition"):Destroy()
				end
			end
		end

		for index, part in pairs(unanchoredparts) do
			local mover = Instance.new("BodyPosition", part)
			table.insert(movers, mover)
			mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				end
				moving = true
		repeat
			for i,plr in pairs(players)do
			for index, mover in pairs(movers) do
				mover.Position = game:GetService("Players")[plr].Character.HumanoidRootPart.CFrame:PointToWorldSpace()
			end
			end
			wait()
		until moving == false
	else
		for index, part in pairs(SelectedParts) do
			if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
		if part:FindFirstChildOfClass("BodyPosition") ~= nil then
			part:FindFirstChildOfClass("BodyPosition"):Destroy()
		end
	end
end

for index, part in pairs(SelectedParts) do
	local mover = Instance.new("BodyPosition", part)
	table.insert(movers, mover)
	mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		end
		moving = true
repeat
	for i,plr in pairs(players)do
	for index, mover in pairs(movers) do
		mover.Position = game:GetService("Players")[plr].Character.HumanoidRootPart.CFrame:PointToWorldSpace()
	end
	end
	wait()
until moving == false
	end
end)

newCmd("movepartsmouse", {}, function(args, speaker)
	SetSimulationRadius()

		  local LocalPlayer = game:GetService("Players").LocalPlayer
          local mouse = LocalPlayer:GetMouse()
		  local unanchoredparts2 = {}
		  local movers2 = {}
   

		  if SelectedPartsCheck() == false then

				  for index, part in pairs(workspace:GetDescendants())  do
					  if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
				  table.insert(unanchoredparts2, part)
				  if part:FindFirstChildOfClass("BodyPosition") ~= nil then
					  part:FindFirstChildOfClass("BodyPosition"):Destroy()
				  end
			  end
		  end
  
		  for index, part in pairs(unanchoredparts2) do
			  local mover2 = Instance.new("BodyPosition", part)
			  table.insert(movers2, mover2)
			  mover2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				  end
				  moving2 = true
		  repeat
			  for index, mover3 in pairs(movers2) do
				  mover3.Position = mouse.Hit:PointToWorldSpace()
			  end
			  game:GetService("RunService").Stepped:wait()
		  until moving2 == false
		else
			for index, part in pairs(SelectedParts)  do
				if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
			if part:FindFirstChildOfClass("BodyPosition") ~= nil then
				part:FindFirstChildOfClass("BodyPosition"):Destroy()
			end
		end
	end

	for index, part in pairs(SelectedParts) do
		local mover2 = Instance.new("BodyPosition", part)
		table.insert(movers2, mover2)
		mover2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			end
			moving2 = true
	repeat
		for index, mover3 in pairs(movers2) do
			mover3.Position = mouse.Hit:PointToWorldSpace()
		end
		game:GetService("RunService").Stepped:wait()
	until moving2 == false
	  end
end)

newCmd("unmoveparts", {}, function(args, speaker)
	moving = false
		moving2 = false
		for i,mov in pairs(workspace:GetDescendants())do
		if mov:IsA("BodyPosition") then
			mov:Destroy()
			end
		end
end)

newCmd("setblackhole", {}, function(args, speaker)
	local ball = Instance.new("Part", workspace)
			ball.Anchored = true
			ball.CanCollide = false
			ball.Material = "Glass"
			ball.Shape = "Ball"
			ball.Color = Color3.fromRGB(56, 0, 85)
			ball.Size = Vector3.new(4,4,4)
			ball.Name = "BlackHoleCenter"
			ball.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
end)

newCmd("blackhole", {}, function(args, speaker)
	SetSimulationRadius()

  local players = getPlayer(args[1], speaker) 
  local LocalPlayer = game:GetService("Players").LocalPlayer
  local unanchoredparts = {}
  local movers = {}


  if SelectedPartsCheck() == false then

		  for index, part in pairs(workspace:GetDescendants()) do
			  if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false and part.Name == "BlackHoleCenter" == false then
		  table.insert(unanchoredparts, part)
		  if part:FindFirstChildOfClass("BodyPosition") ~= nil then
			  part:FindFirstChildOfClass("BodyPosition"):Destroy()
		  end
	  end
  end

  for index, part in pairs(unanchoredparts) do
	  local mover = Instance.new("BodyPosition", part)
	  table.insert(movers, mover)
	  mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		  end

		  cowboy = true

	if BlackHoleDestroyParts == true then


		bhe = workspace:FindFirstChild("BlackHoleCenter").Touched:Connect(function(part)
			if part.Anchored == true and part.BodyPosition == nil then
                return
			elseif part.Anchored == false and part.BodyPosition ~= nil then
		  part.CanCollide = false
		  part.BodyPosition.Position = Vector3.new(0,workspace.FallenPartsDestroyHeight + 1,0)
		  wait(0.05)
		  part.BodyPosition:Destroy()
	  end
	  end)

		  repeat
	  for index, mover in pairs(movers) do
		  mover.Position = workspace:FindFirstChild("BlackHoleCenter").CFrame:PointToWorldSpace()	  
		end
		wait(0.8)
	  game:GetService("RunService").Stepped:wait()
	until cowboy == false
else
	repeat
		for index, mover in pairs(movers) do
			mover.Position = workspace:FindFirstChild("BlackHoleCenter").CFrame:PointToWorldSpace()
			game:GetService("RunService").Stepped:wait()
		end
	until cowboy == false
end
else
	for index, part in pairs(SelectedParts) do
		if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false and part.Name == "BlackHoleCenter" == false then
	if part:FindFirstChildOfClass("BodyPosition") ~= nil then
		part:FindFirstChildOfClass("BodyPosition"):Destroy()
	end
end
end

for index, part in pairs(SelectedParts) do
local mover = Instance.new("BodyPosition", part)
table.insert(movers, mover)
mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	end

	cowboy = true

	if BlackHoleDestroyParts == true then

		bhe = workspace:FindFirstChild("BlackHoleCenter").Touched:Connect(function(part)
			if part.Anchored == true and part.BodyPosition == nil then
                return
			elseif part.Anchored == false and part.BodyPosition ~= nil then
		  part.CanCollide = false
		  part.BodyPosition.Position = Vector3.new(0,workspace.FallenPartsDestroyHeight + 1,0)
		  wait(0.05)
		  part.BodyPosition:Destroy()
	  end
	  end)

		repeat
	for index, mover in pairs(movers) do
		mover.Position = workspace:FindFirstChild("BlackHoleCenter").CFrame:PointToWorldSpace()
  end
	  wait(1)
	game:GetService("RunService").Stepped:wait()
  until cowboy == false
else
  repeat
	  for index, mover in pairs(movers) do
		  mover.Position = workspace:FindFirstChild("BlackHoleCenter").CFrame:PointToWorldSpace()
		  game:GetService("RunService").Stepped:wait()
	  end
  until cowboy == false
end

	repeat
for index, mover in pairs(movers) do
	mover.Position = workspace:FindFirstChild("BlackHoleCenter").CFrame:PointToWorldSpace()
end
game:GetService("RunService").Stepped:wait()
until cowboy == false
end
end)

newCmd("stopblackhole", {}, function(args, speaker)
	for i,mov in pairs(workspace:GetDescendants())do
				if mov:IsA("BodyPosition") then
					mov:Destroy()
					end
				end
			cowbow = false
			bhe:Disconnect()
end)

newCmd("controlblackhole", {}, function(args, speaker)
	local LocalPlayer = game:GetService("Players").LocalPlayer
				FLYING = false
workspace.Camera.CameraSubject = workspace:FindFirstChild("BlackHoleCenter")
workspace:FindFirstChild("BlackHoleCenter").Anchored = false

local iyflyspeed = 3
local mouse = LocalPlayer:GetMouse()
local LP = LocalPlayer
local function goup()
	repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('HumanoidRootPart') and LP.Character:FindFirstChild('Humanoid')
	repeat wait() until mouse
	
	local T = workspace:FindFirstChild("BlackHoleCenter")
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local SPEED = 0
	
	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0.1, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
		repeat wait()
		if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
		SPEED = 50
		elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
		SPEED = 0
		end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
	BG.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(-90), 0, 0)
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
		end)
	end
	mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = iyflyspeed
		elseif KEY:lower() == 's' then
			CONTROL.B = -iyflyspeed
		elseif KEY:lower() == 'a' then
			CONTROL.L = -iyflyspeed 
		elseif KEY:lower() == 'd' then 
			CONTROL.R = iyflyspeed
		end
	end)
	mouse.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		end
	end)
	FLY()
end
goup()

for i,v in pairs(LocalPlayer.Character:GetChildren()) do
	if v:IsA("BasePart" or "MeshPart") then
		v.Anchored = true
	end
end
end)

newCmd("uncontrolblackhole", {}, function(args, speaker)
	local LocalPlayer = game:GetService("Players").LocalPlayer
					 FLYING = false
					 workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
					 workspace:FindFirstChild("BlackHoleCenter").Anchored = true

					 for i,v in pairs(LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart" or "MeshPart") then
							v.Anchored = false
						end
					end
end)

newCmd("bringblackhole", {}, function(args, speaker)
	workspace:FindFirstChild("BlackHoleCenter").Anchored = true
					workspace:FindFirstChild("BlackHoleCenter").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end)

newCmd("blackholeplayer", {}, function(args, speaker)
	execCmd("uncontrolblackhole")
						  thelooplmao = true
						  repeat
							for i,plr in pairs(getPlayer(args[1]))do
							workspace:FindFirstChild("BlackHoleCenter").CFrame = game:GetService("Players")[plr].Character.HumanoidRootPart.CFrame
							end
							wait()
						until thelooplmao == false
end)

newCmd("unblackholeplayer", {}, function(args, speaker)
	thelooplmao = false
end)

newCmd("loopsim", {}, function(args, speaker)
	if sethidden then
						spawn(function()
							while true do
								SetSimulationRadius()
							game:GetService("RunService").Stepped:wait()
							end
						end)
					end
end)

newCmd("flingparts", {}, function(args, speaker)
	SetSimulationRadius()
						
					  local player = getPlayer(args[1], speaker)
				
						local Vel = Vector3.new(5000,5000,5000)
						local MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
						local Pow = 9999999999
						-- Gyro setting
						local Gyro = false -- Do you want the parts to be aligned? (doesnt truly matter)
						local Dampening = 500
						local Power = 3000
				
						local LocalPlayer = game:GetService("Players").LocalPlayer -- Your local player
				
						local unanchoredparts10 = {} -- Get the anchored parts in the table
				
						local moverss = {} -- Put the body position in the table
						

						if SelectedPartsCheck() == false then
				
								-- add the unanchored parts in the table and clear them
								for index, part in pairs(workspace:GetDescendants()) do
									if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
										part.CanCollide = CollideOn
								table.insert(unanchoredparts10, part)
								if part:FindFirstChildOfClass("BodyPosition") ~= nil then
									part:FindFirstChildOfClass("BodyPosition"):Destroy()
								end
							end
						end
				
						 -- Setting for the thing work
						for index, part in pairs(unanchoredparts10) do
							local mov = Instance.new("BodyPosition", part)
							table.insert(moverss, mov)
							mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								end
				
								for index,part in pairs(unanchoredparts10)do
								local ang = Instance.new("BodyAngularVelocity", part)
								ang.AngularVelocity = Vel
								ang.MaxTorque = MaxTorque
								ang.P = Pow
								end
				
								if Gyro == true then
								for i,v in pairs(unanchoredparts10)do
									local gyros = Instance.new("BodyGyro", v)
									gyros.P = Power
									gyros.D = Dampening
								end
								end
						repeat
							local flingon5 = true
							for i,plr in pairs(player)do
							for index, mover in pairs(moverss) do
									mover.Position = Players[plr].Character.HumanoidRootPart.CFrame:PointToWorldSpace(Vector3.new(-0.1,-1,-3.1)) -- Best positon for fling
								end
								end
							game:GetService("RunService").Stepped:wait()
						until flingon5 == false
					else
						-- add the unanchored parts in the table and clear them
						for index, part in pairs(SelectedParts) do
							if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
								part.CanCollide = CollideOn
						if part:FindFirstChildOfClass("BodyPosition") ~= nil then
							part:FindFirstChildOfClass("BodyPosition"):Destroy()
						end
					end
				end
		
				 -- Setting for the thing work
				for index, part in pairs(SelectedParts) do
					local mov = Instance.new("BodyPosition", part)
					table.insert(moverss, mov)
					mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						end
		
						for index,part in pairs(SelectedParts)do
						local ang = Instance.new("BodyAngularVelocity", part)
						ang.AngularVelocity = Vel
						ang.MaxTorque = MaxTorque
						ang.P = Pow
						end
		
						if Gyro == true then
						for i,v in pairs(SelectedParts)do
							local gyros = Instance.new("BodyGyro", v)
							gyros.P = Power
							gyros.D = Dampening
						end
						end
				repeat
					local flingon5 = true
					for i,plr in pairs(player)do
					for index, mover in pairs(moverss) do
							mover.Position = Players[plr].Character.HumanoidRootPart.CFrame:PointToWorldSpace(Vector3.new(-0.1,-1,-3.1)) -- Best positon for fling
						end
						end
					game:GetService("RunService").Stepped:wait()
				until flingon5 == false
					end
end)

newCmd("flinghats", {}, function(args, speaker)
	SetSimulationRadius()
				
				  local player = getPlayer(args[1], speaker) -- Target name
		 
		
		
				  hats = {} -- hats table
				
					-- Spin setting
					local Vel = Vector3.new(5000,5000,5000)
					local MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					local Pow = 9999999999
				
					local LocalPlayer = game:GetService("Players").LocalPlayer -- Your local player
				
					local unanchoredparts101 = {} -- Get the anchored parts in the table
				
					local moversss = {} -- Put the body position in the table
					
					for i,v in pairs(Players.LocalPlayer.Character.Humanoid:GetAccessories())do
							for i,handle in pairs(v:GetDescendants())do
							if handle:IsA("BasePart") then
							table.insert(hats,handle)
							v.Parent = workspace
							end
						end
						end
				
							-- add the unanchored parts in the table and clear them
							for index, part in pairs(hats) do
									part.CanCollide = false
							table.insert(unanchoredparts101, part)
							if part:FindFirstChildOfClass("BodyPosition") ~= nil then
								part:FindFirstChildOfClass("BodyPosition"):Destroy()
							end
						end
				
					 -- Setting for the thing work
					for index, part in pairs(unanchoredparts101) do
						local mov = Instance.new("BodyPosition", part)
						table.insert(moversss, mov)
						mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							end
				
							for index,part in pairs(unanchoredparts101)do
							local ang = Instance.new("BodyAngularVelocity", part)
							ang.AngularVelocity = Vel
							ang.MaxTorque = MaxTorque
							ang.P = Pow
							end
				
					repeat
						local flingon5 = true
						for i,plr in pairs(player)do
						for index, mover in pairs(moversss) do
								mover.Position = Players[plr].Character.HumanoidRootPart.CFrame:PointToWorldSpace(Vector3.new(-0.1,-1,-3.29)) -- Best positon for fling
							end
							end
						game:GetService("RunService").Stepped:wait()
					until flingon5 == false
end)

newCmd("unflingparts", {}, function(args, speaker)
	wait(0.1)
							for i,v in pairs(workspace:GetDescendants()) do
								if v:IsA("BodyPosition") or v:IsA("BodyGyro") or v:IsA("BodyAngularVelocity") then
									v:Destroy()
									flingon5 = false
							end
end)

newCmd("spinparts", {}, function(args, speaker)
	SetSimulationRadius()

					  local player = getPlayer(args[1], speaker) -- Target name
				
						-- Spin setting
						local Vel = Vector3.new(0,90,0)
						local MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
						local Pow = 5000
						-- Gyro setting
						local Gyro = false -- Do you want the parts to be aligned? (doesnt truly matter)
						local Dampening = 500
						local Power = 3000
				
						local LocalPlayer = game:GetService("Players").LocalPlayer -- Your local player
				
						local unanchoredparts10 = {} -- Get the anchored parts in the table
				
						local moverss = {} -- Put the body position in the table

						
						if SelectedPartsCheck() == false then				

								-- add the unanchored parts in the table and clear them
								for index, part in pairs(workspace:GetDescendants()) do
									if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
										part.CanCollide = CollideOn
								table.insert(unanchoredparts10, part)
								if part:FindFirstChildOfClass("BodyPosition") ~= nil then
									part:FindFirstChildOfClass("BodyPosition"):Destroy()
								end
							end
						end
				
						 -- Setting for the thing work
						for index, part in pairs(unanchoredparts10) do
							local mov = Instance.new("BodyPosition", part)
							table.insert(moverss, mov)
							mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								end
				
								for index,part in pairs(unanchoredparts10)do
								local ang = Instance.new("BodyAngularVelocity", part)
								ang.AngularVelocity = Vel
								ang.MaxTorque = MaxTorque
								ang.P = Pow
								end
				
								if Gyro == true then
								for i,v in pairs(unanchoredparts10)do
									local gyros = Instance.new("BodyGyro", v)
									gyros.P = Power
									gyros.D = Dampening
								end
								end
						repeat
							local flingon5 = true
							for i,plr in pairs(player)do
							for index, mover in pairs(moverss) do
									mover.Position = Players[plr].Character.HumanoidRootPart.CFrame:PointToWorldSpace()
								end
								end
							game:GetService("RunService").Stepped:wait()
						until flingon5 == false
					else
						-- add the unanchored parts in the table and clear them
						for index, part in pairs(SelectedParts) do
							if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
								part.CanCollide = CollideOn
						if part:FindFirstChildOfClass("BodyPosition") ~= nil then
							part:FindFirstChildOfClass("BodyPosition"):Destroy()
						end
					end
				end
		
				 -- Setting for the thing work
				for index, part in pairs(SelectedParts) do
					local mov = Instance.new("BodyPosition", part)
					table.insert(moverss, mov)
					mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						end
		
						for index,part in pairs(SelectedParts)do
						local ang = Instance.new("BodyAngularVelocity", part)
						ang.AngularVelocity = Vel
						ang.MaxTorque = MaxTorque
						ang.P = Pow
						end
		
						if Gyro == true then
						for i,v in pairs(SelectedParts)do
							local gyros = Instance.new("BodyGyro", v)
							gyros.P = Power
							gyros.D = Dampening
						end
						end
				repeat
					local flingon5 = true
					for i,plr in pairs(player)do
					for index, mover in pairs(moverss) do
							mover.Position = Players[plr].Character.HumanoidRootPart.CFrame:PointToWorldSpace()
						end
						end
					game:GetService("RunService").Stepped:wait()
				until flingon5 == false
					end
end)

newCmd("selectparts", {}, function(args, speaker)
	SetSimulationRadius()

						 local selectTool = Instance.new("Tool")
						 selectTool.Name = "Select Parts Tool"
						 selectTool.Parent = speaker.Backpack
						 selectTool.RequiresHandle = false


			selectTool.Equipped:Connect(function()
-- The code is from Roblox dev website itself
local player = speaker
local mouse = player:GetMouse() --Getting the player's mouse
 
local selection = Instance.new("SelectionBox")
selection.Color3 = Color3.fromRGB(0, 100, 255)
selection.Parent = player.PlayerGui
 
mouse.Move:Connect(function() --When the mouse moves
	local target = mouse.Target
 
	if not target then
		-- nothing selected
		selection.Adornee = nil
	else
		if target:IsA("BasePart") and not target:IsDescendantOf(speaker.Character) then
			selection.Adornee = target
		else
			selection.Adornee = nil
		end
	end
end)
end)

selectTool.Activated:Connect(function()
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse() --Getting the player's mouse
local target = Mouse.Target 
if target:IsA("BasePart") and target.Anchored == false and not target:IsDescendantOf(speaker.Character) then
	table.insert(SelectedParts, target)
elseif target:IsA("BasePart") and target.Anchored == true then
end
end)

selectTool.Unequipped:Connect(function()
speaker.PlayerGui.SelectionBox:Destroy()
end)
end)

newCmd("resetselectedpartslist", {}, function(args, speaker)
	SelectedParts = {}
end)

newCmd("uselist", {}, function(args, speaker)
	if OnlySelectedParts == false then
							OnlySelectedParts = true
						 else
							OnlySelectedParts = false
						 end
end)

newCmd("spinpartsmouse", {}, function(args, speaker)
	SetSimulationRadius()

				
								 -- Spin setting
								 local Vel = Vector3.new(0,90,0)
								 local MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
								 local Pow = 5000
								 -- Gyro setting
								 local Gyro = false -- Do you want the parts to be aligned? (doesnt truly matter)
								 local Dampening = 500
								 local Power = 3000
						 
								 local LocalPlayer = game:GetService("Players").LocalPlayer -- Your local player

								 local mouse = LocalPlayer:GetMouse()
						 
								 local unanchoredparts10 = {} -- Get the anchored parts in the table
						 
								 local moverss = {} -- Put the body position in the table
		 
								 
								 if SelectedPartsCheck() == false then				
		 
										 -- add the unanchored parts in the table and clear them
										 for index, part in pairs(workspace:GetDescendants()) do
											 if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
												 part.CanCollide = CollideOn
										 table.insert(unanchoredparts10, part)
										 if part:FindFirstChildOfClass("BodyPosition") ~= nil then
											 part:FindFirstChildOfClass("BodyPosition"):Destroy()
										 end
									 end
								 end
						 
								  -- Setting for the thing work
								 for index, part in pairs(unanchoredparts10) do
									 local mov = Instance.new("BodyPosition", part)
									 table.insert(moverss, mov)
									 mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
										 end
						 
										 for index,part in pairs(unanchoredparts10)do
										 local ang = Instance.new("BodyAngularVelocity", part)
										 ang.AngularVelocity = Vel
										 ang.MaxTorque = MaxTorque
										 ang.P = Pow
										 end
						 
										 if Gyro == true then
										 for i,v in pairs(unanchoredparts10)do
											 local gyros = Instance.new("BodyGyro", v)
											 gyros.P = Power
											 gyros.D = Dampening
										 end
										 end
								 repeat
									 local flingon5 = true
									 for index, mover in pairs(moverss) do
											 mover.Position = mouse.Hit:PointToWorldSpace()
										 end
									 game:GetService("RunService").Stepped:wait()
								 until flingon5 == false
							 else
								 -- add the unanchored parts in the table and clear them
								 for index, part in pairs(SelectedParts) do
									 if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
										 part.CanCollide = CollideOn
								 if part:FindFirstChildOfClass("BodyPosition") ~= nil then
									 part:FindFirstChildOfClass("BodyPosition"):Destroy()
								 end
							 end
						 end
				 
						  -- Setting for the thing work
						 for index, part in pairs(SelectedParts) do
							 local mov = Instance.new("BodyPosition", part)
							 table.insert(moverss, mov)
							 mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								 end
				 
								 for index,part in pairs(SelectedParts)do
								 local ang = Instance.new("BodyAngularVelocity", part)
								 ang.AngularVelocity = Vel
								 ang.MaxTorque = MaxTorque
								 ang.P = Pow
								 end
				 
								 if Gyro == true then
								 for i,v in pairs(SelectedParts)do
									 local gyros = Instance.new("BodyGyro", v)
									 gyros.P = Power
									 gyros.D = Dampening
								 end
								 end
						 repeat
							 local flingon5 = true
							 for i,plr in pairs(player)do
							 for index, mover in pairs(moverss) do
									 mover.Position = mouse.Hit:PointToWorldSpace()
								 end
								 end
							 game:GetService("RunService").Stepped:wait()
						 until flingon5 == false
							 end
end)

newCmd("flingpartsmouse", {}, function(args, speaker)
	SetSimulationRadius()

				
								 -- Spin setting
						        local Vel = Vector3.new(5000,5000,5000)
						        local MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
						        local Pow = 9999999999
								 
								 -- Gyro setting
								 local Gyro = false -- Do you want the parts to be aligned? (doesnt truly matter)
								 local Dampening = 500
								 local Power = 3000
						 
								 local LocalPlayer = game:GetService("Players").LocalPlayer -- Your local player

								 local mouse = LocalPlayer:GetMouse()
						 
								 local unanchoredparts10 = {} -- Get the anchored parts in the table
						 
								 local moverss = {} -- Put the body position in the table
		 
								 
								 if SelectedPartsCheck() == false then				
		 
										 -- add the unanchored parts in the table and clear them
										 for index, part in pairs(workspace:GetDescendants()) do
											 if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
												 part.CanCollide = CollideOn
										 table.insert(unanchoredparts10, part)
										 if part:FindFirstChildOfClass("BodyPosition") ~= nil then
											 part:FindFirstChildOfClass("BodyPosition"):Destroy()
										 end
									 end
								 end
						 
								  -- Setting for the thing work
								 for index, part in pairs(unanchoredparts10) do
									 local mov = Instance.new("BodyPosition", part)
									 table.insert(moverss, mov)
									 mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
										 end
						 
										 for index,part in pairs(unanchoredparts10)do
										 local ang = Instance.new("BodyAngularVelocity", part)
										 ang.AngularVelocity = Vel
										 ang.MaxTorque = MaxTorque
										 ang.P = Pow
										 end
						 
										 if Gyro == true then
										 for i,v in pairs(unanchoredparts10)do
											 local gyros = Instance.new("BodyGyro", v)
											 gyros.P = Power
											 gyros.D = Dampening
										 end
										 end
								 repeat
									 local flingon5 = true
									 for index, mover in pairs(moverss) do
											 mover.Position = mouse.Hit:PointToWorldSpace()
										 end
									 game:GetService("RunService").Stepped:wait()
								 until flingon5 == false
							 else
								 -- add the unanchored parts in the table and clear them
								 for index, part in pairs(SelectedParts) do
									 if part:IsA("Part" or "MeshPart" or "Model" or "BasePart") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
										 part.CanCollide = CollideOn
								 if part:FindFirstChildOfClass("BodyPosition") ~= nil then
									 part:FindFirstChildOfClass("BodyPosition"):Destroy()
								 end
							 end
						 end
				 
						  -- Setting for the thing work
						 for index, part in pairs(SelectedParts) do
							 local mov = Instance.new("BodyPosition", part)
							 table.insert(moverss, mov)
							 mov.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								 end
				 
								 for index,part in pairs(SelectedParts)do
								 local ang = Instance.new("BodyAngularVelocity", part)
								 ang.AngularVelocity = Vel
								 ang.MaxTorque = MaxTorque
								 ang.P = Pow
								 end
				 
								 if Gyro == true then
								 for i,v in pairs(SelectedParts)do
									 local gyros = Instance.new("BodyGyro", v)
									 gyros.P = Power
									 gyros.D = Dampening
								 end
								 end
						 repeat
							 local flingon5 = true
							 for i,plr in pairs(player)do
							 for index, mover in pairs(moverss) do
									 mover.Position = mouse.Hit:PointToWorldSpace()
								 end
								 end
							 game:GetService("RunService").Stepped:wait()
						 until flingon5 == false
							 end
end)

newCmd("partscollide", {}, function(args, speaker)
	if CollideOn == true then
							CollideOn = false
						else
							CollideOn = true
						end
end)

newCmd("blackholedestroyparts", {"bhdp"}, function(args, speaker)
	if BlackHoleDestroyParts == true then
							BlackHoleDestroyParts = false
						else
							BlackHoleDestroyParts = true
						end
end)

newCmd("earthquake", {}, function(args, speaker)
	local partsz = {}
local velos = {}


for i,parts in pairs(workspace:GetDescendants())do
	if parts:IsA("BasePart") and parts.Anchored == false and not parts:IsDescendantOf(speaker.Character) then
        table.insert(partsz, parts)
    end
end


for i,v in pairs(partsz)do
local velo = Instance.new("BodyVelocity", v)
table.insert(velos, velo)
velo.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
velo.P = 10000000
end

bruh = true

repeat
    for i,veloss in pairs(velos)do
    veloss.Velocity = Vector3.new(math.random(-9,9),math.random(-5,3),math.random(-9,9))
    end
wait()
until bruh == false
end)

newCmd("unearthquake", {}, function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
							if v:IsA("BodyVelocity") then
								v:Destroy()
							end
						end
							bruh = false
end)

end)
