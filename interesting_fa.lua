AddCommand("autorejoin", {}, "auto rejoins the game when you get kicked", {}, function(Caller, Args, Tbl)
    local RejoinConnection = CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChildWhichIsA("Frame").DescendantAdded:Connect(function(Prompt)
        if (Prompt.Name == "ErrorTitle") then
            Prompt:GetPropertyChangedSignal("Text"):Wait();
            if (Prompt.Text == "Disconnected") then
                syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua\"))()")
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId);
            end
        end
    end)
    AddConnection(RejoinConnection);
    Tbl[#Tbl + 1] = RejoinConnection
    return "auto rejoin enabled (rejoins when you get kicked from the game)"
end)




AddCommand("rejoin", {"rj"}, "rejoins the game you're currently in", {}, function(Caller)
    if (Caller == LocalPlayer) then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId);
        return "Rejoining..."
    end
end)




table.filter = function(tbl, ret)
    if (type(tbl) == "table") then
        local new = {}
        for i, v in next, tbl do
            if (ret(i, v)) then
                table.insert(new, #new + 1, v)
            end
        end
        return new
    end
end

AddCommand("serverhop", {"sh"}, "switches servers (optional: min or max)", {{"min", "max"}}, function(Caller, Args)
    if (Caller == LocalPlayer) then
        Utils.Notify(Caller or LocalPlayer, nil, "Looking for servers...");

        local Servers = HttpService:JSONDecode(game:HttpGetAsync(("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100"):format(game.PlaceId))).data
        if (#Servers >= 1) then
            Servers = table.filter(Servers, function(i,v)
                return v.playing ~= v.maxPlayers and v.id ~= game.JobId
            end)
            local Server
            local Option = Args[1] or ""
            if (Option:lower() == "min") then
                Server = Servers[#Servers]
            elseif (Option:lower() == "max") then
                Server = Servers[1]
            else
                Server = Servers[math.random(1, #Servers)]
            end
            syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua\"))()");
            TeleportService:TeleportToPlaceInstance(game.PlaceId, Server.id);
            return ("joining server (%d/%d players)"):format(Server.playing, Server.maxPlayers);
        else
            return "no servers foudn"
        end
    end
end)




AddCommand("blink", {"blinkws"}, "cframe speed", {}, function(Caller, Args, Tbl)
    local Speed = tonumber(Args[1]) or 5
    local Time = tonumber(Args[2]) or .05
    LoadCommand("blink").CmdExtra[1] = Speed
    coroutine.wrap(function()
        while (next(LoadCommand("blink").CmdExtra) and wait(Time)) do
            Speed = LoadCommand("blink").CmdExtra[1]
            if (Keys["W"]) then
                GetRoot().CFrame = GetRoot().CFrame * CFrame.new(0, 0, -Speed);
            end
            if (Keys["A"]) then
                GetRoot().CFrame = GetRoot().CFrame * CFrame.new(-Speed, 0, 0);
            end
            if (Keys["S"]) then
                GetRoot().CFrame = GetRoot().CFrame * CFrame.new(0, 0, Speed);
            end
            if (Keys["D"]) then
                GetRoot().CFrame = GetRoot().CFrame * CFrame.new(Speed, 0, 0);
            end
        end
    end)();
    return "blink enabled, for best results use shiftlock"
end)

AddCommand("unblink", {"noblinkws", "unblink", "noblink"}, "stops cframe speed", {}, function()
    local Blink = LoadCommand("blink").CmdExtra
    if (not next(Blink)) then
        return "blink is already disabled"
    end
    LoadCommand("blink").CmdExtra = {}
    return "blink mode disabled"
end)
