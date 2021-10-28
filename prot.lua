local ProtectInstance, SpoofInstance, SpoofProperty;
local UnSpoofInstance;
do
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Tfind, sort, concat, pack, unpack;
do
    local table = table
    Tfind, sort, concat, pack, unpack = 
        table.find,
        table.sort,
        table.concat,
        table.pack,
        table.unpack
end

local lower, Sfind, split, sub, format, len, match, gmatch, gsub, byte;
do
    local string = string
    lower, Sfind, split, sub, format, len, match, gmatch, gsub, byte = 
        string.lower,
        string.find,
        string.split, 
        string.sub,
        string.format,
        string.len,
        string.match,
        string.gmatch,
        string.gsub,
        string.byte
end

local random, floor, round, abs, atan, cos, sin, rad;
do
    local math = math
    random, floor, round, abs, atan, cos, sin, rad = 
        math.random,
        math.floor,
        math.round,
        math.abs,
        math.atan,
        math.cos,
        math.sin,
        math.rad
end

local _hookfunction = hookfunction or detour_function
local hookfunction = _hookfunction or function(func, newfunc, applycclosure)
    if (replaceclosure) then
         replaceclosure(func, newfunc);
         return func
      end
     func = applycclosure and newcclosure or newfunc
     return func
end

local getconnections = getconnections or get_signal_cons

local getrawmetatable = (debug and debug.getmetatable) or getrawmetatable

local getnamecallmethod = getnamecallmethod or get_namecall_method

local hookmetamethod = hookmetamethod or (hookfunction and function(object, method, hook) return hookfunction(getMetatable(object)[method], hook) end)

local startsWith = function(str, searchString, rawPos)
    local pos = rawPos or 1
    return searchString == "" and true or sub(str, pos, pos) == searchString
end

local trim = function(str)
    return gsub(str, "^%s*(.-)%s*$", "%1");
end

local tbl_concat = function(...)
    local new = {}
    for i, v in next, {...} do
        for i2, v2 in next, v do
            new[i] = v2
        end
    end
    return new
end

local indexOf = function(tbl, val)
    if (type(tbl) == 'table') then
        for i, v in next, tbl do
            if (v == val) then
                return i
            end
        end
    end
end

local forEach = function(tbl, ret)
    for i, v in next, tbl do
        ret(i, v);
    end
end

