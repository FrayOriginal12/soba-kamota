local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Bracket/main/BracketV32.lua"))()
Bracket:Notification() Bracket:Notification2()

local Window = Bracket:Window({Name = "sobaka mota",Enabled = true,Color = Color3.new(1,0.5,0.5),Size = UDim2.new(0,496,0,496),Position = UDim2.new(0.5,-248,0.5,-248)}) do
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
                    esp.Size = Vector3.new(7.64226, 4.33262, 16.6591)
                    esp.Transparency = 0.4
                    esp.Color3 = Color3.fromRGB(178,34,34)
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

local ButtonSky3 = TabSky:Button({Name = "sky3",Side = "Left",Callback = function()
s = Instance.new("Sky")
s.Name = "loltroll"
s.SkyboxBk = "rbxassetid://11730840088" ------- 
s.SkyboxDn = "rbxassetid://11730842997" -------
s.SkyboxFt = "rbxassetid://11730849615" ------ Decal id
s.SkyboxLf = "rbxassetid://11730852920" --------
s.SkyboxRt = "rbxassetid://11730855491" ---------
s.SkyboxUp = "rbxassetid://11730857150" --------
s.Parent = game.Lighting
end})

local ButtonSky5 = TabSky:Button({Name = "sky4",Side = "Left",Callback = function()
s = Instance.new("Sky")
s.Name = "loltroll"
s.SkyboxBk = "rbxassetid://11555017034" ------- 
s.SkyboxDn = "rbxassetid://11555013415" -------
s.SkyboxFt = "rbxassetid://11555010145" ------ Decal id
s.SkyboxLf = "rbxassetid://11555006545" --------
s.SkyboxRt = "rbxassetid://11555000712" ---------
s.SkyboxUp = "rbxassetid://11554996247" --------
s.Parent = game.Lighting
end})

local ButtonSky6 = TabSky:Button({Name = "sky4",Side = "Left",Callback = function()
s = Instance.new("Sky")
s.Name = "loltroll"
s.SkyboxBk = "http://www.roblox.com/asset/?id=6778646360" ------- 
s.SkyboxDn = "http://www.roblox.com/asset/?id=6778658683" -------
s.SkyboxFt = "http://www.roblox.com/asset/?id=6778648039" ------ Decal id
s.SkyboxLf = "http://www.roblox.com/asset/?id=6778649136" --------
s.SkyboxRt = "http://www.roblox.com/asset/?id=6778650519" ---------
s.SkyboxUp = "http://www.roblox.com/asset/?id=6778658364" --------
s.Parent = game.Lighting
end})

local ButtonSky4 = TabSky:Button({Name = "ClearFog",Side = "Left",Callback = function()
game:GetService("Lighting").Atmosphere.Density = 0
game:GetService("Lighting").Atmosphere.Glare = 0
game:GetService("Lighting").Atmosphere.Haze = 0
game:GetService("Lighting").Atmosphere.Offset = 0
end})


local Slider = Tab2:Slider({Name = "Slider",Side = "Left",Min = 0,Max = 200,Value = 50,Precise = 2,Unit = "",Callback = function(Number)
game.workspace.CurrentCamera.FieldOfView = Number
end})

