print("Hi its јava#5589")
local a = "BaconHairBoy"
game:GetService("Players").LocalPlayer.CharacterAppearance =
    "https://api.roblox.com/v1.1/avatar-fetch/?placeId=420&userId=" ..
    game:GetService("Players"):GetUserIdFromNameAsync(a)
game:GetService("Players").LocalPlayer.Character:BreakJoints()
local b = "	             "
local c = 1431520303
local d = false
local e = true
local f = true
local g = true
local h = true
local i = {enabled = false, result = true, request = true}
local j = assert(assert(game, "game missing?"):FindService("Players") or game:GetService("Players"), "Players missing?")
local k = assert(j.LocalPlayer, "LocalPlayer missing?")
local l = game:FindService("CoreGui") or game:GetService("CoreGui")
local m = assert(k:FindFirstChild("PlayerGui"), "PlayerGui mising?")
local n = assert(game:FindService("RunService") or game:GetService("RunService"), "RunService missing?")
local o = {j.LocalPlayer.Name}
local p = {tostring(j.LocalPlayer.UserId)}
b, c = tostring(b), tostring(c)
local function q(r)
    return string.gsub(
        r,
        "(%%?)(.)",
        function(s, t)
            if s ~= "" or not string.match(t, "%a") then
                return s .. t
            else
                return string.format("[%s%s]", string.lower(t), string.upper(t))
            end
        end
    )
end
function replace(u, v)
    for w, x in pairs({[b] = o, [c] = p}) do
        if not v then
            n.RenderStepped:Wait()
        end
        for y, z in pairs(x) do
            if not v then
                n.RenderStepped:Wait()
            end
            for y, A in pairs({"Text", "Message", "ToolTip", "Value"}) do
                pcall(
                    function()
                        if string.find(u[A], z, nil, true) then
                            u[A] = string.gsub(u[A], z, w)
                        elseif string.find(u[A], string.lower(z), nil, true) then
                            u[A] = string.gsub(u[z], string.lower(z), string.lower(w))
                        elseif string.find(u[A], string.upper(z), nil, true) then
                            u[A] = string.gsub(u[z], string.upper(z), string.upper(w))
                        elseif string.find(string.lower(u[A]), string.lower(z), nil, true) then
                            u[A] = string.gsub(u[z], q(z), w)
                        end
                    end
                )
                if not v then
                    n.RenderStepped:Wait()
                end
            end
            if not v then
                n.RenderStepped:Wait()
            end
            if f then
                pcall(
                    function()
                        if string.find(u.Name, z, nil, true) then
                            u.Name = string.gsub(u.Name, z, w)
                        elseif string.find(u.Name, string.lower(z), nil, true) then
                            u.Name = string.gsub(u.Name, string.lower(z), string.lower(w))
                        elseif string.find(u.Name, string.upper(z), nil, true) then
                            u.Name = string.gsub(u.Name, string.lower(z), string.upper(w))
                        elseif string.find(string.lower(u.Name), string.lower(z), nil, true) then
                            u.Name = string.gsub(u.Name, q(z), w)
                        end
                    end
                )
            end
        end
    end
end
shared.rep = replace
local function B(v)
    local C = {l:GetDescendants(), m:GetDescendants(), workspace:GetDescendants()}
    local D = 0
    for y, E in pairs(C) do
        if not v then
            n.RenderStepped:Wait()
        end
        for y, F in pairs(assert(type(E) == "table" and E, "scan_que does not hold a table")) do
            D = 1 + D
            if D >= 6000 then
                n.RenderStepped:Wait()
                D = 0
            end
            if not v then
                n.RenderStepped:Wait()
            end
            replace(F, v)
        end
    end
    for y, G in pairs(workspace:GetDescendants()) do
        if not v then
            n.RenderStepped:Wait()
        end
        replace(G)
    end
