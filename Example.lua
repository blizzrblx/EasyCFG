-- Load EasyCFG module from GitHub repository
local EasyCFG = loadstring(game:HttpGet("https://raw.githubusercontent.com/blizzrblx/EasyCFG/refs/heads/main/Source.lua")())

-- Example Default Data
local Data = {
    Players = {
      "Roblox",
      "Blizzrblx",
    },
    Settings = {
      Theme = "Dark",
      Font = Enum.Font.Code,
    },
}

-- Example Overwrite Data
local OverWriteData = {
    Players = {
      "Hello",
      "World",
    },
    Settings = {
      Theme = "Light",
      Font = Enum.Font.Ubuntu,
    },
}

-- Generate a config file with initial data
EasyCFG:GenerateConfig(Data, "Example/configs/testing.txt")

-- Print the content of the config file for verification
print(EasyCFG:ReadConfig("Example/configs/testing.txt"))

-- Write over the existing config values with new data
EasyCFG:WriteConfig(OverWriteData, "Example/configs/testing.txt")

-- Generate a new config file
EasyCFG:GenerateConfig({Tags = {"Legit"}}, "Example/configs/legit.txt")

-- List all files in the specified directory
print(EasyCFG:ListConfigs("Example/configs"))

-- Delete the specific config file
EasyCFG:DeleteConfig("Example/configs/legit.txt")