local aimBot = Tab:Button({Name = "AimBot",Side = "Left",Callback = function()
PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera
 
ENABLED      = false
ESP_ENABLED  = false
 
_G.FREE_FOR_ALL = false
 
_G.ESP_BIND    = 52
_G.CHANGE_AIM  = 'q'
 
_G.AIM_AT = 'Base'
 
wait(1)
 
function GetNearestPlayerToMouse()
	local PLAYERS      = {}
	local PLAYER_HOLD  = {}
	local DISTANCES    = {}
	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= PLAYER then
			table.insert(PLAYERS, v)
		end
	end
	for i, v in pairs(PLAYERS) do
		if _G.FREE_FOR_ALL == false then
			if v and (v.Character) ~= nil and v.TeamColor ~= PLAYER.TeamColor then
				local AIM = v.Character:FindFirstChild(_G.AIM_AT)
				if AIM ~= nil then
					local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
					local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
					local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
					local DIFF                     = math.floor((POS - AIM.Position).magnitude)
					PLAYER_HOLD[v.Name .. i]       = {}
					PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
					PLAYER_HOLD[v.Name .. i].plr   = v
					PLAYER_HOLD[v.Name .. i].diff  = DIFF
					table.insert(DISTANCES, DIFF)
				end
			end
		elseif _G.FREE_FOR_ALL == true then
			local AIM = v.Character:FindFirstChild(_G.AIM_AT)
			if AIM ~= nil then
				local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
				local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
				local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
				local DIFF                     = math.floor((POS - AIM.Position).magnitude)
				PLAYER_HOLD[v.Name .. i]       = {}
				PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
				PLAYER_HOLD[v.Name .. i].plr   = v
				PLAYER_HOLD[v.Name .. i].diff  = DIFF
				table.insert(DISTANCES, DIFF)
			end
		end
	end
 
	if unpack(DISTANCES) == nil then
		return false
	end
 
	local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
	if L_DISTANCE > 20 then
		return false
	end
 
	for i, v in pairs(PLAYER_HOLD) do
		if v.diff == L_DISTANCE then
			return v.plr
		end
	end
	return false
end
 
GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
GUI_TARGET                         = Instance.new('TextLabel', GUI_MAIN)
GUI_AIM_AT                         = Instance.new('TextLabel', GUI_MAIN)
 
GUI_MAIN.Name                      = 'AIMBOT'
 
GUI_TARGET.Size                    = UDim2.new(0,200,0,30)
GUI_TARGET.BackgroundTransparency  = 1
GUI_TARGET.BackgroundColor         = BrickColor.new('Fossil')
GUI_TARGET.BorderSizePixel         = 0
GUI_TARGET.Position                = UDim2.new(0.5,-100,0,0)
GUI_TARGET.Text                    = 'AIMBOT : ON'
GUI_TARGET.TextColor3              = Color3.new(1,1,1)
GUI_TARGET.TextStrokeTransparency  = 1
GUI_TARGET.TextWrapped             = true
GUI_TARGET.FontSize                = 'Size24'
GUI_TARGET.Font                    = 'SourceSansBold'
GUI_TARGET.Text.Transparency       = 1

GUI_AIM_AT.Size                    = UDim2.new(0,200,0,20)
GUI_AIM_AT.BackgroundTransparency  = 1
GUI_AIM_AT.BackgroundColor         = BrickColor.new('Fossil')
GUI_AIM_AT.BorderSizePixel         = 0
GUI_AIM_AT.Position                = UDim2.new(0.5,-100,0,30)
GUI_AIM_AT.Text                    = 'AIMING : Body'
GUI_AIM_AT.TextColor3              = Color3.new(1,1,1)
GUI_AIM_AT.TextStrokeTransparency  = 1
GUI_AIM_AT.TextWrapped             = true
GUI_AIM_AT.FontSize                = 'Size18'
GUI_AIM_AT.Font                    = 'SourceSansBold'


local TRACK = false
 
function CREATE(BASE, TEAM)
	local ESP_MAIN                   = Instance.new('BillboardGui', PLAYER.PlayerGui)
	local ESP_DOT                    = Instance.new('Frame', ESP_MAIN)
	local ESP_NAME                   = Instance.new('TextLabel', ESP_MAIN)
 
	ESP_MAIN.Name                    = 'ESP'
	ESP_MAIN.Adornee                 = BASE
	ESP_MAIN.AlwaysOnTop             = true
	ESP_MAIN.ExtentsOffset           = Vector3.new(0, 1, 0)
	ESP_MAIN.Size                    = UDim2.new(0, 5, 0, 5)
 
	ESP_DOT.Name                     = 'DOT'
	ESP_DOT.BackgroundColor          = BrickColor.new('Bright red')
	ESP_DOT.BackgroundTransparency   = 1
	ESP_DOT.BorderSizePixel          = 0
	ESP_DOT.Position                 = UDim2.new(-0.5, 0, -0.5, 0)
	ESP_DOT.Size                     = UDim2.new(2, 0, 2, 0)
	ESP_DOT.Visible                  = true
	ESP_DOT.ZIndex                   = 10
 
	ESP_NAME.Name                    = 'NAME'
	ESP_NAME.BackgroundColor3        = Color3.new(255, 255, 255)
	ESP_NAME.BackgroundTransparency  = 1
	ESP_NAME.BorderSizePixel         = 0
	ESP_NAME.Position                = UDim2.new(0, 0, 0, -40)
	ESP_NAME.Size                    = UDim2.new(1, 0, 10, 0)
	ESP_NAME.Visible                 = true
	ESP_NAME.ZIndex                  = 10
	ESP_NAME.Font                    = 'ArialBold'
	ESP_NAME.FontSize                = 'Size14'
	ESP_NAME.Text                    = BASE.Parent.Name:upper()
	ESP_NAME.TextColor               = BrickColor.new('Bright red')
end
 
function CLEAR()
	for _,v in pairs(PLAYER.PlayerGui:children()) do
		if v.Name == 'ESP' and v:IsA('BillboardGui') then
			v:Destroy()
		end
	end
end
 
function FIND()
	CLEAR()
	TRACK = true
	spawn(function()
		while wait() do
			if TRACK then
				CLEAR()
				for i,v in pairs(game.Players:GetChildren()) do
					if v.Character and v.Character:FindFirstChild('Head') then
						if _G.FREE_FOR_ALL == false then
							if v.TeamColor ~= PLAYER.TeamColor then
								if v.Character:FindFirstChild('Head') then
									CREATE(v.Character.Head, true)
								end
							end
						else
							if v.Character:FindFirstChild('Head') then
								CREATE(v.Character.Head, true)
							end
						end
					end
				end
			end
		end
		wait(1)
	end)
end
 
MOUSE.Button1Down:connect(function()
	ENABLED = true
end)
 
MOUSE.Button1Up:connect(function()
	ENABLED = false
end)
 
MOUSE.KeyDown:connect(function(KEY)
	KEY = KEY:lower():byte()
	if KEY == _G.ESP_BIND then
		if ESP_ENABLED == false then
			FIND()
			ESP_ENABLED = true
			print('ESP : ON')
		elseif ESP_ENABLED == true then
			wait()
			CLEAR()
			TRACK = false
			ESP_ENABLED = false
			print('ESP : OFF')
		end
	end
end)
 
MOUSE.KeyDown:connect(function(KEY)
	if KEY == _G.CHANGE_AIM then
		if _G.AIM_AT == 'Head' then
			_G.AIM_AT = 'Torso'
			GUI_AIM_AT.Text = 'AIMING : TORSO'
		elseif _G.AIM_AT == 'Torso' then
			_G.AIM_AT = 'Head'
			GUI_AIM_AT.Text = 'AIMING : HEAD'
		end
	end
end)
 
game:GetService('RunService').RenderStepped:connect(function()
	if ENABLED then
		local TARGET = GetNearestPlayerToMouse()
		if (TARGET ~= false) then
			local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
			if AIM then
				CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
			end
			GUI_TARGET.Text = 'AIMBOT : '.. TARGET.Name:sub(1, 5)
		else
			GUI_TARGET.Text = 'AIMBOT : ON'
		end
	end
end)
 
repeat
	wait()
	if ESP_ENABLED == true then
		FIND()
	end
until ESP_ENABLED == false

end})
