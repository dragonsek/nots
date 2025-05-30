local function fetchLibrary(url)
    -- Ensure 'game' is defined (for non-Roblox environments, mock it)
    if not game or not game.HttpGet then
        warn("'game' or 'game.HttpGet' is not defined. This script must be run in Roblox.")
        return nil
    end
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

local exploitScript = nil
local rayfieldLibrary = fetchLibrary("https://sirius.menu/rayfield")
if rayfieldLibrary then
    exploitScript = fetchLibrary("https://raw.githubusercontent.com/dragonsek/nots/refs/heads/main/sc.lua")
    if exploitScript then
        loadfile(rayfieldLibrary)()
    else
        warn("Exploit script failed to load.")
    end
end

local function fetchExploit(url)
    -- Ensure 'game' is defined (for non-Roblox environments, mock it)
    if not game or not game.HttpGet then
        warn("'game' or 'game.HttpGet' is not defined. This script must be run in Roblox.")
        return nil
    end
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

-- The exploitScript is now fetched and executed above after rayfieldLibrary is loaded.
local exploitScript = fetchExploit("https://raw.githubusercontent.com/dragonsek/nots/refs/heads/main/sc.lua")
if exploitScript then
    assert(load(exploitScript))()
else
    warn("Exploit script failed to load.")
end