--[[
    Jolt - Plugin for Cobalt 
    Decodes Jolt packets into named virtual log entries.
    Made by @CacheZeal on Discord
]]
local VERSION = "1.0.0"

-- IMO this feels a worser design then using return function(cobalt: whatever) cuz like yeah then the plugin manager could js call that function
type ExecutorCheckName =
    "FileSystem"
    | "getfflag"
    | "setfflag"
    | "getactors"
    | "run_on_actor"
    | "create_comm_channel"
    | "newcclosure"
    | "iscclosure"
    | "islclosure"
    | "checkcaller"
    | "getcallingscript"
    | "hookfunction"
    | "isfunctionhooked"
    | "restorefunction"
    | "setstackhidden"
    | "FilterBase"
    | "oth"
    | "raknet"
    | "hookmetamethod"
    | "getnamecallmethod"
    | "getrawmetatable"
    | "getcallbackvalue"
    | "getnilinstances"
    | "getconnections"
    | "firesignal"
    | "cloneref"
    | "compareinstances"
local cobalt = Cobalt :: {
    ExecutorSupport: {
        [ExecutorCheckName]: {
            IsWorking: boolean,
            Details: any,
            Essential: boolean,
            DetectionRisk: boolean,
        },
    },
}
cobalt.PluginData = {
    Name = "Jolt",
    Description = "Decodes Jolt packets.",
    Author = "CacheZeal",
    Version = VERSION,
    Game = "*",
}

local Plugin = {}

function Plugin.Init(): boolean
    return true
end

task.defer(function(): ()
    local success = Plugin.Init()
end)
