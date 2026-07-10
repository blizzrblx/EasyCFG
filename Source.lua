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

function EasyCFG:ReadConfig(Path:string)
    return HttpService:JSONDecode(readfile(Path))
end
