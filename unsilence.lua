task.wait(2.5)
 if not game:IsLoaded() then game.Loaded:Wait() end
  repeat wait(0.1) until  game.Loaded
task.wait(10) -- to avoid broken execution
local TextChatService = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function Beta()
    if not ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") then
        return true
    else
        return false
    end
end

local Beta = Beta()
local function Chat(Message)
    if Beta == true then
        local Channels = TextChatService.TextChannels
        local General = Channels.RBXGeneral

        General:SendAsync(Message)
    else
        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
    end
end
for i=1,5 do
 task.spawn(function()
Chat(".gg/ugcleaks || redblue on top.")
  end)
end
task.wait(0.5)
  queue_on_teleport([[
  task.wait(1) -- to avoid broken execution
     if not game:IsLoaded() then game.Loaded:Wait() end
  repeat wait(0.1) until  game.Loaded and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") 
  task.wait(1) -- to avoid broken execution
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/JustAP1ayer/ugc/main/unsilence.lua"),true))()
    ]])
task.wait(10)
             loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()