end
function fixchar(H)
    if not H then
        return
    end
    j.LocalPlayer:ClearCharacterAppearance()
    wait(0.2)
    n.RenderStepped:Wait()
    j.LocalPlayer:ClearCharacterAppearance()
    if f then
        H.Name = b
    end
    if d then
        j.LocalPlayer:ClearCharacterAppearance()
    end
    j.LocalPlayer:ClearCharacterAppearance()
    wait(0.1)
    j.LocalPlayer:ClearCharacterAppearance()
    if e then
        j.LocalPlayer:ClearCharacterAppearance()
        local I = H:FindFirstChildOfClass("BodyColors")
        if I then
            for y, J in pairs(
                {"HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor"}
            ) do
                I[J] = typeof(I[J]) == "BrickColor" and BrickColor.Random() or I[J]
            end
        else
            local K = H:FindFirstChildOfClass("Humanoid")
            if K then
                for y, L in pairs(H:GetChildren()) do
                    if L:IsA("BasePart") and pcall(K.GetLimb, K, L) then
                        L.BrickColor = BrickColor.Random()
                    end
                end
            end
        end
    end
end
fixchar(j.LocalPlayer.Character)
j.LocalPlayer.CharacterAppearanceLoaded:Connect(fixchar)
j.LocalPlayer.CharacterAdded:Connect(fixchar)
if h then
    game.ItemChanged:Connect(
        function(G, M)
            if not f and "Name" == M then
                return
            end
            local N, z =
                pcall(
                function()
                    return G[M]
                end
            )
            if N then
                if "string" == type(z) then
                    for y, J in pairs(o) do
                        n.RenderStepped:Wait()
                        if string.find(G[M], J, nil, true) then
                            G[M] = string.gsub(tostring(G[M] or z), J, b)
                        elseif string.find(G[M], string.lower(J)) then
                            G[M] = string.gsub(tostring(G[M] or z), string.lower(J), string.lower(b))
                        elseif string.find(G[M], string.upper(J), nil, true) then
                            G[M] = string.gsub(tostring(G[M] or z), string.upper(J), string.upper(b))
                        elseif string.find(string.upper(G[M]), string.upper(J), nil, true) then
                            G[M] = string.gsub(tostring(G[M] or z), q(J), b)
                        end
                    end
                    n.RenderStepped:Wait()
                    for y, J in pairs(p) do
                        n.RenderStepped:Wait()
                        if string.find(G[M], c) then
                            G[M] = string.gsub(tostring(G[M] or z), J, c)
                        end
                    end
                elseif "number" == type(z) then
                    z = tostring(G[M] or z)
                    for y, J in pairs(p) do
                        n.RenderStepped:Wait()
                        if string.find(z, J) then
                            G[M] = tonumber(tonumber(string.gsub(z, J, c) or G[M]) or G[M])
                        end
                    end
                end
            end
        end
    )
    l.DescendantAdded:Connect(replace)
    m.DescendantAdded:Connect(replace)
end
local function O(N)
    for y, x in pairs({[b] = o, [c] = p}) do
        for J, z in pairs(x) do
            if string.find(N, z, nil, true) then
                N = string.gsub(N, z, J)
            elseif string.find(N, string.lower(z), nil, true) then
                N = string.gsub(N, string.lower(z), string.lower(J))
            elseif string.find(N, string.upper(z), nil, true) then
                N = string.gsub(N, string.upper(z), string.upper(J))
            elseif string.find(string.upper(N), string.upper(z), nil, true) then
                N = string.gsub(N, q(z), J)
            end
        end
    end
    return N
end
if i.enabled and type(hookfunc or hookfunction or detour_function) == "function" then
    local P
    P =
        assert(hookfunction or hookfunc or detour_function, "Hook function required for filter_httpget")(
        assert(game.HttpGet, "HttpGet required for filter_httpget"),
        function(Q, R, ...)
            if i.request then
                local S, T = pcall(O, R)
                if S and T then
                    R = T
                end
            end
            if i.result then
                local U = P(Q, R, ...)
                local S, T = pcall(O, U)
                if S and T then
                    return T
                end
            end
            return P(Q, R, ...)
        end
    )
end
B(true)
while wait(1) do
    if f then
        j.LocalPlayer.Name = b
        if j.LocalPlayer.Character then
            j.LocalPlayer.Character.Name = b
        end
    end
    if g then
        j.LocalPlayer.UserId = tonumber(tonumber(c or 1) or 1)
    end
    B()
end
