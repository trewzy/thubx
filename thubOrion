local FillColor = Color3.fromRGB(255,255,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.65
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0.1

local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local charlocal = lp.Character
local CoreGui = game:GetService("CoreGui")

--// KEY SYSTEM

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})

local ValidKey = "dawn"
local KeyEntered = nil
local KeyAttempts = 0

local KeySystemTab = Window:MakeTab({
    Name = "Key System",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local KeySystemSection = KeySystemTab:AddSection({
	Name = "Key System"
})

KeySystemTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		KeyEntered = Value
	end	  
})

KeySystemTab:AddButton({
	Name = "Confirm Key",
	Callback = function()
    	if KeyEntered == ValidKey then
        	OrionLib:Destroy()
        	KJjOIIHkhkIUKJhjLUJH()
    	else
    		KeyAttempts = KeyAttempts + 1
    		KeyAttemptsLeft = 3 - KeyAttempts
    		game.StarterGui:SetCore("SendNotification", {
        		Title = "Invalid Key!";
        		Text = "You have "..KeyAttemptsLeft.." Key Attempt(s) Left";
        		Duration = 4;
    		})
    	end
  	end    
})

game:GetService("RunService").Heartbeat:Connect(function()
	if KeyAttempts == 3 then
		game.Players.LocalPlayer:Kick("3 incorrect key attempts. if this is an error, DM bl5ze to resolve this issue.")
	end
end)


--// SPECIFICATIONS

local StabCooldown = false
local HitCheck = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("localknifehandler"):WaitForChild("HitCheck")

local Camera = game:GetService("Workspace").CurrentCamera
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

local AutofarmEnabled = false
local FOVcircle = false
local ServerHop = false
local GhostCoins = false
local TPSilentAim = false
local NameLabels = false
local targetChams = false
local normalChams = false

local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    if normalChams then
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage

    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
    end
end

while normalChams do
    Highlight()
end

FOV_Circle = Drawing.new("Circle")
FOV_Circle.Color = Color3.fromRGB(255,255,255)
FOV_Circle.Thickness = 3
FOV_Circle.NumSides = 50
FOV_Circle.Radius = 150
FOV_Circle.Filled = false

local XOffset = 0
local YOffset = -3
local ZOffset = 1

local speedVal = 16
local jumpVal = 50

local function setValues()
    wait(0.1)
    local humLocal = lp.Character:WaitForChild("Humanoid")
    local speed = speedVal
    local jump = jumpVal
    humLocal.WalkSpeed = speed
    humLocal.JumpPower = jump
end

lp.CharacterAdded:Connect(setValues)

--// AUTOFARM


function KJjOIIHkhkIUKJhjLUJH()


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "tHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})

local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local PlayerValues = PlayerTab:AddSection({
	Name = "Movement"
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 5,
	Max = 400,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 4,
	ValueName = "",
	Callback = function(Value)
		speedVal = Value
        setValues()
	end    
})

PlayerTab:AddSlider({
	Name = "JumpPower",
	Min = 15,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 5,
	ValueName = "",
	Callback = function(Value) 
		jumpVal = Value
        setValues()
	end    
})

local AutofarmTab = Window:MakeTab({
    Name = "Autofarm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TogglesSection = AutofarmTab:AddSection({
	Name = "Toggles"
})

AutofarmTab:AddToggle({
	Name = "Autofarm Enabled",
	Default = false,
	Callback = function(Value)
		AutofarmEnabled = Value
	end    
})

AutofarmTab:AddToggle({
	Name = "Ghost Coins Enabled",
	Default = false,
	Callback = function(Value)
		GhostCoins = Value
	end    
})

AutofarmTab:AddToggle({
	Name = "Anti AFK Enabled",
	Default = false,
	Callback = function(Value)
		AntiAFK = Value
	end    
})

local ModificationsSection = AutofarmTab:AddSection({
	Name = "Modifications"
})

