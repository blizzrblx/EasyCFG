local EasyCFG = {}
local HttpService = game:GetService("HttpService")

function EasyCFG:GenerateConfig(Values:{},Path:string)
    local Paths = string.split(Path, "/")
    local Exists = {}

    if not isfolder("EasyCFG") then
        makefolder("EasyCFG")
    end

    for _,path in pairs(Paths) do
        if isfolder(path) then
            Exists[path] = "Folder"
        elseif isfile(path) then
            Exists[path] = "File"
        end
    end

    for path,exist in pairs(Exists) do
        if exist == "Folder" then
            if not isfolder(path) then
                makefolder(path)
            end
        elseif exist == "File" then
            if not isfile(path) then
                writefile(path,HttpService:JSONEncode(Values))
            end
        end
    end
end

function EasyCFG:WriteConfig(Values:{},Path:string)
    local success,Data = pcall(function()
        writefile(Path,HttpService:JSONEncode(Values))
    end)
    if not success then
        print("EasyCFG: Failed to write config at "..Path)
    end
end

function EasyCFG:ReadConfig(Path:string)
    local success,Data = pcall(function()
        return HttpService:JSONDecode(readfile(Path))
    end)
    if not success then
        print("EasyCFG: Failed to read config at "..Path)
    end
    return Data
end

function EasyCFG:DeleteConfig(Path:string)
    local success,Data = pcall(function()
        delfile(Path)
    end)
    if not success then
        print("EasyCFG: Failed to delete config at "..Path)
    end
end

function EasyCFG:ListConfigs(Path:string)
    local success,Data = pcall(function()
        return listfiles(Path)
    end)
    if not success then
        print("EasyCFG: Failed to list configs at "..Path)
    end
    return Data
end

print("EasyCFG: Loaded successfully")
return EasyCFG
