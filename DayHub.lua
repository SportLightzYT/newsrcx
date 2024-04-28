if game.PlaceId == 2753915549 then
    First_Sea = true
elseif game.PlaceId == 4442272183 then
    Second_Sea = true
elseif game.PlaceId == 7449423635 then
    Third_Sea = true
else
    game:GetService("Players").LocalPlayer:Kick("Do not Support, Are You Stupid Or Something?")
end
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
    First_Sea = true
elseif placeId == 4442272183 then
    Second_Sea = true
elseif placeId == 7449423635 then
    Third_Sea = true
end
if not game:IsLoaded() then 
    repeat game.Loaded:Wait()
    until game:IsLoaded() 
end
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Day Hub Next Genaration " .. Fluent.Version,
    SubTitle = "Premium Version | xSPLZ999",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    ItemsFarm = Window:AddTab({ Title = "Items Farm", Icon = "brush" }),
    Status = Window:AddTab({ Title = "Status", Icon = "bar-chart" }),
    SettingFarm = Window:AddTab({ Title = "Settings Farm", Icon = "settings" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "plus-circle" }),
    SeaEvent = Window:AddTab({ Title = "Sea Event", Icon = "waves" }),
    Mirage = Window:AddTab({ Title = "Mirage Island", Icon = "plamtree" }),
    Race = Window:AddTab({ Title = "Race Tabs", Icon = "sparkles" }),
    Player = Window:AddTab({ Title = "Players Tabs", Icon = "box" }),
    Teleport = Window:AddTab({ Title = "Teleport Island", Icon = "signpost-big" }),
    Raid = Window:AddTab({ Title = "Raid", Icon = "swords" }),
    Fruits = Window:AddTab({ Title = "Fruits", Icon = "cherry" }),
    Shop = Window:AddTab({ Title = "Shop Tabs", Icon = "shopping-cart" }),
    Misc = Window:AddTab({ Title = "Miscellaneous", Icon = "list-plus" }),
    Hop = Window:AddTab({ Title = "Hop Find Server", Icon = "wifi" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
}
local Options = Fluent.Options
do
Fluent:Notify({
    Title = "Day Hub",
    Content = "Now Script Loading Please Do not Enable Any Function",
    SubContent = "ตอนนี้กำลังโหลดสคริปต์ โปรดอย่าเปิดใช้งานฟังก์ชันใดๆ",
    Duration = 10
})
end
-----------------------------------
--TP2
function TP(P1)
    if not _G.Stop_TP2 then
        local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        Speed = 350
        if Distance < 250 then
            Speed = 5000
        elseif Distance < 500 then
            Speed = 650
        elseif Distance < 1000 then
            Speed = 350
        elseif Distance >= 1000 then
            Speed = 350
        end
        TP2 = game:GetService("TP2Service"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TP2Info.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
        if _G.Stop_TP2 or Auto_Raid then
            TP2:Cancel()
        elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            TP2:Play()
        end
    end
end

function TP3(P1)
local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 500 then
Speed = 500
elseif Distance < 500 then
Speed = 500
elseif Distance < 1000 then
Speed = 500
elseif Distance >= 1000 then
Speed = 500
end
game:GetService("TP2Service"):Create(
game.Players.LocalPlayer.Character.HumanoidRootPart,
TP2Info.new(Distance/Speed, Enum.EasingStyle.Linear),
{CFrame = P1}
):Play()
if _G.Stop_TP2 then
game:GetService("TP2Service"):Create(
game.Players.LocalPlayer.Character.HumanoidRootPart,
TP2Info.new(Distance/Speed, Enum.EasingStyle.Linear),
    {CFrame = P1}
):Cancel()
end
end
function TP2(P1)
local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 1000 then
Speed = 350
elseif Distance < 500 then
Speed = 350
elseif Distance < 500 then
Speed = 350
elseif Distance < 500 then
Speed = 350
elseif Distance < 1000 then
Speed = 350
elseif Distance >= 1000 then
Speed = 350
end
game:GetService("TP2Service"):Create(
game.Players.LocalPlayer.Character.HumanoidRootPart,
TP2Info.new(Distance/Speed, Enum.EasingStyle.Linear),
{CFrame = P1}
):Play()
if _G.Stop_TP2 then
game:GetService("TP2Service"):Create(
game.Players.LocalPlayer.Character.HumanoidRootPart,
TP2Info.new(Distance/Speed, Enum.EasingStyle.Linear),
    {CFrame = P1}
):Cancel()
end
_G.Clip = true
wait(Distance/Speed)
_G.Clip = false
end
function StopTP2(target)
    if not target then
        _G.StopTP2 = true
        wait()
        ATP2(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTP2 = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
        game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
--Flag Player
function AntiBan()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
    AntiBan()
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
_G.setfflag = true
spawn(function()
    while wait() do
        if _G.setfflag then
            setfflag("AbuseReportScreenshot", "False")
            setfflag("AbuseReportScreenshotPercentage", "0")
        end
    end
end)

_G.SafeFarm = true
spawn(function()
    while wait() do
        if _G.SafeFarm then
            for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("LocalScript") then
                    if
                        v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or
                        v.Name == "CamBob" or
                        v.Name == "JumpCD" or
                        v.Name == "Looking" or
                        v.Name == "Run"
                    then
                        v:Destroy()
                    end
                end
            end
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
                if v:IsA("LocalScript") then
                    if
                        v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or
                        v.Name == "CustomForceField" or
                        v.Name == "MenuBloodSp" or
                        v.Name == "PlayerList"
                    then
                        v:Destroy()
                    end
                end
            end
        else
            game.Players.LocalPlayer:Kick("Please don't turn off safe farm if you don't want to get banned")
        end
    end
end)
function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "kissed"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
        elseif MyLevel == 2525 or MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16347.4150390625, 92.09503936767578, 1122.335205078125)
        end
    end
end
-- [Function (Abandoned Quest , Others)]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end
-------------------------------------------------------------------------------------------------------
--Status Tabs
local FM = Tabs.Status:AddSection("")
task.spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                FM:SetValue("🌑 : Full Moon 100%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                FM:SetValue("🌒 : Full Moon 75%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                FM:SetValue("🌓 : Full Moon 50%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                FM:SetValue("🌗 : Full Moon 25%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                FM:SetValue("🌖 : Full Moon 15%")
            else
                FM:SetValue("🌚 : Full Moon 0%")
            end
        end)
    end
end)
local Mirragecheck = Tabs.Status:AddSection("")
task.spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                Mirragecheck:SetValue('🏝️: Mirage Island is Spawning')
            else
                Mirragecheck:SetValue('❌: Mirage Island Not Found')
            end
        end
    end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------------
--Main Tabs
Tabs.Main:AddSection("Level Farming")
Tabs.Main:AddToggle("ToggleQuestModeL", {Title = "Auto Farm Level",Description = "ออโต้ ฟาร์มเลเวล", Default = false })
ToggleQuestModeL:OnChanged(function(Value)
    _G.AutoFindMoon = Value
end)
local listlevelfarmmode = {"Quest","No Quest"}
local DropdownQuestMode = Tabs.Main:AddDropdown("DropdownQuestMode",{
    Title = "Select Mode Farm Level",
    Description = "เลือกโหมดฟาร์มเลเวล",
    Values = listlevelfarmmode,
    Multi = false,
    Default = 1,
})
DropdownQuestMode:SetValue("...")
DropdownQuestMode:OnChanged(function(Value)
    listlevelfarmmode = Value
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------
--Settings Tabs
Tabs.SettingFarm:AddSection("Settings Farm")
Tabs.SettingFarm:AddToggle("ToggleFastAttack", {Title = "Fast Attack",Description = "โจมตีไว", Default = false })
ToggleFastAttack:OnChanged(function(Value)
    _G.FastAttack = Value
end)
local listfastattack = {"Fast","Super Fast"}
local DropdownFastMode = Tabs.SettingFarm:AddDropdown("DropdownFastMode",{
    Title = "Select Fast Attack Mode",
    Description = "เลือกความเร็วการโจมตี",
    Values = listfastattack,
    Multi = false,
    Default = 1,
})
DropdownFastMode:SetValue("...")
DropdownFastMode:OnChanged(function(Value)
    listfastattack = Value
end)
---------------------------------------------------------------------------------------------------------
--Items Farm
local Items = Tabs.ItemsFarm:AddSection("Items Farm")

if Third_Sea then
    local ToggleHallow = Tabs.ItemsFarm:AddToggle("ToggleHallow", {Title = "Auto Hallow Scythe [Fully]",Description = "ออโต้หาเคียว [เต็มระบบ]", Default = false })

    ToggleHallow:OnChanged(function(Value)
        AutoHallowSycthe = Value
    end)
    Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    TP2(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									--Click
                                until v.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat TP2(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                      wait(0.5)
                        EquipTool("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
    end)
	
	
	spawn(function()
           while wait(0.001) do
           if AutoHallowSycthe then
           local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
           }
          
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
           end
           end)
        
           
           local ToggleYama = Tabs.ItemsFarm:AddToggle("ToggleYama", {Title = "Auto Get Yama",Description = "ออโต้ดคึงดาบยามะ", Default = false })
           ToggleYama:OnChanged(function(Value)
            _G.AutoYama = Value
           end)
           Options.ToggleYama:SetValue(false)
           spawn(function()
            while wait() do
                if _G.AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                        repeat wait(.1)
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end
        end)


        local ToggleTushita = Tabs.ItemsFarm:AddToggle("ToggleTushita", {Title = "Auto Tushita",Description = "ออโต้ ทูชิตะ", Default = false })
        ToggleTushita:OnChanged(function(Value)
            AutoTushita = Value
        end)
        Options.ToggleTushita:SetValue(false)
           spawn(function()
                   while wait() do
                               if AutoTushita then
                                   if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                           if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat wait(_G.Fast_Delay)
                                                AttackNoCoolDown()
                                                   AutoHaki()
                                                   if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                                       wait()
                                                       EquipTool(SelectWeapon)
                                                   end
                                                   FarmPos = v.HumanoidRootPart.CFrame
                                                     --Click
                                                   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                   v.Humanoid.JumpPower = 0
                                                   v.Humanoid.WalkSpeed = 0
                                                   v.HumanoidRootPart.CanCollide = false
                                                   v.Humanoid:ChangeState(11)
                                                   TP2(v.HumanoidRootPart.CFrame * Pos)
                                               until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                           end
                                       end
                                   else
                                       TP2(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                                   end
                               end
                           end
                   end)


                   local ToggleHoly = Tabs.ItemsFarm:AddToggle("ToggleHoly", {Title = "Auto Holy Torch",Description = "ออโต้วางไฟ เควสทูชิตะ", Default = false })
                   ToggleHoly:OnChanged(function(Value)
                    _G.Auto_Holy_Torch = Value
                   end)
                   Options.ToggleHoly:SetValue(false)
                   spawn(function()
                    while wait() do
                        if _G.Auto_Holy_Torch then
                            pcall(function()
                                wait(1)
                                repeat TP2(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                                wait(1)
                                repeat TP2(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                                wait(1)
                                repeat TP2(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                                wait(1)
                                repeat TP2(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                                wait(1)
                                repeat TP2(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                            end)
                        end
                    end
                end)
            end


if Second_Sea then
        local ToggleFactory = Tabs.ItemsFarm:AddToggle("ToggleFactory", {Title = "Auto Farm Factory",Description = "ออโต้ตีโรงงาน", Default = false })
        ToggleFactory:OnChanged(function(Value)
            _G.Factory = Value
        end)
        Options.ToggleFactory:SetValue(false)

        spawn(function()
            while wait() do
                if _G.Factory then
                    if game.Workspace.Enemies:FindFirstChild("Core") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Core" and v.Humanoid.Health > 0 then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    repeat TP2(CFrame.new(448.46756, 199.356781, -441.389252))
                                        wait()
                                    until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                                    EquipTool(SelectWeapon)
                                    AutoHaki()
                                    TP2(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    --Click
                                until not v.Parent or v.Humanoid.Health <= 0  or _G.Factory == false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Core") then
                        repeat TP2(CFrame.new(448.46756, 199.356781, -441.389252))
                            wait()
                        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                    end
        
                end
            end
        end)

    end

        if Third_Sea then
    local ToggleCakeV2 = Tabs.ItemsFarm:AddToggle("ToggleCakeV2", {Title = "Kill Dought King [Need Spawn]",Description = "ฆ่าบอสคาตาคุริร่าง 2 [บอสต้องเกิดก่อน]", Default = false })
    ToggleCakeV2:OnChanged(function(Value)
        _G.AutoCakeV2 = Value
    end)
        Options.ToggleCakeV2:SetValue(false)
end
    spawn(function()
        while wait() do
            if _G.AutoCakeV2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.AutoCakeV2 or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                     TP2(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
            
                    end
                end)
            end
        end
    end)
---------------------------------------------------------------------------------------------------------
--Sea Event Tabs
if Third_Sea then
    local RoughSea = Tabs.SeaEvent:AddSection("🦊 Kitsune 🦊")
    local ToggleEspKitsune = Tabs.SeaEvent:AddToggle("ToggleEspKitsune", {Title = "Esp Kitsune Island",Description = "จุดบอกตำแหน่ง เกาะจิ้งจอก", Default = false })
    ToggleEspKitsune:OnChanged(function(Value)
      KitsuneIslandEsp = Value
      while KitsuneIslandEsp do wait()
          UpdateIslandKisuneESP() 
      end
  end)
    Options.ToggleEspKitsune:SetValue(false)

    function UpdateIslandKisuneESP() 
      for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
          pcall(function()
              if KitsuneIslandEsp then 
                  if v.Name == "Kitsune Island" then
                      if not v:FindFirstChild('NameEsp') then
                          local bill = Instance.new('BillboardGui',v)
                          bill.Name = 'NameEsp'
                          bill.ExtentsOffset = Vector3.new(0, 1, 0)
                          bill.Size = UDim2.new(1,200,1,30)
                          bill.Adornee = v
                          bill.AlwaysOnTop = true
                          local name = Instance.new('TextLabel',bill)
                          name.Font = "Code"
                          name.FontSize = "Size14"
                          name.TextWrapped = true
                          name.Size = UDim2.new(1,0,1,0)
                          name.TextYAlignment = 'Top'
                          name.BackgroundTransparency = 1
                          name.TextStrokeTransparency = 0.5
                          name.TextColor3 = Color3.fromRGB(80, 245, 245)
                      else
                          v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                      end
                  end
              else
                  if v:FindFirstChild('NameEsp') then
                      v:FindFirstChild('NameEsp'):Destroy()
                  end
              end
          end)
      end
  end

    local ToggleTPKitsune = Tabs.SeaEvent:AddToggle("ToggleTPKitsune", {Title = "TP2 To Kitsune Island",Description = "บินไปเกาะ จิ้งจอก", Default = false })
    ToggleTPKitsune:OnChanged(function(Value)
      _G.TP2ToKitsune = Value
    end)
    Options.ToggleTPKitsune:SetValue(false)
    spawn(function()
      local kitsuneIsland
      while not kitsuneIsland do
          kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
          wait(1)
      end
      while wait() do
          if _G.TP2ToKitsune then
              local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
              if shrineActive then
                  for _, v in pairs(shrineActive:GetDescendants()) do
                      if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                          TP2(v.CFrame)
                      end
                  end
              end
          end
      end
  end)


    local ToggleCollectAzure = Tabs.SeaEvent:AddToggle("ToggleCollectAzure", {Title = "Collect Azure Ambers",Description = "ออโต้เก็บลูกไฟ", Default = false })
    ToggleCollectAzure:OnChanged(function(Value)
       _G.CollectAzure = Value
    end)
    Options.ToggleCollectAzure:SetValue(false)
spawn(function()
  while wait() do
      if _G.CollectAzure then
          pcall(function()
              if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                  TP2(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                  print("Azure")
              end
          end)
      end
  end
end)
end
---------------------------------------------------------------------------------------------------------
--Misc Tabs
local JobID = Tabs.Hop:AddSection("Job ID Function")
Tabs.Misc:AddButton({
	Title = "Copy Job ID",
	Description = "คัดลอก Job ID",
	Callback = function()
        setclipboard(tostring(game.JobId))
	end
})
local Input = Tabs.Misc:AddInput("Jobid", {
    Title = "Input Job ID",
    Description = "ใส่ Job ID",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        _G.Job = Value
    end
})

Input:OnChanged(function(Value)
    _G.Job = Value
end)
Tabs.Misc:AddButton({
	Title = "Join Job ID",
	Description = "เข้า Job ID",
	Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
	end
})
if First_Sea or Second_Sea then
    local Mastery = Tabs.Hop:AddSection("Thid Sea Please !!!")
end

if Third_Sea then
local ToggleFindMoon = Tabs.Hop:AddToggle("ToggleFindMoon", {Title = "Find Full Moon",Description = "เปลี่ยนเซิฟหาเซิฟ พระจันทร์เต็มดวง", Default = false })
ToggleFindMoon:OnChanged(function(Value)
    _G.AutoFindMoon = Value
end)
Options.ToggleFindMoon:SetValue(false)


spawn(function()
    while wait() do
        if _G.AutoFindMoon then
        if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
            wait(2.0)
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
            Hop()
            Fluent:Notify({
                Title = "Day Hub",
                Content = "Turn Off Find Full Moon...",
                SubContent = "", -- Optional
                Duration = 5
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
            Hop()
            Fluent:Notify({
                Title = "Day Hub",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
            Hop()
            Fluent:Notify({
                Title = "Day Hub",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5
            })
        else
            Hop()
            end
        end
    end
end)


local ToggleMirageIsland = Tabs.Hop:AddToggle("ToggleMirageIsland", {Title = "Find Mirage Island",Description = "เปลี่ยนเซิฟหาเซิฟ เกาะลับ", Default = false })
ToggleMirageIsland:OnChanged(function(Value)
    _G.FindMirageIsland = Value
end)
Options.ToggleMirageIsland:SetValue(false)

spawn(function()
    while wait() do
    if _G.FindMirageIsland then
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            if HighestPointRealCFrame and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude > 10 then
            TP2(getHighestPoint().CFrame * CFrame.new(0, 211.88, 0))
                end
        elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            Hop()
            end
        end
    end
end)
function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end
-----------------------------------------------------------------------------------------------------------------------------------------------
--Teleport
local Teleport = Tabs.Teleport:AddSection("Teleport World")

Tabs.Teleport:AddButton({
    Title = "First Sea",
    Description = "โลก 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})



Tabs.Teleport:AddButton({
    Title = "Second Sea",
    Description = "โลก 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})



Tabs.Teleport:AddButton({
    Title = "Third Sea",
    Description = "โลก 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})



local Teleport = Tabs.Teleport:AddSection("Teleport Island")
if First_Sea then
	SelectIsland = {"Start Island","Marine","MarineFord","Middle Town","Jungle","Pirate Village","Desert","Frozen Village","Colosseum","Prison","Mob Leader","Magma Village","Day Next GenarationWater Gate","Day Next GenarationWater City","Fountain City","Sky1","Sky2","Sky3"}
elseif Second_Sea then
	SelectIsland = {"Dock","Flamingo Mansion","Flamingo Room","Cafe","Sunflower Field","Jeramy Mountain","Colossem","Factroy","The Bridge","Green Bit","Graveyard","Dark Area","Snow Mountain","Hot Island","Cold Island","Raid Lab","Law Raid","Ice Castle","Usopp's Island","Inscription Island","Forgotten Island","Ghost Ship"}
elseif Third_Sea then
	SelectIsland = {"Port Town","Hydra Island","Hydra Area","Yama/Enma Room","Tushita Door","Gaint Tree","Mansion","PineApple Village","Floating Turtle","Castle On The Sea","Dungeon","Haunted Castle","Peanut Island","Ice Cream Island","Cake Loaf","Chocolate Island","Candy Land","Tiki Outpost"}
end
local DropdownIsland = Tabs.Teleport:AddDropdown("DropdownIsland",{
    Title = "Dropdown",
    Description = "เลือกเกาะ",
    Values = SelectIsland,
    Multi = false,
    Default = 1,
})

DropdownIsland:SetValue("...")
DropdownIsland:OnChanged(function(Value)
    _G.TeleportIsland = Value
end)
function ByPasstpisland(Position)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    task.wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
Tabs.Teleport:AddButton({
    Title = "Teleport To Island",
    Description = "บินไปยังเกาะที่เลือก",
    Callback = function()
        if _G.TeleportIsland == then
                if SelectIsland == "Start Island" then
                    TP2(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif SelectIsland == "Marine" then
                    TP2(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif SelectIsland == "Middle Town" then
                    TP2(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif SelectIsland == "Jungle" then
                    TP2(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif SelectIsland == "Pirate Village" then
                    TP2(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif SelectIsland == "Desert" then
                    TP2(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif SelectIsland == "Frozen Village" then
                    TP2(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif SelectIsland == "MarineFord" then
                    TP2(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif SelectIsland == "Colosseum" then
                    TP2( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif SelectIsland == "Sky1" then
                    TP2(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif SelectIsland == "Sky2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif SelectIsland == "Sky3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif SelectIsland == "Prison" then
                    TP2( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif SelectIsland == "Magma Village" then
                    TP2(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif SelectIsland == "Day Next GenarationWater City" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif SelectIsland == "Fountain City" then
                    TP2(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif SelectIsland == "Day Next GenarationWater Gate" then
                    TP2(CFrame.new(3876.17333984375, 5.398951053619385, -1908.29638671875))
                elseif SelectIsland == "Mob Leader" then
                    TP2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                --New_World
                elseif SelectIsland == "Cafe" then
                    TP2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif SelectIsland == "Dock" then
                    TP2(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif SelectIsland == "Dark Area" then
                    TP2(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif SelectIsland == "Flamingo Mansion" then
                    TP2(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif SelectIsland == "Flamingo Room" then
                    TP2(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif SelectIsland == "Green Bit" then
                    TP2( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif SelectIsland == "Factroy" then
                    TP2(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif SelectIsland == "Colossem" then
                    TP2( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif SelectIsland == "Graveyard" then
                    TP2(CFrame.new(-5376.267578125, 8.99490737915039, -712.3366088867188))
                elseif SelectIsland == "Sunflower Field" then
                    TP2(CFrame.new(-1693.498046875, 198.6184539794922, -254.1299591064453))
                elseif SelectIsland == "Jeramy Mountain" then
                    TP2(CFrame.new(2153.423583984375, 448.9566650390625, 721.7761840820312))
                elseif SelectIsland == "The Bridge" then
                    TP2(CFrame.new(-1884.421875, 88.38383483886719, -1914.0904541015625))
                elseif SelectIsland == "Ghost Ship" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif SelectIsland == "Ice Castle" then
                    TP2(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif SelectIsland == "Forgotten Island" then
                    TP2(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif SelectIsland == "Usopp's Island" then
                    TP2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif SelectIsland == "Snow Mountain" then
                    TP2(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
                elseif SelectIsland == "Hot Island" then
                    TP2(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
                elseif SelectIsland == "Cold Island" then
                    TP2(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
                elseif SelectIsland == "Raid Lab" then
                    TP2(CFrame.new(-6436.58056640625, 250.6453094482422, -4499.71777343755))
                elseif SelectIsland == "Law Raid" then
                    TP2(CFrame.new(-5565.9921875, 329.0404968261719, -5953.748046875))
                elseif SelectIsland == "Inscription Island" then
                    TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
                elseif SelectIsland == "Great Tree" then
                    TP2(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                --Three World
                elseif SelectIsland == "Castle On The Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.77246, 314.54129, -3151.95483, 0.359622836, -6.80840202e-08, -0.93309778, 4.08927434e-08, 1, -5.72052095e-08, 0.93309778, -1.75846271e-08, 0.359622836))
                elseif SelectIsland == "Port Town" then
                    TP2(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif SelectIsland == "Hydra Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5745.28809, 610.449829, -239.348633, 0.999923825, -5.70820617e-08, -0.0123431049, 5.71043159e-08, 1, 1.45039625e-09, 0.0123431049, -2.1551303e-09, 0.999923825))
                elseif SelectIsland == "Hydra Area" then
                    TP2(CFrame.new(5229.0166015625, 68.15036010742188, -1434.3436279296875))
                elseif SelectIsland == "Floating Turtle" then
                    TP2(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif SelectIsland == "Yama/Enma Room" then
                    TP2(CFrame.new(5226.80517578125, 6.565110683441162, 1109.474609375))
                elseif SelectIsland == "Tushita Door" then
                    TP2(CFrame.new(5184.662109375, 141.78726196289062, 912.6285400390625))
                elseif SelectIsland == "Gaint Tree" then
                    TP2(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
                elseif SelectIsland == "PineApple Village" then
                    TP2(CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125))
                elseif SelectIsland == "Dungeon" then
                   TP2(CFrame.new(-5016.49365234375, 314.84393310546875, -2819.84033203125))
                elseif SelectIsland == "Ice Cream Island" then
                    TP2(CFrame.new(-874.2578125, 65.8453369140625, -10911.232421875))
                elseif SelectIsland == "Cake Loaf" then
                    TP2(CFrame.new(-2099.33, 66.9971, -12128.6))
                elseif SelectIsland == "Peanut Island" then
                    TP2(CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375))
                elseif SelectIsland == "Haunted Castle" then
                    TP2(CFrame.new(-9515.07324, 142.130615, 5537.58398))
                elseif SelectIsland == "Chocolate Island" then
                    TP2(CFrame.new(101.124573, 24.7601147, -12080.1318, -0.636760354, -0, -0.771061838, -0, 1, -0, 0.771061718, 0, -0.636760414))
                elseif SelectIsland == "Candy Land" then
                    TP2(CFrame.new(-1047.7470703125, 14.821270942687988, -14185.7939453125))
                elseif SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7236328125, 337.1940612792969, -7470.36328125))
                elseif SelectIsland == "Tiki Outpost" then
                TP2(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
                end
            until not _G.TeleportIsland
        end
    end
})
Tabs.Teleport:AddButton({
    Title = "Teleport Bypass",
    Description = "รีเซ็ตตัวเพื่อไปเกาะที่กำหนด",
    Callback = function()
        if SelectIsland == "Start Island" then
            ByPasstpisland(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif SelectIsland == "Marine" then
            TP2(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif SelectIsland == "Middle Town" then
            ByPasstpisland(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif SelectIsland == "Jungle" then
            ByPasstpisland(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif SelectIsland == "Pirate Village" then
            ByPasstpisland(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif SelectIsland == "Desert" then
            ByPasstpisland(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif SelectIsland == "Frozen Village" then
            ByPasstpisland(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif SelectIsland == "MarineFord" then
            ByPasstpisland(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif SelectIsland == "Colosseum" then
            ByPasstpisland( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif SelectIsland == "Sky1" then
            ByPasstpisland(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif SelectIsland == "Sky2" then  
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif SelectIsland == "Sky3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif SelectIsland == "Prison" then
            ByPasstpisland( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif SelectIsland == "Magma Village" then
            ByPasstpisland(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif SelectIsland == "Day Next GenarationWater City" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif SelectIsland == "Fountain City" then
            ByPasstpisland(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif SelectIsland == "Day Next GenarationWater Gate" then
            ByPasstpisland(CFrame.new(3876.17333984375, 5.398951053619385, -1908.29638671875))
        elseif SelectIsland == "Mob Leader" then
            TP2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        --New_World
        elseif SelectIsland == "Cafe" then
            ByPasstpisland(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif SelectIsland == "Dock" then
            ByPasstpisland(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif SelectIsland == "Dark Area" then
            TP2(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif SelectIsland == "Flamingo Mansion" then
            TP2(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif SelectIsland == "Flamingo Room" then
            TP2(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
        elseif SelectIsland == "Green Bit" then
            ByPasstpisland( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif SelectIsland == "Factroy" then
            TP2(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif SelectIsland == "Colossuem" then
            TP2( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif SelectIsland == "Graveyard" then
            ByPasstpisland(CFrame.new(-5376.267578125, 8.99490737915039, -712.3366088867188))
        elseif SelectIsland == "Sunflower Field" then
            TP2(CFrame.new(-1693.498046875, 198.6184539794922, -254.1299591064453))
        elseif SelectIsland == "Jeramy Mountain" then
            TP2(CFrame.new(2153.423583984375, 448.9566650390625, 721.7761840820312))
        elseif SelectIsland == "The Bridge" then
            TP2(CFrame.new(-1884.421875, 88.38383483886719, -1914.0904541015625))
        elseif SelectIsland == "Ghost Ship" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        elseif SelectIsland == "Ice Castle" then
            ByPasstpisland(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif SelectIsland == "Forgotten Island" then
            ByPasstpisland(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif SelectIsland == "Usopp's Island" then
            TP2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif SelectIsland == "Snow Mountain" then
            ByPasstpisland(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
        elseif SelectIsland == "Hot Island" then
            ByPasstpisland(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
        elseif SelectIsland == "Cold Island" then
            ByPasstpisland(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
        elseif SelectIsland == "Raid Lab" then
            TP2(CFrame.new(-6436.58056640625, 250.6453094482422, -4499.71777343755))
        elseif SelectIsland == "Law Raid" then
            TP2(CFrame.new(-5565.9921875, 329.0404968261719, -5953.748046875))
        elseif SelectIsland == "Inscription Island" then
            TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
        --Three World
        elseif SelectIsland == "Castle On The Sea" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.77246, 314.54129, -3151.95483, 0.359622836, -6.80840202e-08, -0.93309778, 4.08927434e-08, 1, -5.72052095e-08, 0.93309778, -1.75846271e-08, 0.359622836))
            TP2(CFrame.new(-4999.45361328125, 314.5412902832031, -3010.540283203125))
        elseif SelectIsland == "Port Town" then
            ByPasstpisland(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif SelectIsland == "Hydra Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5745.28809, 610.449829, -239.348633, 0.999923825, -5.70820617e-08, -0.0123431049, 5.71043159e-08, 1, 1.45039625e-09, 0.0123431049, -2.1551303e-09, 0.999923825))
        elseif SelectIsland == "Hydra Area" then
            ByPasstpisland(CFrame.new(5229.0166015625, 68.15036010742188, -1434.3436279296875))
        elseif SelectIsland == "Floating Turtle" then
            TP2(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif SelectIsland == "Yama/Enma Room" then
            TP2(CFrame.new(5226.80517578125, 6.565110683441162, 1109.474609375))
        elseif SelectIsland == "Tushita Door" then
            TP2(CFrame.new(5184.662109375, 141.78726196289062, 912.6285400390625))
        elseif SelectIsland == "Gaint Tree" then
            ByPasstpisland(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
        elseif SelectIsland == "PineApple Village" then
            ByPasstpisland(CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125))
        elseif SelectIsland == "Dungeon" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.77246, 314.54129, -3151.95483, 0.359622836, -6.80840202e-08, -0.93309778, 4.08927434e-08, 1, -5.72052095e-08, 0.93309778, -1.75846271e-08, 0.359622836))
            TP2(CFrame.new(-5016.49365234375, 314.84393310546875, -2819.84033203125))
        elseif SelectIsland == "Ice Cream Island" then
            ByPasstpisland(CFrame.new(-874.2578125, 65.8453369140625, -10911.232421875))
        elseif SelectIsland == "Cake Loaf" then
            ByPasstpisland(CFrame.new(-2099.33, 66.9971, -12128.6))
        elseif SelectIsland == "Peanut Island" then
            ByPasstpisland(CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375))
        elseif SelectIsland == "Haunted Castle" then
            ByPasstpisland(CFrame.new(-9515.07324, 142.130615, 5537.58398))
        elseif SelectIsland == "Chocolate Island" then
            ByPasstpisland(CFrame.new(101.124573, 24.7601147, -12080.1318, -0.636760354, -0, -0.771061838, -0, 1, -0, 0.771061718, 0, -0.636760414))
        elseif SelectIsland == "Candy Land" then
            ByPasstpisland(CFrame.new(-1047.7470703125, 14.821270942687988, -14185.7939453125))
        elseif SelectIsland == "Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12549.7236328125, 337.1940612792969, -7470.36328125))
        elseif SelectIsland == "Tiki Outpost" then
            ByPasstpisland(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
        end
    end
})
Tabs.Teleport:AddButton({
    Title = "Stop Tween",
    Description = "หยุดบิน",
    Callback = function(Value)
        TP2(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        StopTween = Value
    end
})
--------------------------------------------------------------------------------------------------------------------------------------------
--Raid
local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title = "Select Chip",
    Description = "เลือกชิปลงดัน",
    Values = Chips,
    Multi = false,
    Default = 1,
})
DropdownRaid:SetValue("...")
DropdownRaid:OnChanged(function(Value)
    SelectChip = Value
end)

local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title = "Buy Chip", Description = "ซื้อชิป",Default = false })
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon = Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)


    local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title = "Start Raid",Description = "ออโต้เริ่มดัน", Default = false })
    ToggleStart:OnChanged(function(Value)
        _G.Auto_StartRaid = Value
end)
Options.ToggleStart:SetValue(false)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Second_Sea then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Third_Sea then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)


local ToggleKillAura = Tabs.Raid:AddToggle("ToggleKillAura", {Title = "Kill Aura",Description = "ฆ่ามอนเตอร์ทุกตัว", Default = false })
ToggleKillAura:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)


local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {Title = "Auto Next Island",Description = "ออโต้เปลี่ยนเกาะ", Default = false })
ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland = Value
end)
Options.ToggleNextIsland:SetValue(false)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if AutoNextIsland then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 5" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2300 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 4" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2100 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,10,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island ") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island " and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP2(v.CFrame*CFrame.new(0,70,0))
						end
					end
				else
					task.wait()
				end
			else
				task.wait()
			end
		end)
	end
end)



local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title = "Auto Awake",Description = "ออโต้ซื้อสกิล V2", Default = false })
ToggleAwake:OnChanged(function(Value)
    AutoAwakenAbilities = Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)

Tabs.Raid:AddButton({
        Title = "Buy Chip Select",
        Description = "ซื้อชิปที่เราเลือก",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",SelectChip)
        end
})
Tabs.Raid:AddButton({
        Title = "Start Raid",
        Description = "กดเริ่มต้นดัน",
        Callback = function()
            if First_Sea then
                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
            elseif Second_Sea then
                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
            end
        end
})
--------------------------------------------------------------------------------------------------------------------------------------------
--RaceV4
local RaceV4 = Tabs.Race:AddSection("Race V4")

Tabs.Race:AddButton({
    Title = "Timple Of Time",
    Description = "ที่ทำเผ่า V4",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end
})


Tabs.Race:AddButton({
    Title = "Lever Pull",
    Description = "จุดดึงขันโยก",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        wait(0.5)
        TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})


Tabs.Race:AddButton({
    Title = "Acient One",
    Description = "NPC อัพเกรดเกียร์",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        wait(0.5)
        TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})


local Mastery = Tabs.Race:AddSection("Auto Race")
Tabs.Race:AddButton({
    Title = "Race Door",
    Description = "ประตูประจำเผ่า",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
            wait(0.5)
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    TP2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    TP2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    TP2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    TP2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    TP2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    TP2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
    end
})


local ToggleHumanandghoul = Tabs.Race:AddToggle("ToggleHumanandghoul", {Title = "Auto [ Human / Ghoul ] Trial",Description = "ออโต้ผ่านเควส มนุษย์/กูล ", Default = false })
ToggleHumanandghoul:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleHumanandghoul:SetValue(false)


local ToggleAutotrial = Tabs.Race:AddToggle("ToggleAutotrial", {Title = "Auto Trial",Description = "ออโต้ผ่านเควส ทุกเผ่า", Default = false })
ToggleAutotrial:OnChanged(function(Value)
    _G.AutoQuestRace = Value
end)
Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							BTPZ(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							TP2(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					TP2(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							TP2(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)


local Mastery = Tabs.Race:AddSection("Auto Train")

local ToggleAutoAcientQuest = Tabs.Race:AddToggle("ToggleAutoAcientQuest", {Title = "Auto Train",Description = "ออโต้ทำเควสอัพเกรดเกียร์", Default = false })
ToggleAutoAcientQuest:OnChanged(function(Value)
    AutoFarmAcient = Value
end)
Options.ToggleAutoAcientQuest:SetValue(false)
local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    AutoFarmAcient = false
                    TP2(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if AutoFarmAcient then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    bringmob = true
                                    repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    TP2(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                until not AutoFarmAcient or not v.Parent or v.Humanoid.Health <= 0
                          bringmob = false
                            end
                        end
                    end
                else
                TP2(AcientCframe)
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end
    end)
end)
spawn(function()
while wait() do
    pcall(function()
        if AutoFarmAcient then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            wait(0.1)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end
    end)
end
end)

--------------------------------------------------------------------------------------------------------------------------------------------
--shop
if Second_Sea or Third_Sea then
    local ToggleHakiColor = Tabs.Shop:AddToggle("ToggleHakiColor", {Title = "Buy Haki Color",Description = "ออโต้ซื้อสีฮาคิ",Default = false })
    ToggleHakiColor:OnChanged(function(Value)
        _G.Auto_Buy_Enchancement = Value
    end)
        Options.ToggleHakiColor:SetValue(false)
    spawn(function()
            while wait() do
                if _G.Auto_Buy_Enchancement then
                    local args = {
                        [1] = "ColorsDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end 
            end
        end)
end
if Second_Sea then
    local ToggleSwordLengend = Tabs.Shop:AddToggle("ToggleSwordLengend", {Title = "Buy Sword Lengendary",Description = "ออโต้ซื้อดาบโซโล",Default = false })
    ToggleSwordLengend:OnChanged(function(Value)
        _G.BuyLengendSword = Value
    end)
        Options.ToggleSwordLengend:SetValue(false)

        task.spawn(function()
            while task.wait(.1) do
                pcall(function()
                    if _G.BuyLengendSword or Triple_A then
                        local args = {
                            [1] = "LegendarySwordDealer",
                            [2] = "2"
                        }
                        -- Triple_A
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    else
                        wait(2)
                    end
                end)
            end
        end)
    end
local ToggleRandomBone = Tabs.Shop:AddToggle("ToggleRandomBone", {Title = "Auto Random Bone",Description = "สุ่มกระดูก 500/รอบ", Default = false })
ToggleRandomBone:OnChanged(function(Value)  
		_G.AutoRandomBone = Value
end)
Options.ToggleRandomBone:SetValue(false)
	
spawn(function()
	while wait(0.1) do
	if _G.AutoRandomBone then
	local args = {
	 [1] = "Bones",
	 [2] = "Buy",
	 [3] = 1,
	 [4] = 1
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
	end
	end)


Tabs.Shop:AddButton({
	Title = "Geppo",
	Description = "ซื้อกระโดดกลางอากาศ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
	end
})



Tabs.Shop:AddButton({
	Title = "Buso Haki",
	Description = "ซื้อฮาคิ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
	end
})




Tabs.Shop:AddButton({
	Title = "Soru",
	Description = "ซื้อโซรุ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
	end
})


Tabs.Shop:AddButton({
	Title = "Ken Haki",
	Description = "ซื้อฮาคิสังเกต",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end
})
while _G.autobuyAbilities do wait(.1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end
local ToggleBuyAllAb = Tabs.Shop:AddToggle("ToggleBuyAllAb", {Title = "Auto Buy All Abilitie",Description = "ซื้อสกิลความสามารถทั้งหมด", Default = false })
ToggleBuyAllAb:OnChanged(function(Value)  
    _G.autobuyAbilities = Value
end)
Options.ToggleBuyAllAb:SetValue(false)

local Mastery = Tabs.Shop:AddSection("Fighting Styles")


Tabs.Shop:AddButton({
	Title = "Black Leg",
	Description = "ซื้อ ขาไฟ V1",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end
})

Tabs.Shop:AddButton({
	Title = "Electro",
	Description = "ซื้อหมัดสายฟ้า V1",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
})
Tabs.Shop:AddButton({
	Title = "Fishman Karate",
	Description = "ซื้อหมัดมนุษย์เงือก V1",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Dragon Claw",
	Description = "ซื้อหมัดมังกร V1",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Superhuman",
	Description = "ซื้อหมัดซุปเปอร์ฮิวแมน",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end
})
Tabs.Shop:AddButton({
	Title = "Death Step",
	Description = "ซื้อขาไฟ V2",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end
})
Tabs.Shop:AddButton({
	Title = "Sharkman Karate",
	Description = "ซื้อหมัดมนุษย์เงือก V2",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Electric Claw",
	Description = "ซื้อหมัดสายฟ้า V2",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end
})
Tabs.Shop:AddButton({
	Title = "Dragon Talon",
	Description = "ซื้อหมัดมังกร V2",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end
})
Tabs.Shop:AddButton({
	Title = "Godhuman",
	Description = "ซื้อหมัดก็อตฮิวแมน",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end
})


local Mastery = Tabs.Shop:AddSection("Misc Items")

Tabs.Shop:AddButton({
	Title = "Refund Stats",
	Description = "รีแสตท 2500/f",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Reroll Race",
	Description = "รีเผ่า 3000/f",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
	end
})
----------------------------------------------------------------------------------------------------------------------------------
end
end
end
end
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)
Fluent:Notify({
    Title = "Day Hub Next Genaration",
    Content = "The script has been loaded.",
    Duration = 8
})
SaveManager:LoadAutoloadConfig()