AutofarmTab:AddSlider({
	Name = "X Offset",
	Min = -6,
	Max = 6,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		XOffset = Value
	end    
})

AutofarmTab:AddSlider({
	Name = "Y Offset",
	Min = -6,
	Max = 6,
	Default = -5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		YOffset = Value
	end    
})

AutofarmTab:AddSlider({
	Name = "Z Offset",
	Min = -6,
	Max = 6,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		ZOffset = Value
	end    
})

local KnifeTab = Window:MakeTab({
    Name = "Knife",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TogglesSection = KnifeTab:AddSection({
	Name = "Silent Aim"
})

KnifeTab:AddToggle({
	Name = "Silent Aim Enabled",
	Default = false,
	Callback = function(Value)
		TPSilentAim = Value
	end    
})

local function fovCircleVisible()
    if FOVcircle == true then
         FOV_Circle.Visible = true
    else
        FOV_Circle.Visible = false
    end
end

KnifeTab:AddToggle({
	Name = "FOV Circle Enabled",
	Default = false,
	Callback = function(Value)
		FOVcircle = Value
                fovCircleVisible()
	end    
})

KnifeTab:AddSlider({
	Name = "FOV Circle Size",
	Min = 50,
	Max = 250,
	Default = 150,
	Color = Color3.fromRGB(255,255,255),
	Increment = 5,
	ValueName = "",
	Callback = function(Value)
		FOV_Circle.Radius = Value
	end    
})

local EspTab = Window:MakeTab({
    Name = "ESP",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local EspMainSection = EspTab:AddSection({
	Name = "Main ESP"
})

EspTab:AddToggle({
	Name = "Target Chams Enabled",
	Default = false,
	Callback = function(Value)
		targetChams = Value
	end    
})

EspTab:AddToggle({
	Name = "Normal Chams Enabled",
	Default = false,
	Callback = function(Value)
		normalChams = Value
                for i, player in ipairs(Players:GetPlayers()) do
                    Highlight(player)
            end
	end    
})

EspTab:AddToggle({
	Name = "Player Names Enabled",
	Default = false,
	Callback = function(Value)
		NameLabels = Value
	end    
})

local AutofarmLoop = game:GetService("RunService").Heartbeat:Connect(function()
    if AutofarmEnabled then
           
        -- TWEEN
        if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):WaitForChild("UI").Target.Visible and game.Workspace[game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.UI.Target.TargetText.Text] then -- if target frame visible and target exists
            local AutofarmTween = game:GetService('TweenService'):Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0,Enum.EasingStyle.Linear), {CFrame = game.Workspace[game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.UI.Target.TargetText.Text].HumanoidRootPart.CFrame * CFrame.new(XOffset ,YOffset, ZOffset)})
            AutofarmTween:Play()
        end   
        
        -- STAB
        if StabCooldown == false and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):WaitForChild("UI").Target.Visible and game.Workspace[game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.UI.Target.TargetText.Text] then
            local TargetMagnitude = (game.Workspace[game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.UI.Target.TargetText.Text].HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if TargetMagnitude <= 10 then
                StabCooldown = true
                game:GetService("Players").LocalPlayer.PlayerScripts.localknifehandler.HitCheck:Fire(game.Workspace[game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.UI.Target.TargetText.Text])
                wait(0.73)
                StabCooldown = false
            end
        end
    end
end)

local fovCirclePos = game:GetService("RunService").Stepped:connect(function()
    FOV_Circle.Position = Vector2.new(Mouse.X, Mouse.Y + 37)
end)

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    if normalChams then
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end
end)

local function makeFovCircle()
    if TPSilentAim then
        FOV_Circle.Color = Color3.fromRGB(255,255,255)
        FOV_Circle.Thickness = 3
        FOV_Circle.NumSides = 50
        FOV_Circle.Radius = 150
        FOV_Circle.Visible = FOVcircle
        FOV_Circle.Filled = false
        FOV_Circle.Visible = false
    end
