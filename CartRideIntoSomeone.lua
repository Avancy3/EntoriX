local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "EntoriX",
     Style = 2,
     SizeX = 700,
     SizeY = 405,
     Theme = "Dark",
      ColorOverrides = {
        MainFrame = Color3.fromRGB(2, 2, 2)
      }
})

 
local Page = UI.New({
    Title = "Cart Mod"
})

Page.Button({
    Text = "Back Button Spam",
    Callback = function()
_G.Loopname = true
while _G.Loopname do
wait(0.1)
for i,v in pairs(game.Workspace.Carts:GetDescendants()) do
       if v:FindFirstChild("Down") then
       fireclickdetector(v.Down.Click)
       end
    end
end
    end
})

Page.Button({
    Text = "Forward Button Spam",
    Callback = function()
_G.Loopname = true
while _G.Loopname do
wait(0.1)
for i,v in pairs(game.Workspace.Carts:GetDescendants()) do
       if v:FindFirstChild("Up") then
       fireclickdetector(v.Up.Click)
       end
    end
end
    end
})

Page.Button({
    Text = "Stop Down Button Spam",
    Callback = function()
        _G.Loopname = false
while _G.Loopname do
wait(0.1)
for i,v in pairs(game.Workspace.Carts:GetDescendants()) do
       if v:FindFirstChild("Down") then
       fireclickdetector(v.Down.Click)
       end
    end
end
end
    })

Page.Button({
    Text = "Stop/Go troll",
    Callback = function()
        _G.Loopname = true
while _G.Loopname do
wait(0.7)
for i,v in pairs(game.Workspace.Carts:GetDescendants()) do
       if v:FindFirstChild("On") then
       fireclickdetector(v.On.Click)
       end
    end
end
end
})

Page.Button({
    Text = "Stop Stop/Go troll",
    Callback = function()
        _G.Loopname = false
while _G.Loopname do
wait(0.0)
for i,v in pairs(game.Workspace.Carts:GetDescendants()) do
       if v:FindFirstChild("On") then
       fireclickdetector(v.On.Click)
       end
    end
end
end
})



Page.Button({
    Text = "Spawn Shit Tons of Carts",
    Callback = function()
        _G.Loopname = true
while _G.Loopname do
wait(0.05)
fireclickdetector(game:GetService("Workspace").Carts.DoubleRegen.Regen.Click)
fireclickdetector(game:GetService("Workspace").Carts.MainCart.Regen.Click)
fireclickdetector(game:GetService("Workspace").Carts.Regen.Regen.Click)
fireclickdetector(game:GetService("Workspace").Carts.Regen.Regen.Click)
end
end
})
Page.Button({
    Text = "Stop Spawning Carts",
    Callback = function()
        _G.Loopname = false
while _G.Loopname do
wait(0.1)
fireclickdetector(game:GetService("Workspace").Carts.DoubleRegen.Regen.Click)
--A way the user knows that it was disabled. 
end
end
 })
 
 Page.Button({
    Text = "Stop Forward Button Spam",
    Callback = function()
_G.Loopname = false
while _G.Loopname do
wait(0.1)
for i,v in pairs(game.Workspace.Carts:GetDescendants()) do
       if v:FindFirstChild("Up") then
       fireclickdetector(v.Up.Click)
       end
    end
end
    end
})

Page.Button({
    Text = "Funny",
    Callback = function()
for i,v in pairs(game.Workspace.Carts:GetDescendants()) do
       if v:FindFirstChild("On") then
       fireclickdetector(v.On.Click)
       end
    end
end
})

local Page = UI.New({
    Title = "Teleports"
})

Page.Button({
    Text = "Teleport to Winner",
    Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-355, 700, -2132) 
end
     })
 
 Page.Button({
    Text = "Teleport to Spawn",
    Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-24, 4, -436) 
end
     })
 
 local Page = UI.New({
     Title = "Misc Trolling"
     })
 
   Page.Button({
     Text = "Fling Script (press a few times)",
     Callback = function()
         power = 100 -- change this to make it more or less powerful
 
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

     end
})

 
   Page.Button({
     Text = "Black Hole",
     Callback = function()
        local UserInputService = game:GetService("UserInputService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Folder = Instance.new("Folder", game:GetService("Workspace"))
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
local NetworkAccess = coroutine.create(function()
    settings().Physics.AllowSleep = false
    while game:GetService("RunService").RenderStepped:Wait() do
        for _, Players in next, game:GetService("Players"):GetPlayers() do
            if Players ~= game:GetService("Players").LocalPlayer then
                Players.MaximumSimulationRadius = 0 
                sethiddenproperty(Players, "SimulationRadius", 0) 
            end 
        end
        game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
        setsimulationradius(math.huge) 
    end 
end) 
coroutine.resume(NetworkAccess)
local function ForcePart(v)
    if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
        Mouse.TargetFilter = v
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(1000000000, 1000000000, 1000000000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = 99999999999999999999999999
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 200
        AlignPosition.Attachment0 = Attachment2 
        AlignPosition.Attachment1 = Attachment1
    end
end
for _, v in next, game:GetService("Workspace"):GetDescendants() do
    ForcePart(v)
end
game:GetService("Workspace").DescendantAdded:Connect(function(v)
    ForcePart(v)
end)
UserInputService.InputBegan:Connect(function(Key, Chat)
    if Key.KeyCode == Enum.KeyCode.E and not Chat then
       Updated = Mouse.Hit + Vector3.new(0, 5, 0)
    end
end)
spawn(function()
    while game:GetService("RunService").RenderStepped:Wait() do
        Attachment1.WorldCFrame = Updated
    end
end)
     end
})

Page.Button({
     Text = "Walkspeed 60",
     Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed =60
       end
    })

    Page.Button({
        Text = "Walkspeed 100",
        Callback = function()
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed =100
          end
       })

       Page.Button({
        Text = "Walkspeed Normal",
        Callback = function()
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed =16
          end
        })
Page.Button({
     Text = "Respawn",
     Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:Destroy()
       end
    })

    local H = Misc Trolling.TextField({
        Text = "blahblahblah",
        Callback = function(Value)
    print(Value)
        end,
        Menu = {
            Information = function(self)
                X.Banner({
                    Text = "Hey!"
                })
            end
        }
    })
