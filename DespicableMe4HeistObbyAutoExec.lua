-- // Load

if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    task.wait()
until game.Loaded and game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
task.wait(12.5) -- Lets dialogue to load.

-- // Services

local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- // Variables

local localPlayer = Players.LocalPlayer
local targetPlaceId = 17727263108
local args = { "SkipStoryline" }

-- // Teleport Check

if game.PlaceId ~= targetPlaceId then
    TeleportService:Teleport(targetPlaceId, localPlayer)
end

-- // Function

local function TweenTo(cf, dur)
    local Character = localPlayer.Character
    if not Character or not Character:FindFirstChild("HumanoidRootPart") then
        return
    end

    local rootPart = Character:WaitForChild("HumanoidRootPart")
    local direction = (cf.p - rootPart.Position).unit
    local targetCFrame = CFrame.new(cf.p)
    local distance = (targetCFrame.p - rootPart.CFrame.p).Magnitude
    local tweenInfo = TweenInfo.new(dur, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(rootPart, tweenInfo, {
        CFrame = targetCFrame
    })
    tween:Play()
    tween.Completed:wait()
    return tween
end

-- // Credits

local gui = Instance.new("ScreenGui")
gui.Name = "FarmGui"
gui.Parent = localPlayer:WaitForChild("PlayerGui")
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.75
frame.Parent = gui
local message = Instance.new("TextLabel")
message.Size = UDim2.new(1, -20, 0, 100)
message.Position = UDim2.new(0, 10, 0.5, -50)
message.BackgroundColor3 = Color3.new(1, 1, 1)
message.BackgroundTransparency = 0.15
message.Font = Enum.Font.Arcade
message.FontSize = Enum.FontSize.Size36
message.Text = "AutoFarm in Progress! Made By 'redblue.' on discord"
message.TextColor3 = Color3.new(0, 0, 0)
message.TextScaled = true
message.Parent = frame

-- // Script

Workspace.Maps["Lobby-1"]:WaitForChild("Line",100):Destroy()
ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("GamePlayerRE"):FireServer(unpack(args))

local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

for _, v in pairs(Workspace.BananaSpawnPoints:WaitForChild("Lobby_1", 97200):GetChildren()) do
    if v:IsA("Part") and v:FindFirstChildOfClass("TouchTransmitter") then
        v.CFrame = character.HumanoidRootPart.CFrame
        task.wait()
    end
end

character:WaitForChild("Humanoid").Jump = true
task.wait(0.1)
local BV = Instance.new('BodyVelocity')
BV.Parent = character.HumanoidRootPart
BV.Velocity = Vector3.new(0, 0, 0)
BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)

TweenTo(CFrame.new(-150, 154, 6),3)
character:WaitForChild("Humanoid").Jump = true
TweenTo(CFrame.new(-150, Workspace.Maps["Lobby-1"].MissionSwitch.TriggerPart.CFrame.Y, 7),20)
character.HumanoidRootPart.CFrame = Workspace.Maps["Lobby-1"].MissionSwitch.TriggerPart.CFrame
task.wait(5.5)
ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("GamePlayerRE"):FireServer(unpack(args))
task.wait(2.5)
TeleportService:Teleport(targetPlaceId, localPlayer)
