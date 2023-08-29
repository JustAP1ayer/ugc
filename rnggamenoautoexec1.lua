if not game:IsLoaded() then
    game.Loaded:Wait()
end
task.wait(2)
repeat
    wait(0.1)
until game.Loaded and game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

task.wait(1.15)
if _G.MinTimer == nil then
    _G.MinTimer = 60
end
task.wait(0.25)
   local gui = Instance.new("ScreenGui")
      gui.Name = "FarmGui"
      gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
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
      message.Text = "AutoFarm in Progress! Made By 'redblue.' on discord\n .gg/nXERxPYUyZ .gg/ugcleaks"
      message.TextColor3 = Color3.new(0, 0, 0)
      message.TextScaled = true
      message.Parent = frame
task.wait(0.25)
spawn(function()
for i,child in pairs(workspace:GetChildren()) do
     task.wait(0.14) -- 14 is my lucky number <3
if (child.Name == "coin" or child.Name == "coins") and child:IsA("Model") and child.PrimaryPart
and game.Players.LocalPlayer.Character 
 then
 game.Players.LocalPlayer.Character:PivotTo(child.PrimaryPart.CFrame)
repeat task.wait(0.1) until not child
end
task.wait(1)
end
        workspace.ChildAdded:Connect(function(child)
         task.wait(0.14) -- 14 is my lucky number <3
if (child.Name == "coin" or child.Name == "coins") and child:IsA("Model") and child.PrimaryPart
and game.Players.LocalPlayer.Character 
 then
 game.Players.LocalPlayer.Character:PivotTo(child.PrimaryPart.CFrame + Vector3.new(0,1.5,0))
end
    end)
    end)
task.wait(0.45)
      queue_on_teleport([[
    task.wait(1.5)
     if not game:IsLoaded() then game.Loaded:Wait() end
    task.wait(2.5)
  repeat wait(0.1) until  game.Loaded and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") 
    task.wait(2.5)
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/JustAP1ayer/ugc/main/rnggamenoautoexec1.lua"),true))()
    ]])
task.wait(0.3)
spawn(function()
if game:GetService("Players").LocalPlayer.PlayerGui.uiMain.frmMain.lblNextSpin.Text == "Next Spin: seconds" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()

end
    end)
game:GetService("ReplicatedStorage").playerInfo:FindFirstChild(game.Players.LocalPlayer.Name).permOddsBoost.Value = true
game:GetService("ReplicatedStorage").playerInfo:FindFirstChild(game.Players.LocalPlayer.Name).wearingUgc.Value = true
if game.ReplicatedStorage.nextSpin.Value <= _G.MinTimer then

    game.StarterGui:SetCore("SendNotification", {
        Title = "AFK, Waiting " .. tostring(game.ReplicatedStorage.nextSpin.Value) .. "s",
        Duration = game.ReplicatedStorage.nextSpin.Value - 2,
        Text = "Waiting for reward"
    })

    repeat
        task.wait()
    until tonumber(game.ReplicatedStorage.nextSpin.Value) > _G.MinTimer
    task.wait(2)
    if game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt") then
        task.wait(1)

        repeat
            wait(0.1)
        until not game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt")
        task.wait(2)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()
    elseif not game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt") then

        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()
    end
else

    game.StarterGui:SetCore("SendNotification", {
        Title = "redblue on top",
        Duration = 3,
        Text = "Serverhopping (maybe)"
    })
    task.wait(2.5)
    if game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt") then
        task.wait(1)
if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("FarmGui") then
            game:GetService("Players").LocalPlayer.PlayerGui.FarmGui:Destroy()
        end
        repeat
            wait(0.1)
        until not game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt")
        task.wait(2)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()
    elseif not game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt") then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()
    end
end
