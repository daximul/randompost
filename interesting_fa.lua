AddConnection(UserInputService.InputBegan:Connect(function(Input, GameProccesed)
    if (Input.KeyCode == CommandBarPrefix and (not GameProccesed)) then
        CommandBarOpen = not CommandBarOpen

        local TransparencyTween = CommandBarOpen and Utils.TweenAllTransToObject or Utils.TweenAllTrans
        local Tween = TransparencyTween(CommandBar, .5, CommandBarTransparencyClone)

        -- tween position
        if (CommandBarOpen) then
            if (not Draggable) then
                Utils.Tween(CommandBar, "Quint", "Out", .5, {
                    Position = UDim2.new(0.5, WideBar and -200 or -100, 1, -110) -- tween -110
                })
            end

            CommandBar.Input:CaptureFocus()
            coroutine.wrap(function()
                wait()
                CommandBar.Input.Text = ""
            end)()
        else
            if (not Draggable) then
                Utils.Tween(CommandBar, "Quint", "Out", .5, {
                    Position = UDim2.new(0.5, WideBar and -200 or -100, 1, 5) -- tween 5
                })
            end
        end
    elseif (not GameProccesed and ChooseNewPrefix) then
        CommandBarPrefix = Input.KeyCode
        Utils.Notify(LocalPlayer, "New Prefix", "Your new prefix is: " .. tostring(Input.KeyCode):split(".")[3]);
        ChooseNewPrefix = false
        if (writefile) then
            Utils.Notify(LocalPlayer, nil, "use command saveprefix to save your prefix");
        end
    end
end), Connections.UI, true);

-- smooth scroll commands
Utils.SmoothScroll(Commands.Frame.List, .14)
-- fill commands with commands!
local CommandsList = Commands.Frame.List
RunService.Stepped:Wait();
for _, v in next, CommandsTable do -- auto size
    coroutine.wrap(function()
        if (not CommandsList:FindFirstChild(v.Name)) then
            local Clone = Command:Clone()
            Utils.Hover(Clone, "BackgroundColor3") -- add tooltip
            Utils.ToolTip(Clone, v.Name .. "\n" .. v.Description)
            Clone.CommandText.Text = v.Name .. (#v.Aliases > 0 and " (" ..table.concat(v.Aliases, ", ") .. ")" or "")
            Clone.Name = v.Name
            Clone.Visible = true
            Clone.Parent = CommandsList
            RunService.Heartbeat:Wait();
        end
    end)()
end
