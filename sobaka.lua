local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Bracket/main/BracketV32.lua"))()
Bracket:Notification() Bracket:Notification2()

local Window = Bracket:Window({Name = "sobaka mota",Enabled = true,Color = Color3.new(1,0.5,0.25),Size = UDim2.new(0,496,0,496),Position = UDim2.new(0.5,-248,0.5,-248)}) do
end

local Tab = Window:Tab({Name = "WallHack and..."}) do
end

local Tab2 = Window:Tab({Name = "visual.."}) do
end

local TabSky = Window:Tab({Name = "sky"}) do
end

local Button = Tab:Button({Name = "ESP, if click wait 10 second",Side = "Left",Callback = function()
while wait(10) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(5, 5, 10)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(85, 165, 175)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end})


local ButtonSky1 = TabSky:Button({Name = "sky1",Side = "Left",Callback = function()
s = Instance.new("Sky")
s.Name = "loltroll"
s.SkyboxBk = "http://www.roblox.com/asset/?id=159454299" ------- 
s.SkyboxDn = "http://www.roblox.com/asset/?id=159454296" -------
s.SkyboxFt = "http://www.roblox.com/asset/?id=159454293" ------ Decal id
s.SkyboxLf = "http://www.roblox.com/asset/?id=159454286" --------
s.SkyboxRt = "http://www.roblox.com/asset/?id=159454300" ---------
s.SkyboxUp = "http://www.roblox.com/asset/?id=159454288" --------
s.Parent = game.Lighting
end})

local ButtonSky2 = TabSky:Button({Name = "sky2",Side = "Left",Callback = function()
s = Instance.new("Sky")
s.Name = "loltroll"
s.SkyboxBk = "rbxassetid://2673271663" ------- 
s.SkyboxDn = "rbxassetid://2673271148" -------
s.SkyboxFt = "rbxassetid://2673271285" ------ Decal id
s.SkyboxLf = "rbxassetid://2673270998" --------
s.SkyboxRt = "rbxassetid://2673271813" ---------
s.SkyboxUp = "rbxassetid://2673271464" --------
s.Parent = game.Lighting
end})

local ButtonSky2 = TabSky:Button({Name = "ClearFog",Side = "Left",Callback = function()
game.Lighting.Atmosphere:remove()
end})

local Slider = Tab2:Slider({Name = "Slider",Side = "Left",Min = 0,Max = 200,Value = 50,Precise = 2,Unit = "",Callback = function(Number)
game.workspace.CurrentCamera.FieldOfView = Number
end})
