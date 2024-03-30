----------------------------------------------------------------------------------------------------------------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
----------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "Day Hub | Blox Fruits",
    SubTitle = "Version 1",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    SeaEvent = Window:AddTab({ Title = "SeaEvent", Icon = "sea" }),
    Setting = Window:AddTab({ Title = "Setting", Icon = "settings" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "plus-circle" }),
    Player = Window:AddTab({ Title = "Player", Icon = "box" }),
    Teleport = Window:AddTab({ Title = "Island", Icon = "palmtree" }),
    Fruit = Window:AddTab({ Title = "Fruit", Icon = "cherry" }),
    Raid = Window:AddTab({ Title = "Raid", Icon = "swords" }),
    Race = Window:AddTab({ Title = "Race V4", Icon = "chevrons-right" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
	Misc = Window:AddTab({ Title = "Misc", Icon = "list-plus" }),
    Hop = Window:AddTab({ Title = "Hop", Icon = "wifi" }),
}
local Options = Fluent.Options
do
--------------------------------------------------------------------------------------------------------------------------------------------
--Place Id Check
local id = game.PlaceId
if id == 2753915549 then First_Sea = true; elseif id == 4442272183 then Second_Sea = true; elseif id == 7449423635 then Third_Sea = true; else game:Shutdown() end;
Fluent:Notify({
    Title = "Notification",
    Content = "Script Is Loader!",
    SubContent = "SubContent",
    Duration = 5
})
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:LoadAutoloadConfig()