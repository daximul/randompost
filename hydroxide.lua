local webImport = function(file) return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/hyd/%s/%s.lua"):format("daximul", "revision", file)), file .. ".lua")() end
webImport("init")
webImport("ui/main")
