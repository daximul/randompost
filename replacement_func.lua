local newString = {}
local newTable = {}

for i,v in pairs(getfenv().string) do
	newString[i] = v
end

for i,v in pairs(getfenv().table) do
	newTable[i] = v
end

newString.startsWith = function(str, searchString, rawPos)
	local pos = rawPos and (rawPos > 0 and rawPos or 0) or 0
	return searchString == "" and true or string.sub(str, pos, pos + #searchString) == searchString
end

newString.trim = function(str)
	return str:gsub("^%s*(.-)%s*$", "%1")
end

newTable.tbl_concat = function(...)
	local new = {}
	for i, v in next, {...} do
		for i2, v2 in next, v do
			table.insert(new, #new + 1, v2)
		end
	end
	return new
end

newTable.indexOf = function(tbl, val)
    if (type(tbl) == "table") then
        for i, v in next, tbl do
            if (v == val) then
                return i
            end
        end
    end
end

newTable.forEach = function(tbl, ret)
    for i, v in next, tbl do
        ret(i, v)
    end
end

newTable.filter = function(tbl, ret)
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

newTable.clear = function(tbl)
	if (type(tbl) == "table") then
		for key in pairs(tbl) do
			tbl[key] = nil
		end
	end
end

newTable.map = function(tbl, ret)
    if (type(tbl) == "table") then
        local new = {}
        for i, v in next, tbl do
            table.insert(new, #new + 1, ret(i, v))
        end
        return new
    end
end

newTable.deepSearch = function(tbl, ret)
    if (type(tbl) == "table") then
        for i, v in next, tbl do
            if (type(v) == "table") then
                newTable.deepSearch(v, ret)
            end
            ret(i, v)
        end
    end
end

newTable.findInTable = function(tbl, val)
	if (type(tbl) == "table") then
		for _, v in pairs(tbl) do
			if v == val then
				return true
			else
				return false
			end
		end
	else
		return false
	end
end

newTable.matchSearch = function(str1, str2)
	return str1 == string.sub(str2, 1, #str1)
end

newTable.stringFind = function(tbl, str)
	if (type(tbl) == "table") then
		for _, v in ipairs(tbl) do
			if newTable.matchSearch(str, v) then
 				return v
			end
		end
	end
end

newTable.flat = function(tbl)
    if (type(tbl) == "table") then
        local new = {}
        newTable.deepSearch(tbl, function(i, v)
            if (type(v) ~= "table") then
                new[#new + 1] = v
            end
        end)
        return new
    end
end

newTable.flatMap = function(tbl, ret)
    if (type(tbl) == "table") then
        local new = newTable.flat(newTable.map(tbl, ret))
        return new
    end
end

newTable.shift = function(tbl)
    if (type(tbl) == "table") then
        local firstVal = tbl[1]
        tbl = table.pack(table.unpack(tbl, 2, #tbl))
        tbl.n = nil
        return tbl
    end
end

newTable.keys = function(tbl)
    if (type(tbl) == "table") then
        local new = {}
        for i, v in next, tbl do
            new[#new + 1] = i	
        end
        return new
    end
end

getgenv()["string"] = newString
getgenv()["table"] = newTable