end

local function ClosestPlayerToMouse()
    local Closest = nil
    local Distance = 9e9
    for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
        if Player ~= game:GetService("Players").LocalPlayer then
            local Character = workspace:FindFirstChild(Player.Name)
            if Character then
                local Head = Character:FindFirstChild("HumanoidRootPart")
                if Head then
                    local ScreenPos, OnScreen = Camera:WorldToScreenPoint(Head.Position)
                    if OnScreen then
                        local Magnitude = (Vector2.new(ScreenPos.X, ScreenPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                        if Magnitude < Distance and Magnitude < FOV_Circle.Radius then
                            Closest = Character
                            Distance = Magnitude
                        end
                    end
                end
            end
        end
    end
    return Closest
end

game:GetService("RunService").Heartbeat:connect(function()
    if TPSilentAim then
    local ClosestToMouse = ClosestPlayerToMouse()
       if ClosestToMouse then
           for i,v in pairs(game:GetService("Workspace").KnifeHost:GetDescendants()) do
              if v:IsA("Part") and TPSilentAim == true then
                  v.CFrame = ClosestToMouse.Head.CFrame
              end
           end
       else 
          return end
    end
end)

local AutofarmLoop = game:GetService("RunService").Heartbeat:Connect(function()
    if AutofarmEnabled == true then
        -- SET GRAVITY
        if game:GetService("Workspace").Gravity ~= 20 then
            game:GetService("Workspace").Gravity = 20
        end
        -- REMOVE LIMBS
        game.Workspace[game.Players.LocalPlayer.Name].Head.face:Destroy()
        game.Workspace[game.Players.LocalPlayer.Name]["Left Arm"]:Destroy()
        game.Workspace[game.Players.LocalPlayer.Name]["Right Arm"]:Destroy()
        game.Workspace[game.Players.LocalPlayer.Name]["Left Leg"]:Destroy()
        game.Workspace[game.Players.LocalPlayer.Name]["Right Leg"]:Destroy()
    elseif getgenv().TPAutofarm == false then
        game:GetService("Workspace").Gravity = 196.2
    end
end)

local AutofarmLoop = game:GetService("RunService").Heartbeat:Connect(function()
    if AutofarmEnabled == true then
        -- REMOVE HAIR
        for i,v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetDescendants()) do
            if v:IsA("Accessory") then
                v.Handle:Destroy()
            end
        end
    end
end)

local AutofarmLoop = game:GetService("RunService").Heartbeat:Connect(function()
    if AutofarmEnabled == true then
        -- REMOVE BARRIERS
        for i,v in pairs(game.Workspace.GameMap.IGNORE:GetDescendants()) do
            if v:IsA("Part") then
                v:Destroy()
            end
        end 
    end
end)

game:GetService("Players").LocalPlayer.CharacterAdded:connect(function()
    if GhostCoins == true then
        game:GetService("ReplicatedStorage").Remotes.RequestGhostSpawn:InvokeServer()
        task.spawn(function()
            game:GetService("RunService").Heartbeat:connect(function()
                for i,v in pairs(game:GetService("Workspace").GhostCoins:GetDescendants()) do
                    if v:IsA("TouchTransmitter") then
                        firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) 
                        task.wait()
                        firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                    end
                end
            end)
        end)
    end
end)

local AFKCooldown = false

local XenowareAutofarm = game:GetService("RunService").Heartbeat:Connect(function()
	if AntiAFK == true then
		if AFKCooldown == false then
			AFKCooldown = true
            game:GetService("VirtualUser"):SetKeyDown("0x20")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyUp("0x20")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyDown("w")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyUp("w")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyDown("a")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyUp("a")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyDown("s")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyUp("s")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyDown("d")
            task.wait(2)
            game:GetService("VirtualUser"):SetKeyUp("d")
            wait(10)
            AFKCooldown = false
        end
    end
end)


end
