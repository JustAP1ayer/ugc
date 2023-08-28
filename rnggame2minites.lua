if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    wait(0.1)
until game.Loaded and game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
task.wait(2.15)
if _G.MinTimer == nil then
    _G.MinTimer = 30
end
if (workspace:FindFirstChild("coin") or workspace:FindFirstChild("coins"))
and game.Players.LocalPlayer.Character  
 then
    
 local coinL = workspace:FindFirstChild("coin") or workspace:FindFirstChild("coins")
    if coinL:IsA("Model") then
 game.Players.LocalPlayer.Character:PivotTo(coinL.PrimaryPart.CFrame)
 repeat task.wait(0.1) until not coinL
end
end
        workspace.ChildAdded:Connect(function(child)
         task.wait(0.14) -- 14 is my lucky number <3
if (child.Name == "coin" or child.Name == "coins") and child:IsA("Model") and child.PrimaryPart
and game.Players.LocalPlayer.Character 
 then
 game.Players.LocalPlayer.Character:PivotTo(child.PrimaryPart.CFrame)
end
    end)
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

        repeat
            wait(0.1)
        until not game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt")
        task.wait(2)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()
    elseif not game.CoreGui.PurchasePrompt.ProductPurchaseContainer.Animator:FindFirstChild("Prompt") then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ignorewtffxd/main/serverhopxd.lua", true))()
    end
end
