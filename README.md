# 🛠️ EasyCFG

<p align="center">
  <img width="256" height="256" alt="EasyCFG Logo" src="https://github.com/user-attachments/assets/bd006962-2cc2-4860-bc40-ed7693fceac2" />
</p>

The easiest way to store local configuration files for Roblox!

---

## 🚀 How It Works


### 1. Load the library
```lua
local EasyCFG = loadstring(game:HttpGet("https://raw.githubusercontent.com/blizzrblx/EasyCFG/refs/heads/main/Source.lua")()
```
* **Description:** The library is fully open sourced and licensed under the GNU-GPL 3.0

### 2. Generate a config file
```lua
EasyCFG:GenerateConfig(data: table, path: string)
```
* **Description:** Creates a new configuration file.
* **Arguments:** Takes a table of data and a string path (e.g., `"MyScript/Configs/Config.txt"`).

### 3. Read a config file
```lua
EasyCFG:ReadConfig(path: string) -> table
```
* **Description:** Reads an existing configuration file and returns its contents.
* **Arguments:** Takes a string path (e.g., `"MyScript/Configs/Config.txt"`).

### 4. Overwrite a config file
```lua
EasyCFG:WriteConfig(data: table, path: string)
```
* **Description:** Overwrites an existing file. 
* **Note:** Takes the same arguments as `:GenerateConfig()`, but does not automatically ensure the creation of parent folders.

### 5. Delete a config file
```lua
EasyCFG:DeleteConfig(path: string)
```
* **Description:** Deletes a configuration file.
* **Arguments:** Takes a string path (e.g., `"MyScript/Configs/Config.txt"`).

### 6. List config files
```lua
EasyCFG:ListConfigs(path: string) -> table
```
* **Description:** Returns a list of files inside the specified directory.
* **Arguments:** Takes a string path (e.g., `"MyScript/Configs/"`).
