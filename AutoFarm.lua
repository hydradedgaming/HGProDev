local args = {
    [1] = "Inventory",
    [2] = "Equip",
    [3] = "tower",
    [4] = "Scout"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

local args = {
    [1] = "Inventory",
    [2] = "Equip",
    [3] = "tower",
    [4] = "Sniper"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

local args = {
    [1] = "Inventory",
    [2] = "Equip",
    [3] = "tower",
    [4] = "Soldier"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

while true do 
for i = 1, 10 do
    local elevator = workspace.Elevators:GetChildren()[i]
    if elevator then
        local mapTitle = elevator.State.Map.Title.Value
        local playerCount = elevator.State.Players.Value
        if playerCount == 0 and mapTitle == "Rocket Arena" then
            game.Players.LocalPlayer.Character:PivotTo(CFrame.new(elevator.Touch.Position) * CFrame.new(0, 4, 0))
            print("Teleported to Elevator ".. i)
        end
      task.wait(0.5)
      end
    end
end

local function DisconnectFromServer()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end

local function JoinNewServer()
    local allServers = game:GetService("TeleportService"):GetGamePlaceInstances(game.PlaceId)
    local targetServer = allServers[math.random(1, #allServers)] 
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, targetServer.id)
end

while true do
    wait(3) 

    DisconnectFromServer()
    JoinNewServer()
end

for i = 1, 10 do
    local elevator = workspace.Elevators:GetChildren()[i]

if elevator then
    local mapTitle = elevator.State.Map.Title.Value
    if mapTitle ~= "Rocket Arena" then
        print("Could not find Rocket Arena map. Trying again.")
        task.wait(0.5)
    end
end
end
while true do 
local args = {
    [1] = "Difficulty",
    [2] = "Vote",
    [3] = "Normal"
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
-- votes for molten
task.wait(1)
local args = {
    [1] = "Troops",
    [2] = "Place",
    [3] = "Scout",
    [4] = {
        ["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        ["Position"] = Vector3.new(3.198105573654175, 2, -3.143373489379883)
    }
}
task.wait(26)
game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
--place scout1/2

local args = {
    [1] = "Troops",
    [2] = "Place",
    [3] = "Scout",
    [4] = {
        ["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
        ["Position"] = Vector3.new(3.199692487716675, 2, 3.473297119140625)
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
end
task.wait(1)