local filter = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            if (ret(i, v)) then
                new[#new + 1] = v
            end
        end
        return new
    end
end

local map = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            local Value, Key = ret(i, v);
            new[Key or #new + 1] = Value
        end
        return new
    end
end

local deepsearch;
deepsearch = function(tbl, ret)
    if (type(tbl) == 'table') then
        for i, v in next, tbl do
            if (type(v) == 'table') then
                deepsearch(v, ret);
            end
            ret(i, v);
        end
    end
end

local flat = function(tbl)
    if (type(tbl) == 'table') then
        local new = {}
        deepsearch(tbl, function(i, v)
            if (type(v) ~= 'table') then
                new[#new + 1] = v
            end
        end)
        return new
    end
end

local flatMap = function(tbl, ret)
    if (type(tbl) == 'table') then
        local new = flat(map(tbl, ret));
        return new
    end
end

local shift = function(tbl)
    if (type(tbl) == 'table') then
        local firstVal = tbl[1]
        tbl = pack(unpack(tbl, 2, #tbl));
        tbl.n = nil
        return tbl
    end
end

local keys = function(tbl)
    if (type(tbl) == 'table') then
        local new = {}
        for i, v in next, tbl do
            new[#new + 1] = i   
        end
        return new
    end
end

local function clone(toClone, shallow)
    if (type(toClone) == 'function' and clonefunction) then
        return clonefunction(toClone);
    end
    local new = {}
    for i, v in pairs(toClone) do
        if (type(v) == 'table' and not shallow) then
            v = clone(v);
        end
        new[i] = v
    end
    return new
end

local setthreadidentity = setthreadidentity or syn_context_set or setthreadcontext
local getthreadidentity = getthreadidentity or syn_context_get or getthreadcontext

local GetAllParents = function(Instance_)
    if (typeof(Instance_) == "Instance") then
        local Parents = {}
        local Current = Instance_
        repeat
            local Parent = Current.Parent
            Parents[#Parents + 1] = Parent
            Current = Parent
        until not Current
        return Parents
    end
    return {}
end
local Hooks = {
    AntiKick = false,
    AntiTeleport = false,
    NoJumpCooldown = false,
    UndetectedMessageOut = true
}

local setreadonly = setreadonly or (make_writeable and function(table, readonly) if readonly then make_readonly(table) else make_writeable(table) end end)

local mt = getrawmetatable(game);
local OldMetaMethods = {}
setreadonly(mt, false);
for i, v in next, mt do
    OldMetaMethods[i] = v
end
setreadonly(mt, true);
local MetaMethodHooks = {}

local ProtectedInstances = setmetatable({}, {
    mode = "v"
});
do
    local SpoofedInstances = setmetatable({}, {
        mode = "v"
    });
    local SpoofedProperties = setmetatable({}, {
        mode = "v"
    });
    Hooks.SpoofedProperties = SpoofedProperties

    ProtectInstance = function(Instance_, disallow)
        if (not Tfind(ProtectedInstances, Instance_)) then
            ProtectedInstances[#ProtectedInstances + 1] = Instance_
            if (syn and syn.protect_gui and not disallow) then
                syn.protect_gui(Instance_);
            end
        end
    end
    
    SpoofInstance = function(Instance_, Instance2)
        if (not SpoofedInstances[Instance_]) then
            SpoofedInstances[Instance_] = Instance2 and Instance2 or Clone(Instance_);
        end
    end

    UnSpoofInstance = function(Instance_)
        if (SpoofedInstances[Instance_]) then
            SpoofedInstances[Instance_] = nil
        end
    end
    
    local ChangedSpoofedProperties = {}
    SpoofProperty = function(Instance_, Property, NoClone)
        if (SpoofedProperties[Instance_]) then
            local SpoofedPropertiesForInstance = SpoofedProperties[Instance_]
            local Properties = map(SpoofedPropertiesForInstance, function(i, v)
                return v.Property
            end)
            if (not Tfind(Properties, Property)) then
                SpoofedProperties[Instance_][#SpoofedPropertiesForInstance + 1] = {
                    SpoofedProperty = SpoofedPropertiesForInstance.SpoofedProperty,
                    Property = Property,
                };
            end
        else
            local Cloned;
            if (not NoClone and IsA(Instance_, "Instance") and not Services[tostring(Instance_)] and Instance_.Archivable) then
                local Success, Ret = pcall(Clone, Instance_);
                if (Success) then
                    Cloned = Ret
                end
            end
            SpoofedProperties[Instance_] = {{
                SpoofedProperty = Cloned and Cloned or {[Property]=Instance_[Property]},
                Property = Property,
            }}
            ChangedSpoofedProperties[Instance_] = {}
        end
    end

    local Methods = {
        "FindFirstChild",
        "FindFirstChildWhichIsA",
        "FindFirstChildOfClass",
        "IsA"
    }
    MetaMethodHooks.Namecall = function(...)
        local __Namecall = OldMetaMethods.__namecall;
        local Args = {...}
        local self = Args[1]
        local Method = getnamecallmethod() or "";

        if (Method ~= "") then
            local Success, Error = pcall(function()
                return self and self[Method]
            end)
            if (not Success) then
                return __Namecall(...);
            end
        end

        if (Hooks.AntiKick and lower(Method) == "kick") then
            local Player, Message = self, Args[2]
            if (Hooks.AntiKick and Player == LocalPlayer) then
                local Notify = Utils.Notify
                local Context;
                if (setthreadidentity) then
                    Context = getthreadidentity();
                    setthreadidentity(3);
                end
                if (Notify and Context) then
                    Notify(nil, "Attempt to kick", format("attempt to kick %s", (Message and type(Message) == 'number' or type(Message) == 'string') and ": " .. Message or ""));
                    setthreadidentity(Context);
                end
                return
            end
        end

        if (Hooks.AntiTeleport and Method == "Teleport" or Method == "TeleportToPlaceInstance") then
            local Player, PlaceId = self, Args[2]
            if (Hooks.AntiTeleport and Player == LocalPlayer) then
                local Notify = Utils.Notify
                local Context;
                if (setthreadidentity) then
                    Context = getthreadidentity();
                    setthreadidentity(3);
                end
                if (Notify and Context) then
                    Notify(nil, "Attempt to teleport", format("attempt to teleport to place %s", PlaceId and PlaceId or ""));
                    setthreadidentity(Context);
                end
                return
            end
        end

        if (checkcaller()) then
            return __Namecall(...);
        end


        if (Tfind(Methods, Method)) then
            local ReturnedInstance = __Namecall(...);
            if (Tfind(ProtectedInstances, ReturnedInstance)) then
                return Method == "IsA" and false or nil
            end
        end
        

        if (lower(Method) == "getchildren" or lower(Method) == "getdescendants") then
            return filter(__Namecall(...), function(i, v)
                return not Tfind(ProtectedInstances, v);
            end)
        end

        if (Method == "GetFocusedTextBox") then
            if (Tfind(ProtectedInstances, __Namecall(...))) then
                return nil
            end
        end

        if (Hooks.UndetectedMessageOut and Method == "GetLogHistory") then
            if (self == Services.LogService) then
                local LogHistory = __Namecall(...);
                local MessagesOut = Hooks.MessagesOut
                local FilteredLogHistory = {}
                for i, v in next, LogHistory do
                    if (not Tfind(MessagesOut, v.message)) then
                        FilteredLogHistory[#FilteredLogHistory + 1] = v
                    end
                end
                return FilteredLogHistory
            end
        end

        if (Hooks.NoJumpCooldown and Method == "GetState" or Method == "GetStateEnabled") then
            local State = __Namecall(...);
            if (Method == "GetState" and (State == Enum.HumanoidStateType.Jumping or State == "Jumping")) then
                return Enum.HumanoidStateType.RunningNoPhysics
            end
            if (Method == "GetStateEnabled" and (self == Enum.HumanoidStateType.Jumping or self == "Jumping")) then
                return false
            end
        end
        
        return __Namecall(...);
    end

    local AllowedIndexes = {
        "RootPart",
        "Parent"
    }
    local AllowedNewIndexes = {
        "Jump"
    }
    MetaMethodHooks.Index = function(...)
        local __Index = OldMetaMethods.__index;

        if (checkcaller()) then
            return __Index(...);
        end
        local Instance_, Index = ...

        local SanitisedIndex = Index
        if (typeof(Instance_) == 'Instance' and type(Index) == 'string') then
            SanitisedIndex = gsub(sub(Index, 0, 100), "%z.*", "");
        end
        local SpoofedInstance = SpoofedInstances[Instance_]
        local SpoofedPropertiesForInstance = SpoofedProperties[Instance_]

        if (SpoofedInstance) then
            if (Tfind(AllowedIndexes, SanitisedIndex)) then
                return __Index(Instance_, Index);
            end
            return __Index(SpoofedInstance, Index);
        end

        if (SpoofedPropertiesForInstance) then
            for i, SpoofedProperty in next, SpoofedPropertiesForInstance do
                if (SanitisedIndex == SpoofedProperty.Property) then
                    local ClientChangedData = ChangedSpoofedProperties[Instance_][SanitisedIndex]
                    local IndexedSpoofed = __Index(SpoofedProperty.SpoofedProperty, Index);
                    local Indexed = __Index(Instance_, Index);
                    if (not ClientChangedData and IndexedSpoofed ~= Indexed) then
                        OldMetaMethods.__NewIndex(SpoofedProperty.SpoofedProperty, Index, Indexed);
                        return __Index(SpoofedProperty.SpoofedProperty, Index);
                    end
                    if (ClientChangedData.Caller) then
                        ChangedSpoofedProperties[Instance_][SanitisedIndex] = nil
                    end
                    return IndexedSpoofed
                end
            end
        end

        if (Tfind(ProtectedInstances, __Index(...))) then
            return nil
        end
        if (Tfind(ProtectedInstances, Instance_) and SanitisedIndex == "ClassName") then
            return "Part"
        end

        if (Hooks.NoJumpCooldown and SanitisedIndex == "Jump") then
            if (IsA(Instance_, "Humanoid")) then
                return false
            end
        end
        
        return __Index(...);
    end

    MetaMethodHooks.NewIndex = function(...)
        local __NewIndex = OldMetaMethods.__newindex;
        local __Index = OldMetaMethods.__index;
        local Instance_, Index, Value = ...

        local SpoofedInstance = SpoofedInstances[Instance_]
        local SpoofedPropertiesForInstance = SpoofedProperties[Instance_]

        if (checkcaller()) then
            if (Index == "Parent") then
                local ProtectedInstance
                for i = 1, #ProtectedInstances do
                    local ProtectedInstance_ = ProtectedInstances[i]
                    if (Instance_ == ProtectedInstance_ or Instance_.IsDescendantOf(Instance_, ProtectedInstance_)) then
                        ProtectedInstance = true
                    end
                end
                if (ProtectedInstance) then
                    local Parents = GetAllParents(Value);
                    for i, v in next, getconnections(Parents[1].ChildAdded, true) do
                        v.Disable(v);
                    end
                    for i = 1, #Parents do
                        local Parent = Parents[i]
                        for i2, v in next, getconnections(Parent.DescendantAdded, true) do
                            v.Disable(v);
                        end
                    end
                    local Ret = __NewIndex(...);
                    for i = 1, #Parents do
                        local Parent = Parents[i]
                        for i2, v in next, getconnections(Parent.DescendantAdded, true) do
                            v.Enable(v);
                        end
                    end
                    for i, v in next, getconnections(Parents[1].ChildAdded, true) do
                        v.Enable(v);
                    end
                    return Ret
                end
            end
            if (SpoofedInstance or SpoofedPropertiesForInstance) then
                if (SpoofedPropertiesForInstance) then
                    ChangedSpoofedProperties[Instance_][Index] = {
                        Caller = true,
                        BeforeValue = Instance_[Index],
                        Value = Value
                    }
                end
                local Connections = tbl_concat(
                    getconnections(GetPropertyChangedSignal(Instance_, SpoofedPropertiesForInstance and SpoofedPropertiesForInstance.Property or Index)),
                    getconnections(Instance_.Changed),
                    getconnections(game.ItemChanged)
                )
                
                if (not next(Connections)) then
                    return __NewIndex(Instance_, Index, Value);
                end
                for i, v in next, Connections do
                    v.Disable(v);
                end
                local Ret = __NewIndex(Instance_, Index, Value);
                for i, v in next, Connections do
                    v.Enable(v);
                end
                return Ret
            end
            return __NewIndex(...);
        end

        local SanitisedIndex = Index
        if (typeof(Instance_) == 'Instance' and type(Index) == 'string') then
            SanitisedIndex = gsub(sub(Index, 0, 100), "%z.*", "");
        end

        if (SpoofedInstance) then
            if (Tfind(AllowedNewIndexes, SanitisedIndex)) then
                return __NewIndex(...);
            end
            return __NewIndex(SpoofedInstance, Index, __Index(SpoofedInstance, Index));
        end

        if (SpoofedPropertiesForInstance) then
            for i, SpoofedProperty in next, SpoofedPropertiesForInstance do
                if (SpoofedProperty.Property == SanitisedIndex and not Tfind(AllowedIndexes, SanitisedIndex)) then
                    ChangedSpoofedProperties[Instance_][SanitisedIndex] = {
                        Caller = false,
                        BeforeValue = Instance_[Index],
                        Value = Value
                    }
                    return __NewIndex(SpoofedProperty.SpoofedProperty, Index, Value);
                end
            end
        end

        return __NewIndex(...);
    end
end

OldMetaMethods.__index = hookmetamethod(game, "__index", MetaMethodHooks.Index);
OldMetaMethods.__newindex = hookmetamethod(game, "__newindex", MetaMethodHooks.NewIndex);
OldMetaMethods.__namecall = hookmetamethod(game, "__namecall", MetaMethodHooks.Namecall);

Hooks.OldGetChildren = hookfunction(game.GetChildren, newcclosure(function(...)
    if (not checkcaller()) then
        local Children = Hooks.OldGetChildren(...);
        return filter(Children, function(i, v)
            return not Tfind(ProtectedInstances, v);
        end)
    end
    return Hooks.OldGetChildren(...);
end));

Hooks.OldGetDescendants = hookfunction(game.GetDescendants, newcclosure(function(...)
    if (not checkcaller()) then
        local Descendants = Hooks.OldGetDescendants(...);
        return filter(Descendants, function(i, v)
            return not Tfind(ProtectedInstances, v);
        end)
    end
    return Hooks.OldGetDescendants(...);
end));

Hooks.FindFirstChild = hookfunction(game.FindFirstChild, newcclosure(function(...)
    if (not checkcaller()) then
        local ReturnedInstance = Hooks.FindFirstChild(...);
        if (Tfind(ProtectedInstances, ReturnedInstance)) then
            return nil
        end
    end
    return Hooks.FindFirstChild(...);
end));
Hooks.FindFirstChildOfClass = hookfunction(game.FindFirstChildOfClass, newcclosure(function(...)
    if (not checkcaller()) then
        local ReturnedInstance = Hooks.FindFirstChildOfClass(...);
        if (Tfind(ProtectedInstances, ReturnedInstance)) then
            return nil
        end
    end
    return Hooks.FindFirstChildOfClass(...);
end));
Hooks.FindFirstChildWhichIsA = hookfunction(game.FindFirstChildWhichIsA, newcclosure(function(...)
    if (not checkcaller()) then
        local ReturnedInstance = Hooks.FindFirstChildWhichIsA(...);
        if (Tfind(ProtectedInstances, ReturnedInstance)) then
            return nil
        end
    end
    return Hooks.FindFirstChildWhichIsA(...);
end));
Hooks.IsA = hookfunction(game.IsA, newcclosure(function(...)
    if (not checkcaller()) then
        local Args = {...}
        local IsACheck = Args[1]
        local ProtectedInstance = Tfind(ProtectedInstances, IsACheck);
        if (ProtectedInstance and Args[2]) then
            return false
        end
    end
    return Hooks.IsA(...);
end));

local UndetectedCmdBar;
Hooks.OldGetFocusedTextBox = hookfunction(Services.UserInputService.GetFocusedTextBox, newcclosure(function(...)
    if (not checkcaller() and UndetectedCmdBar) then
        local FocusedTextBox = Hooks.OldGetFocusedTextBox(...);
        if (FocusedTextBox and Tfind(ProtectedInstances, FocusedTextBox)) then
            return nil
        end
    end
    return Hooks.OldGetFocusedTextBox(...);
end));

Hooks.OldKick = hookfunction(LocalPlayer.Kick, newcclosure(function(...)
    local Player, Message = ...
    if (Hooks.AntiKick and Player == LocalPlayer) then
        local Notify = Utils.Notify
        local Context;
        if (setthreadidentity) then
            Context = getthreadidentity();
            setthreadidentity(3);
        end
        if (Notify and Context) then
            Notify(nil, "Attempt to kick", format("attempt to kick %s", (Message and type(Message) == 'number' or type(Message) == 'string') and ": " .. Message or ""));
            setthreadidentity(Context)
        end
        return
    end
    return Hooks.OldKick(...);
end))

Hooks.OldTeleportToPlaceInstance = hookfunction(Services.TeleportService.TeleportToPlaceInstance, newcclosure(function(...)
    local Player, PlaceId = ...
    if (Hooks.AntiTeleport and Player == LocalPlayer) then
        local Notify = Utils.Notify
        local Context;
        if (setthreadidentity) then
            Context = getthreadidentity();
            setthreadidentity(3);
        end
        if (Notify and Context) then
            Notify(nil, "Attempt to teleport", format("attempt to teleport to place %s", PlaceId and PlaceId or ""));
            setthreadidentity(Context)
        end
        return
    end
    return Hooks.OldTeleportToPlaceInstance(...);
end))
Hooks.OldTeleport = hookfunction(Services.TeleportService.Teleport, newcclosure(function(...)
    local Player, PlaceId = ...
    if (Hooks.AntiTeleport and Player == LocalPlayer) then
        local Notify = Utils.Notify
        local Context;
        if (setthreadidentity) then
            Context = getthreadidentity();
            setthreadidentity(3);
        end
        if (Notify and Context) then
            Notify(nil, "Attempt to teleport", format("attempt to teleport to place \"%s\"", PlaceId and PlaceId or ""));
            setthreadidentity(Context);
        end
        return
    end
    return Hooks.OldTeleport(...);
end))

Hooks.GetState = hookfunction(GetState, function(...)
    local Humanoid, State = ..., Hooks.GetState(...);
    local Parent, Character = Humanoid.Parent, LocalPlayer.Character
    if (Hooks.NoJumpCooldown and (State == Enum.HumanoidStateType.Jumping or State == "Jumping") and Parent and Character and Parent == Character) then
        return Enum.HumanoidStateType.RunningNoPhysics
    end
    return State
end)

Hooks.GetStateEnabled = hookfunction(__H.GetStateEnabled, function(...)
    local Humanoid, State = ...
    local Parent, Character = Humanoid.Parent, LocalPlayer.Character
    if (Hooks.NoJumpCooldown and (State == Enum.HumanoidStateType.Jumping or State == "Jumping") and Parent and Character and Parent == Character) then
        return false
    end
    return Hooks.GetStateEnabled(...);
end)

do
    local LogService = Services.LogService
    local MessageOut = LogService.MessageOut
    Hooks.MessagesOut = {}
    local MessagesOut = Hooks.MessagesOut

    Hooks.Print = hookfunction(print, newcclosure(function(...)
        if (Hooks.UndetectedMessageOut and checkcaller()) then
            local MessageOutConnections = getconnections(MessageOut);
            for i = 1, #MessageOutConnections do
                MessageOutConnections[i]:Disable();
            end
            local Print = Hooks.Print(...);
            MessagesOut[#MessagesOut + 1] = concat(map({...}, function(i, v)
                return tostring(v);
            end), " ") .. " ";
            for i = 1, #MessageOutConnections do
                MessageOutConnections[i]:Enable();
            end
            return Print
        end
        return Hooks.Print(...);
    end));
    
    Hooks.Warn = hookfunction(warn, newcclosure(function(...)
        if (Hooks.UndetectedMessageOut and checkcaller()) then
            local MessageOutConnections = getconnections(MessageOut);
            for i = 1, #MessageOutConnections do
                MessageOutConnections[i]:Disable();
            end
            local Warn = Hooks.Warn(...);
            MessagesOut[#MessagesOut + 1] = concat(map({...}, function(i, v)
                return tostring(v);
            end), " ") .. " ";
            for i = 1, #MessageOutConnections do
                MessageOutConnections[i]:Enable();
            end
            return Warn
        end
        return Hooks.Warn(...);
    end))

    Hooks.OldGetLogHistory = hookfunction(LogService.GetLogHistory, newcclosure(function(...)
        if (Hooks.UndetectedMessageOut) then
            local LogHistory = Hooks.OldGetLogHistory(...);
            local FilteredLogHistory = {}
            for i, v in next, LogHistory do
                if (not Tfind(MessagesOut, v.message)) then
                    FilteredLogHistory[#FilteredLogHistory + 1] = v
                end
            end
            return FilteredLogHistory
        end
        return Hooks.OldGetLogHistory(...);
    end))
end
end
return {
	["ProtectInstance"] = ProtectInstance,
	["SpoofInstance"] = SpoofInstance,
	["SpoofProperty"] = SpoofProperty,
	["UnSpoofInstance"] = UnSpoofInstance
}
