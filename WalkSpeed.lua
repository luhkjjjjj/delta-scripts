local Players = game:GetService("Players")
local player = Players.LocalPlayer

local speed = 50 -- Change this to whatever speed you want

local function setSpeed()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = speed
end

setSpeed()

player.CharacterAdded:Connect(function()
    task.wait(1)
    setSpeed()
end)