if "By King" == KingScript and "新飞月二飞春" == Roblox then
---------------分割线-------------------------------分割线------------------------
setclipboard("KingQQ新主群https://qm.qq.com/q/SU0hmhIvwk")
wait(1)
print("KingTeam.Anti-detection turned on")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
---------------分割线-------------------------------分割线--------------------------
   local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KingScriptAE/No-sirve-nada./main/Je%20ne%20comprends%20rien.lua"))() --UI
  local window = library:new("KING┋Advanced") --脚本名称
  
  local lin = window:Tab("使用Script必看",'17015137366')
  local AY = lin:section("KING.Script信息",true)
  
  AY:Label("KingTeam保护客户:"..game.Players.LocalPlayer.Character.Name)
  AY:Label("KingTeam保护注入器:"..identifyexecutor())
  AY:Label("KingTeam获取当前服务器ID:" .. game.GameId .. " ")
  AY:Label("KingTeam谢谢你们的支持")
  AY:Label("注意！音乐是开启音效，不是故障")
  AY:Label("大群:744830231")
  AY:Label("主作者:King[霖溺]，作者QQ1802952013")
  AY:Label("副作者:龙叔【别被冒充的龙叔的圈了】")
  AY:Label("KING.script版本:AdvancedV10")
  AY:Label("注意！反挂机已经自动开启")
  AY:Label("现在本脚本能用的服务器功能很少，暑假修复")
  AY:Label("帮助者:白貓，钢筋，无xia，无极，清岩……等")
  AY:Label("支持120个服务器50多个通用欢迎进群让我添加服务器脚本")
AY:Toggle("脚本框架变小一点", "", false, function(state)
    if state then
      game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
     else
      game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
    end
  end)
AY:Button("关闭King脚本",function()
    game:GetService("CoreGui")["frosty"]:Destroy()
  end)

local lin = window:Tab("King神秘话",'17015137366')
local linni = lin:section("KingQQ系列",true)
  linni:Button("点我复制新大群",function()
    setclipboard("霖溺QQ新主群https://qm.qq.com/q/SU0hmhIvwk")
  end)
  linni:Button("点我复制作者想对你们说的话",function()
    setclipboard("感谢各位支持，希望各位帮我多多引流")
  end)
  linni:Button("点我复制作者QQ",function()
    setclipboard("小号1802952013大号1345639578")
  end)

local lin = window:Tab("King┇新增功能",'17015137366')
local linni = lin:section("新增的服务器",true)
linni:Button("点击我开启感染性微笑",function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Infective%20smile.lua"))()
  end)
linni:Button("King自制凹凸世界点击我开启",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Concave-convex%20world.lua"))()
  end)
linni:Button("King躲避Evade",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Evade.lua"))()
end)
  
local lin = window:Tab("King人物绘制和基础",'16060333448')
local linni = lin:section("King",true)
linni:Slider('普通速度-可调大调小-部分通用', 'Walkspeed Slider', 20, 20, 1000, false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end)
linni:Textbox("丝滑速度-调大后不能调小-全部通用", "tpwalking", "King输入", function(king)
local tspeed = king
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)
linni:Textbox("全局跳跃", "JumpPower", "King输入", function(Value)
  spawn(function()
   while
    task.wait() 
    do
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
  end 
  end) 
end)
  linni:Slider('无敌视界-正常75', 'Sliderflag', 75, 0.1, 300, false, function(v)
    game.Workspace.CurrentCamera.FieldOfView = v
  end)
  linni:Slider('人物踏空高度-别调太快', 'HipHeight Slider', 0, 0, 1000, false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
end)
linni:Textbox("重力设置!", "Gravity", "输入", function(Gravity)
  spawn(function()
   while
    task.wait() 
    do
     game.Workspace.Gravity = Gravity 
  end 
  end) 
end)
linni:Textbox("范围设置!", "HitBox", "输入", function(Value)
   _G.HeadSize = Value
    _G.Disabled = true 
   game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
   v.Character.HumanoidRootPart.Transparency = 0.7 
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
    v.Character.HumanoidRootPart.Material = "Neon"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end 
   end 
   end
    end)
end)
 linni:Button("King制作情云同款自瞄点击开启", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Circle%20self-aiming.lua"))()
end)
  linni:Toggle("无敌自瞄", "aimbot", false, function(aimbot)
         local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local GuiService = game:GetService("GuiService")
    local LocalPlayer = Players.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local Camera = workspace.CurrentCamera
    local sc = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local Down = true
    local Inset = GuiService:GetGuiInset() 
    getgenv().Options = {
        Enabled = aimbot,
        TeamCheck = true,
        Triggerbot = true,
        Smoothness = true,
        AimPart = "Head",
        FOV = 150
    }
      local gc = function()
        local nearest = math.huge
        local nearplr
    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= game:GetService("Players").LocalPlayer and v.Character and v.Character:FindFirstChild(Options.AimPart) then
                if Options.TeamCheck then
  if game:GetService("Players").LocalPlayer.Team ~= v.Team then
local pos = Camera:WorldToScreenPoint(v.Character[Options.AimPart].Position)
local diff = math.sqrt((pos.X - sc.X) ^ 2 + (pos.Y + Inset.Y - sc.Y) ^ 2)
            if diff < nearest and diff < Options.FOV then
                            nearest = diff
                            nearplr = v
                        end
                    end
                else
   local pos = Camera:WorldToScreenPoint(v.Character[Options.AimPart].Position)
    local diff = math.sqrt((pos.X - sc.X) ^ 2 + (pos.Y + Inset.Y - sc.Y) ^ 2)
     if diff < nearest and diff < Options.FOV then
                        nearest = diff
                        nearplr = v
                    end
                end
            end
        end
        return nearplr
    end 
    function Circle()
        local circ = Drawing.new('Circle')
        circ.Transparency = 1
        circ.Thickness = 1.5
        circ.Visible = true
        circ.Color = Color3.fromRGB(255,255,255)
        circ.Filled = false
        circ.NumSides = 150
        circ.Radius = Options.FOV
        return circ
    end
    curc = Circle()
    UserInputService.InputBegan:Connect(function( input )
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            Down = true
        end
    end)
    UserInputService.InputEnded:Connect(function( input )
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            Down = false
        end
    end)
    RunService.RenderStepped:Connect(function( ... )
        if Options.Enabled then
            if Down then
                if gc() ~= nil and gc().Character:FindFirstChild(Options.AimPart) then
                    if Options.Smoothness then
                        pcall(function( ... )
                            local Info = TweenInfo.new(0.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
   game:GetService("TweenService"):Create(Camera,Info,{
CFrame = CFrame.new(Camera.CFrame.p,gc().Character[Options.AimPart].CFrame.p)
                  }):Play()
                        end)
                    else
                        pcall(function()
                            Camera.CFrame = CFrame.new(Camera.CFrame.p,gc().Character[Options.AimPart].CFrame.p)
                        end)
                    end
                end
            end
            curc.Visible = false
     curc.Position = Vector2.new(Mouse.X, Mouse.Y+Inset.Y)
        else
            curc.Visible = false
        end
    end)
end)
linni:Toggle("子弹追踪可配合自瞄-目前效果未知", "silent", false, function(silent)
         if silent then
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
    local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    else
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 0, workspace.CurrentCamera.ViewportSize.Y / 0), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    end
    end)
linni:Button("King自制新绘制1点击我开启",function()
    loadstring(game:HttpGet("https://paste.gg/p/anonymous/7259b0557ebf44ccabf2f7b58dc79899/files/0475cb5d744642a2b572e3a8af205588/raw"))()
end)
linni:Button("King自制新绘制2点击我开启",function()
    assert(Drawing, "missing dependency: 'Drawing'");

local Players = game:GetService("Players");
local RunService = game:GetService("RunService");
local localPlayer = Players.LocalPlayer;
local camera = workspace.CurrentCamera;
local cache = {};

local BOX_OUTLINE_COLOR = Color3.new(0, 0, 0);
local BOX_COLOR = Color3.new(1,0,0);
local NAME_COLOR = Color3.new(1,1,1);
local HEALTH_OUTLINE_COLOR = Color3.new(0, 0, 0);
local HEALTH_HIGH_COLOR = Color3.new(0, 1, 0);
local HEALTH_LOW_COLOR = Color3.new(1, 0, 0);
local CHAR_SIZE = Vector2.new(4, 6);

-- utils
local function create(class, properties)
    local drawing = Drawing.new(class);
    for property, value in pairs(properties) do
        drawing[property] = value;
    end
    return drawing;
end

local function floor2(v)
    return Vector2.new(math.floor(v.X), math.floor(v.Y));
end

local function createEsp(player)
    local esp = {};

    esp.boxOutline = create("Square", {
        Color = BOX_OUTLINE_COLOR,
        Thickness = 3,
        Filled = false
    });

    esp.box = create("Square", {
        Color = BOX_COLOR,
        Thickness = 1,
        Filled = false
    });

    esp.name = create("Text", {
        Color = NAME_COLOR,
        Font = (syn and not RectDynamic) and 2 or 1,
        Outline = true,
        Center = true,
        Size = 13
    });

    esp.healthOutline = create("Line", {
        Thickness = 3,
        Color = HEALTH_OUTLINE_COLOR
    });

    esp.health = create("Line", {
        Thickness = 1
    });

    cache[player] = esp;
end

local function removeEsp(player)
    local esp = cache[player];
    if not esp then return end

    for _, drawing in pairs(esp) do
        drawing:Remove();
    end

    cache[player] = nil;
end

local function updateEsp()
    for player, esp in pairs(cache) do
        local character, team = player.Character, player.Team;
        if character and (not team or team ~= localPlayer.Team) then
            local cframe = character:GetPivot();
            local screen, onScreen = camera:WorldToViewportPoint(cframe.Position);

            if onScreen then
                local frustumHeight = math.tan(math.rad(camera.FieldOfView * 0.5)) * 2 * screen.Z;
                local size = camera.ViewportSize.Y / frustumHeight * CHAR_SIZE;
                local position = Vector2.new(screen.X, screen.Y);

                esp.boxOutline.Size = floor2(size);
                esp.boxOutline.Position = floor2(position - size * 0.5);

                esp.box.Size = esp.boxOutline.Size;
                esp.box.Position = esp.boxOutline.Position;

                esp.name.Text = string.lower(player.Name);
                esp.name.Position = floor2(position - Vector2.yAxis * (size.Y * 0.5 + esp.name.TextBounds.Y + 2));

                local humanoid = character:FindFirstChildOfClass("Humanoid");
                local health = (humanoid and humanoid.Health or 100) / 100;

                esp.healthOutline.From = floor2(position - size * 0.5) - Vector2.xAxis * 5;
                esp.healthOutline.To = floor2(position - size * Vector2.new(0.5, -0.5)) - Vector2.xAxis * 5;

                esp.health.From = esp.healthOutline.To;
                esp.health.To = floor2(esp.healthOutline.To:Lerp(esp.healthOutline.From, health));
                esp.health.Color = HEALTH_LOW_COLOR:Lerp(HEALTH_HIGH_COLOR, health);

                esp.healthOutline.From -= Vector2.yAxis;
                esp.healthOutline.To += Vector2.yAxis;
            end

            for _, drawing in pairs(esp) do
                drawing.Visible = onScreen;
            end
        else
            for _, drawing in pairs(esp) do
                drawing.Visible = false;
            end
        end
    end
end

Players.PlayerAdded:Connect(createEsp);
Players.PlayerRemoving:Connect(removeEsp);
RunService.RenderStepped:Connect(updateEsp);

for idx, player in ipairs(Players:GetPlayers()) do
    if idx ~= 1 then createEsp(player); end
end
end)
linni:Button("新内透",function()
local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}
local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"
local function Highlight(plr)
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
Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end
Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
end)
linni:Toggle("内透", "state", false, function(state)
    getgenv().enabled = state
    getgenv().filluseteamcolor = true
    getgenv().outlineuseteamcolor = true
    getgenv().fillcolor = Color3.new(1, 0, 0)
    getgenv().outlinecolor = Color3.new(1, 1, 1)
    getgenv().filltrans = 0.5
    getgenv().outlinetrans = 0.5
    local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
    if enabled == false then
      holder:Destroy()
    end
    if holder.Name == "Folder" then
      holder.Name = "ESPHolder"
      holder.Parent = game.CoreGui
    end
    if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
      holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
    end
    if getgenv().enabled == true then
      getgenv().enabled = false
      getgenv().enabled = true
    end
    game:GetService("RunService").Heartbeat:Connect(function()
      if getgenv().enabled then
        task.wait()
        for _,v in pairs(game.Players:GetChildren()) do
          local chr = v.Character
          if chr ~= nil then
local esp = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
            esp.Name = v.Name
            if uselocalplayer == false and esp.Name == game.Players.LocalPlayer.Name then
             else
              esp.Parent = holder
              if filluseteamcolor then
                esp.FillColor = v.TeamColor.Color
               else
                esp.FillColor = fillcolor
              end
              if outlineuseteamcolor then
                esp.OutlineColor = v.TeamColor.Color
               else
                esp.OutlineColor = outlinecolor
              end
              esp.FillTransparency = filltrans
              esp.OutlineTransparency = outlinetrans
              esp.Adornee = chr
              esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
          end
        end
      end
    end)
end)
linni:Toggle("人物方框只能显示敌人", "box", false, function(box)
    local function API_Check()
      if Drawing == nil then
        return "No"
       else
        return "Yes"
      end
    end
    local Find_Required = API_Check()
    if Find_Required == "No" then
      return
    end
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Camera = workspace.CurrentCamera
    local Typing = false
    _G.SendNotifications = false
    _G.DefaultSettings = false
    _G.TeamCheck = true
    _G.BoxesVisible = box
    _G.LineColor = Color3.fromRGB(102, 255, 153)
    _G.LineThickness = 1
    _G.LineTransparency = 0.7
    _G.SizeIncrease = 1
    _G.DisableKey = Enum.KeyCode.RightAlt
    local function CreateBoxes()
      for _, v in next, Players:GetPlayers() do
        if v.Name ~= Players.LocalPlayer.Name then
          local TopLeftLine = Drawing.new("Line")
          local TopRightLine = Drawing.new("Line")
          local BottomLeftLine = Drawing.new("Line")
          local BottomRightLine = Drawing.new("Line")
          RunService.RenderStepped:Connect(function()
            if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
              TopLeftLine.Thickness = _G.LineThickness
              TopLeftLine.Transparency = _G.LineTransparency
              TopLeftLine.Color = _G.LineColor
              TopRightLine.Thickness = _G.LineThickness
              TopRightLine.Transparency = _G.LineTransparency
              TopRightLine.Color = _G.LineColor
              BottomLeftLine.Thickness = _G.LineThickness
              BottomLeftLine.Transparency = _G.LineTransparency
              BottomLeftLine.Color = _G.LineColor
              BottomRightLine.Thickness = _G.LineThickness
              BottomRightLine.Transparency = _G.LineTransparency
              BottomRightLine.Color = _G.LineColor
              local HumanoidRootPart_Position, HumanoidRootPart_Size = workspace[v.Name].HumanoidRootPart.CFrame, workspace[v.Name].HumanoidRootPart.Size * _G.SizeIncrease
              local TopLeftPosition, TopLeftVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(HumanoidRootPart_Size.X, HumanoidRootPart_Size.Y, 0).p)
              local TopRightPosition, TopRightVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(-HumanoidRootPart_Size.X, HumanoidRootPart_Size.Y, 0).p)
              local BottomLeftPosition, BottomLeftVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(HumanoidRootPart_Size.X, -HumanoidRootPart_Size.Y, 0).p)
              local BottomRightPosition, BottomRightVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(-HumanoidRootPart_Size.X, -HumanoidRootPart_Size.Y, 0).p)
              if TopLeftVisible == true then
                TopLeftLine.From = Vector2.new(TopLeftPosition.X, TopLeftPosition.Y)
                TopLeftLine.To = Vector2.new(TopRightPosition.X, TopRightPosition.Y)
                if _G.TeamCheck == true then
                  if Players.LocalPlayer.Team ~= v.Team then
                    TopLeftLine.Visible = _G.BoxesVisible
                   else
                    TopLeftLine.Visible = false
                  end
                 else
                  TopLeftLine.Visible = _G.BoxesVisible
                end
               else
                TopLeftLine.Visible = false
              end
  if TopRightVisible == true and _G.BoxesVisible == true then
                TopRightLine.From = Vector2.new(TopRightPosition.X, TopRightPosition.Y)
                TopRightLine.To = Vector2.new(BottomRightPosition.X, BottomRightPosition.Y)
                if _G.TeamCheck == true then
                  if Players.LocalPlayer.Team ~= v.Team then
                    TopRightLine.Visible = _G.BoxesVisible
                   else
                    TopRightLine.Visible = false
                  end
                 else
                  TopRightLine.Visible = _G.BoxesVisible
                end
               else
                TopRightLine.Visible = false
              end
  if BottomLeftVisible == true and _G.BoxesVisible == true then
                BottomLeftLine.From = Vector2.new(BottomLeftPosition.X, BottomLeftPosition.Y)
                BottomLeftLine.To = Vector2.new(TopLeftPosition.X, TopLeftPosition.Y)
                if _G.TeamCheck == true then
                  if Players.LocalPlayer.Team ~= v.Team then
                    BottomLeftLine.Visible = _G.BoxesVisible
                   else
                    BottomLeftLine.Visible = false
                  end
                 else
                  BottomLeftLine.Visible = _G.BoxesVisible
                end
               else
                BottomLeftLine.Visible = false
              end
              if BottomRightVisible == true and _G.BoxesVisible == true then
                BottomRightLine.From = Vector2.new(BottomRightPosition.X, BottomRightPosition.Y)
                BottomRightLine.To = Vector2.new(BottomLeftPosition.X, BottomLeftPosition.Y)
                if _G.TeamCheck == true then
                  if Players.LocalPlayer.Team ~= v.Team then
                    BottomRightLine.Visible = _G.BoxesVisible
                   else
                    BottomRightLine.Visible = false
                  end
                 else
                  BottomRightLine.Visible = _G.BoxesVisible
                end
               else
                BottomRightLine.Visible = false
              end
             else
              TopRightLine.Visible = false
              TopLeftLine.Visible = false
              BottomLeftLine.Visible = false
              BottomRightLine.Visible = false
            end
          end)
          Players.PlayerRemoving:Connect(function()
            TopRightLine.Visible = false
            TopLeftLine.Visible = false
            BottomLeftLine.Visible = false
            BottomRightLine.Visible = false
          end)
        end
      end
      Players.PlayerAdded:Connect(function(Player)
        Player.CharacterAdded:Connect(function(v)
          if v.Name ~= Players.LocalPlayer.Name then
            local TopLeftLine = Drawing.new("Line")
            local TopRightLine = Drawing.new("Line")
            local BottomLeftLine = Drawing.new("Line")
            local BottomRightLine = Drawing.new("Line")
            RunService.RenderStepped:Connect(function()
              if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
                TopLeftLine.Thickness = _G.LineThickness
                TopLeftLine.Transparency = _G.LineTransparency
                TopLeftLine.Color = _G.LineColor
                TopRightLine.Thickness = _G.LineThickness
                TopRightLine.Transparency = _G.LineTransparency
                TopRightLine.Color = _G.LineColor
                BottomLeftLine.Thickness = _G.LineThickness
                BottomLeftLine.Transparency = _G.LineTransparency
                BottomLeftLine.Color = _G.LineColor
                BottomRightLine.Thickness = _G.LineThickness
                BottomRightLine.Transparency = _G.LineTransparency
                BottomRightLine.Color = _G.LineColor
                local HumanoidRootPart_Position, HumanoidRootPart_Size = workspace[v.Name].HumanoidRootPart.CFrame, workspace[v.Name].HumanoidRootPart.Size * _G.SizeIncrease
                local TopLeftPosition, TopLeftVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(HumanoidRootPart_Size.X, HumanoidRootPart_Size.Y, 0).p)
                local TopRightPosition, TopRightVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(-HumanoidRootPart_Size.X, HumanoidRootPart_Size.Y, 0).p)
                local BottomLeftPosition, BottomLeftVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(HumanoidRootPart_Size.X, -HumanoidRootPart_Size.Y, 0).p)
                local BottomRightPosition, BottomRightVisible = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(-HumanoidRootPart_Size.X, -HumanoidRootPart_Size.Y, 0).p)
                if TopLeftVisible == true then
                  TopLeftLine.From = Vector2.new(TopLeftPosition.X, TopLeftPosition.Y)
                  TopLeftLine.To = Vector2.new(TopRightPosition.X, TopRightPosition.Y)
                  if _G.TeamCheck == true then
         if Players.LocalPlayer.Team ~= Player.Team then
                      TopLeftLine.Visible = _G.BoxesVisible
                     else
                      TopLeftLine.Visible = false
                    end
                   else
                    TopLeftLine.Visible = _G.BoxesVisible
                  end
                 else
                  TopLeftLine.Visible = false
                end
  if TopRightVisible == true and _G.BoxesVisible == true then
                  TopRightLine.From = Vector2.new(TopRightPosition.X, TopRightPosition.Y)
                  TopRightLine.To = Vector2.new(BottomRightPosition.X, BottomRightPosition.Y)
                  if _G.TeamCheck == true then
         if Players.LocalPlayer.Team ~= Player.Team then
                      TopRightLine.Visible = _G.BoxesVisible
                     else
                      TopRightLine.Visible = false
                    end
                   else
                    TopRightLine.Visible = _G.BoxesVisible
                  end
                 else
                  TopRightLine.Visible = false
                end
                if BottomLeftVisible == true and _G.BoxesVisible == true then
                  BottomLeftLine.From = Vector2.new(BottomLeftPosition.X, BottomLeftPosition.Y)
                  BottomLeftLine.To = Vector2.new(TopLeftPosition.X, TopLeftPosition.Y)
                  if _G.TeamCheck == true then
         if Players.LocalPlayer.Team ~= Player.Team then
                      BottomLeftLine.Visible = _G.BoxesVisible
                     else
                      BottomLeftLine.Visible = false
                    end
                   else
                    BottomLeftLine.Visible = _G.BoxesVisible
                  end
                 else
                  BottomLeftLine.Visible = false
                end
                if BottomRightVisible == true and _G.BoxesVisible == true then
                  BottomRightLine.From = Vector2.new(BottomRightPosition.X, BottomRightPosition.Y)
                  BottomRightLine.To = Vector2.new(BottomLeftPosition.X, BottomLeftPosition.Y)
                  if _G.TeamCheck == true then
         if Players.LocalPlayer.Team ~= Player.Team then
                      BottomRightLine.Visible = _G.BoxesVisible
                     else
                      BottomRightLine.Visible = false
                    end
                   else
                    BottomRightLine.Visible = _G.BoxesVisible
                  end
                 else
                  BottomRightLine.Visible = false
                end
               else
                TopRightLine.Visible = false
                TopLeftLine.Visible = false
                BottomLeftLine.Visible = false
                BottomRightLine.Visible = false
              end
            end)
            Players.PlayerRemoving:Connect(function()
              TopRightLine.Visible = false
              TopLeftLine.Visible = false
              BottomLeftLine.Visible = false
              BottomRightLine.Visible = false
            end)
          end
        end)
      end)
    end
    if _G.DefaultSettings == true then
      _G.TeamCheck = false
      _G.BoxesVisible = rue
      _G.LineColor = Color3.fromRGB(102, 255, 153)
      _G.LineThickness = 1
      _G.LineTransparency = 0.5
      _G.SizeIncrease = 1.5
      _G.DisableKey = Enum.KeyCode.Q
    end
    UserInputService.TextBoxFocused:Connect(function()
      Typing = true
    end)
    UserInputService.TextBoxFocusReleased:Connect(function()
      Typing = false
    end)
    UserInputService.InputBegan:Connect(function(Input)
  if Input.KeyCode == _G.DisableKey and Typing == false then
        _G.BoxesVisible = not _G.BoxesVisible
        if _G.SendNotifications == true then
        end
      end
    end)
    local Success, Errored = pcall(function()
      CreateBoxes()
    end)
    if Success and not Errored then
      if _G.SendNotifications == true then
      end
     elseif Errored and not Success then
      if _G.SendNotifications == true then
      end
      TestService:Message("The boxes script has errored, please notify Exunys with the following information :")
      warn(Errored)
      print("!! IF THE ERROR IS A FALSE POSITIVE (says that a player cannot be found) THEN DO NOT BOTHER !!") --装逼
    end
  end)
  linni:Toggle("射线显示只能显示敌人", "tracer", false, function(tracer)
    local function API_Check()
      if Drawing == nil then
        return "No"
       else
        return "Yes"
      end
    end
    local Find_Required = API_Check()
    if Find_Required == "No" then
      return
    end
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Camera = game:GetService("Workspace").CurrentCamera
    local UserInputService = game:GetService("UserInputService")
    local TestService = game:GetService("TestService")
    local Typing = false
    _G.SendNotifications = false
    _G.DefaultSettings = false
    _G.TeamCheck = true
    _G.FromMouse = false
    _G.FromCenter = false
    _G.FromBottom = true
    _G.TracersVisible = tracer
    _G.TracerColor = Color3.fromRGB(102, 255, 153)
    _G.TracerThickness = 1
    _G.TracerTransparency = 0.7
    _G.ModeSkipKey = Enum.KeyCode.RightAlt
    _G.DisableKey = Enum.KeyCode.RightAlt
    local function CreateTracers()
      for _, v in next, Players:GetPlayers() do
        if v.Name ~= game.Players.LocalPlayer.Name then
          local TracerLine = Drawing.new("Line")
          RunService.RenderStepped:Connect(function()
 if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
              local HumanoidRootPart_Position, HumanoidRootPart_Size = workspace[v.Name].HumanoidRootPart.CFrame, workspace[v.Name].HumanoidRootPart.Size * 1
              local Vector, OnScreen = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(0, -HumanoidRootPart_Size.Y, 0).p)
              TracerLine.Thickness = _G.TracerThickness
              TracerLine.Transparency = _G.TracerTransparency
              TracerLine.Color = _G.TracerColor
              if _G.FromMouse == true and _G.FromCenter == false and _G.FromBottom == false then
                TracerLine.From = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
               elseif _G.FromMouse == false and _G.FromCenter == true and _G.FromBottom == false then
                TracerLine.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
               elseif _G.FromMouse == false and _G.FromCenter == false and _G.FromBottom == true then
                TracerLine.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
              end
              if OnScreen == true then
                TracerLine.To = Vector2.new(Vector.X, Vector.Y)
                if _G.TeamCheck == true then
                  if Players.LocalPlayer.Team ~= v.Team then
                    TracerLine.Visible = _G.TracersVisible
                   else
                    TracerLine.Visible = false
                  end
                 else
                  TracerLine.Visible = _G.TracersVisible
                end
               else
                TracerLine.Visible = false
              end
             else
              TracerLine.Visible = false
            end
          end)

          Players.PlayerRemoving:Connect(function()
            TracerLine.Visible = false
          end)
        end
      end

      Players.PlayerAdded:Connect(function(Player)
        Player.CharacterAdded:Connect(function(v)
          if v.Name ~= game.Players.LocalPlayer.Name then
            local TracerLine = Drawing.new("Line")
            RunService.RenderStepped:Connect(function()
              if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
                local HumanoidRootPart_Position, HumanoidRootPart_Size = workspace[v.Name].HumanoidRootPart.CFrame, workspace[v.Name].HumanoidRootPart.Size * 1
                local Vector, OnScreen = Camera:WorldToViewportPoint(HumanoidRootPart_Position * CFrame.new(0, -HumanoidRootPart_Size.Y, 0).p)

                TracerLine.Thickness = _G.TracerThickness
                TracerLine.Transparency = _G.TracerTransparency
                TracerLine.Color = _G.TracerColor

                if _G.FromMouse == true and _G.FromCenter == false and _G.FromBottom == false then
                  TracerLine.From = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
                 elseif _G.FromMouse == false and _G.FromCenter == true and _G.FromBottom == false then
                  TracerLine.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                 elseif _G.FromMouse == false and _G.FromCenter == false and _G.FromBottom == true then
                  TracerLine.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                end

                if OnScreen == true then
                  TracerLine.To = Vector2.new(Vector.X, Vector.Y)
                  if _G.TeamCheck == true then
                    if Players.LocalPlayer.Team ~= Player.Team then
                      TracerLine.Visible = _G.TracersVisible
                     else
                      TracerLine.Visible = false
                    end
                   else
                    TracerLine.Visible = _G.TracersVisible
                  end
                 else
                  TracerLine.Visible = false
                end
               else
                TracerLine.Visible = false
              end
            end)

            Players.PlayerRemoving:Connect(function()
              TracerLine.Visible = false
            end)
          end
        end)
      end)
    end

    UserInputService.TextBoxFocused:Connect(function()
      Typing = true
    end)

    UserInputService.TextBoxFocusReleased:Connect(function()
      Typing = false
    end)

    UserInputService.InputBegan:Connect(function(Input)
      if Input.KeyCode == _G.ModeSkipKey and Typing == false then
        if _G.FromMouse == true and _G.FromCenter == false and _G.FromBottom == false and _G.TracersVisible == true then
          _G.FromCenter = false
          _G.FromBottom = true
          _G.FromMouse = false

          if _G.SendNotifications == true then

          end
         elseif _G.FromMouse == false and _G.FromCenter == false and _G.FromBottom == true and _G.TracersVisible == true then
          _G.FromCenter = true
          _G.FromBottom = false
          _G.FromMouse = false

          if _G.SendNotifications == true then

          end
         elseif _G.FromMouse == false and _G.FromCenter == true and _G.FromBottom == false and _G.TracersVisible == true then
          _G.FromCenter = false
          _G.FromBottom = false
          _G.FromMouse = true

          if _G.SendNotifications == true then

          end
        end
       elseif Input.KeyCode == _G.DisableKey and Typing == false then
        _G.TracersVisible = not _G.TracersVisible

        if _G.SendNotifications == true then

        end
      end
    end)

    if _G.DefaultSettings == true then
      _G.TeamCheck = false
      _G.FromMouse = false
      _G.FromCenter = false
      _G.FromBottom = true
      _G.TracersVisible = true
      _G.TracerColor = Color3.fromRGB(102, 255, 153)
      _G.TracerThickness = 1
      _G.TracerTransparency = 0.5
      _G.ModeSkipKey = Enum.KeyCode.E
      _G.DisableKey = Enum.KeyCode.Q
    end

    local Success, Errored = pcall(function()
      CreateTracers()
    end)

    if Success and not Errored then
      if _G.SendNotifications == true then

      end
     elseif Errored and not Success then
      if _G.SendNotifications == true then

      end
      TestService:Message("The tracer script has errored, please notify Exunys with the following information :")
      warn(Errored)
      print("!! IF THE ERROR IS A FALSE POSITIVE (says that a player cannot be found) THEN DO NOT BOTHER !!")
    end

  end)
  linni:Toggle("名称显示只能显示敌人", "name", false, function(name)
    local function API_Check()
      if Drawing == nil then

        return "No"
       else
        return "Yes"
      end
    end

    local Find_Required = API_Check()

    if Find_Required == "No" then

      return
    end

    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Camera = workspace.CurrentCamera

    local Typing = false

    _G.SendNotifications = false
    _G.DefaultSettings = false

    _G.TeamCheck = true
    _G.ESPVisible = name
    _G.TextColor = Color3.fromRGB(102, 255, 153)
    _G.TextSize = 14
    _G.Center = true
    _G.Outline = false
    _G.OutlineColor = Color3.fromRGB(102, 255, 153)
    _G.TextTransparency = 0.7
    _G.TextFont = Drawing.Fonts.UI

    _G.DisableKey = Enum.KeyCode.RightAlt

    local function CreateESP()
      for _, v in next, Players:GetPlayers() do
        if v.Name ~= Players.LocalPlayer.Name then
          local ESP = Drawing.new("Text")

          RunService.RenderStepped:Connect(function()
            if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
              local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)

              ESP.Size = _G.TextSize
              ESP.Center = _G.Center
              ESP.Outline = _G.Outline
              ESP.OutlineColor = _G.OutlineColor
              ESP.Color = _G.TextColor
              ESP.Transparency = _G.TextTransparency
              ESP.Font = _G.TextFont

              if OnScreen == true then
                local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
                local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
                local Dist = (Part1 - Part2).Magnitude
                ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
                ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
                if _G.TeamCheck == true then
                  if Players.LocalPlayer.Team ~= v.Team then
                    ESP.Visible = _G.ESPVisible
                   else
                    ESP.Visible = false
                  end
                 else
                  ESP.Visible = _G.ESPVisible
                end
               else
                ESP.Visible = false
              end
             else
              ESP.Visible = false
            end
          end)

          Players.PlayerRemoving:Connect(function()
            ESP.Visible = false
          end)
        end
      end

      Players.PlayerAdded:Connect(function(Player)
        Player.CharacterAdded:Connect(function(v)
          if v.Name ~= Players.LocalPlayer.Name then
            local ESP = Drawing.new("Text")

            RunService.RenderStepped:Connect(function()
              if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
                local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)

                ESP.Size = _G.TextSize
                ESP.Center = _G.Center
                ESP.Outline = _G.Outline
                ESP.OutlineColor = _G.OutlineColor
                ESP.Color = _G.TextColor
                ESP.Transparency = _G.TextTransparency

                if OnScreen == true then
                  local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
                  local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
                  local Dist = (Part1 - Part2).Magnitude
                  ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
                  ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
                  if _G.TeamCheck == true then
                    if Players.LocalPlayer.Team ~= Player.Team then
                      ESP.Visible = _G.ESPVisible
                     else
                      ESP.Visible = false
                    end
                   else
                    ESP.Visible = _G.ESPVisible
                  end
                 else
                  ESP.Visible = false
                end
               else
                ESP.Visible = false
              end
            end)

            Players.PlayerRemoving:Connect(function()
              ESP.Visible = false
            end)
          end
        end)
      end)
    end
    if _G.DefaultSettings == true then
      _G.TeamCheck = false
      _G.ESPVisible = true
      _G.TextColor = Color3.fromRGB(102, 255, 153)
      _G.TextSize = 14
      _G.Center = true
      _G.Outline = false
      _G.OutlineColor = Color3.fromRGB(102, 255, 153)
      _G.DisableKey = Enum.KeyCode.Q
      _G.TextTransparency = 0.75
    end

    UserInputService.TextBoxFocused:Connect(function()
      Typing = true
    end)

    UserInputService.TextBoxFocusReleased:Connect(function()
      Typing = false
    end)

    UserInputService.InputBegan:Connect(function(Input)
      if Input.KeyCode == _G.DisableKey and Typing == false then
        _G.ESPVisible = not _G.ESPVisible

        if _G.SendNotifications == true then
        end
      end
    end)

    local Success, Errored = pcall(function()
      CreateESP()
    end)

    if Success and not Errored then
      if _G.SendNotifications == true then
      end
     elseif Errored and not Success then
      if _G.SendNotifications == true then
      end
      TestService:Message("The ESP script has errored, please notify 88601 with the following information :")
      warn(Errored)--纯装逼，没啥用
      print("!! IF THE ERROR IS A FALSE POSITIVE (says that a player cannot be found) THEN DO NOT BOTHER !!")
    end

  end)
  
  local lin = window:Tab("KING通用",'17015137366')
  local linni = lin:section("通用脚本",true)
  linni:Textbox("头", "Head", "King", function(Value)
   local Settings = {Size = Value}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
function Alive(player)
    if player then
        return player.Character and player.Character:FindFirstChild("Head") and player.Character:FindFirstChild("Humanoid") or false
    end
    return false
end
for i,v in pairs(Players:GetPlayers()) do
    if v ~= LocalPlayer and Alive(v) then
        v.Character.Head.Massless = true
        v.Character.Head.Size = Vector3.new(Settings.Size, Settings.Size, Settings.Size)
    end
    v.CharacterAdded:Connect(function()
        while not Alive(v) do wait() end
        v.Character.Head.Massless = true
        v.Character.Head.Size = Vector3.new(Settings.Size, Settings.Size, Settings.Size)
    end)
end
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Wait()
    if Alive(player) then
        player.Character.Head.Massless = true
        player.Character.Head.Size = Vector3.new(Settings.Size, Settings.Size, Settings.Size)
    end
    player.CharacterAdded:Connect(function()
        while not Alive(player) do wait() end
        player.Character.Head.Massless = true
        player.Character.Head.Size = Vector3.new(Settings.Size, Settings.Size, Settings.Size)
    end)
end)
end)
  linni:Toggle("声音折磨", "Sound", false, function(bool)
    getgenv().spamSoond = bool
    if bool then
      spamSound()
    end
  end)

  function spamSound()
    while getgenv().spamSoond == true do
      local class_check = game.IsA
      local sound = Instance.new('Sound')
      sound.SoundId = "rbxassetid://4590657391"
      sound.Parent = game.Workspace
      sound:Play()
      local sound_stop = sound.Play
      local get_descendants = game.GetDescendants

      for i,v in next, get_descendants(game) do
        if class_check(v,"Sound") then
          sound_stop(v)
        end
      end

      get_descendants = nil
      sound:Remove()
      get_descendants = nil
      sound_stop = nil
      task.wait()
    end
  end
  linni:Toggle("七彩建筑", "BasePart", false, function(Value)
    if Value then
      Break = false
      local BaseParts = {}
      local Mats = Enum.Material:GetEnumItems()

      for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
          table.insert(BaseParts, v)
        end
      end

      game.Workspace.DescendantAdded:Connect(function(v)
        if v:IsA("BasePart") then
          table.insert(BaseParts, v)
        end
      end)

      while task.wait(0.025) do
        for i,v in pairs(BaseParts) do
          v.Material = Mats[math.random(1, #Mats)]
          v.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
          if Break then break end
        end
      end
     else
      Break = true
    end
  end)
  linni:Toggle("无敌", "text", false, function(Value)
    if Value then
      local Cam = workspace.CurrentCamera
      local Pos, Char = Cam.CFrame, speaker.Character
      local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
      local nHuman = Human.Clone(Human)
      nHuman.Parent, speaker.Character = Char, nil
      nHuman.SetStateEnabled(nHuman, 15, false)
      nHuman.SetStateEnabled(nHuman, 1, false)
      nHuman.SetStateEnabled(nHuman, 0, false)
      nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
      speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
      nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
      local Script = Char.FindFirstChild(Char, "Animate")
      if Script then
        Script.Disabled = true
        wait()
        Script.Disabled = false
      end
      nHuman.Health = nHuman.MaxHealth
     else
      game.Players.LocalPlayer.Character.Humanoid.Health = 100
    end
  end)
  linni:Toggle('上帝模式', 'No Description', false, function(Value)
    if Value then
      local LP = game:GetService"Players".LocalPlayer
      local HRP = LP.Character.HumanoidRootPart
      local Clone = HRP:Clone()
      Clone.Parent = LP.Character
     else
      game.Players.LocalPlayer.Character.Head:Destroy()
    end
  end)
  linni:Toggle("夜视", "Toggle", false, function(Value)
    if Value then
      game.Lighting.Ambient = Color3.new(1, 1, 1)
     else
      game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
  end)
  linni:Toggle("穿墙", "text", false, function(Value)
    if Value then
      Noclip = true
      Stepped =
      game.RunService.Stepped:Connect(
      function()
        if Noclip == true then
          for a, b in pairs(game.Workspace:GetChildren()) do
            if b.Name == game.Players.LocalPlayer.Name then
              for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                  v.CanCollide = false
                end
              end
            end
          end
         else
          Stepped:Disconnect()
        end
      end
      )
     else
      Noclip = false
    end
  end)
  linni:Toggle("无限跳", "Toggle", false, function(Value)
    Jump = Value
    game.UserInputService.JumpRequest:Connect(function()
      if Jump then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
      end
    end)
  end)
  
local invisnum = 0
linni:Toggle("隐身", 'Toggleflag', false, function(state)
    if state then
        TurnInvisible()
    else
        TurnVisible()
    end
end)
linni:Button("解锁最大焦距", function()
    lp.CameraMaxZoomDistance = 9e9
end)
    linni:Button("飞行",function()
  local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fly GUI V3"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false


Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
  end)
    linni:Button("King究极甩飞和传送",function()
   --[[认准霖溺KingScprit]]
local IMAGE = "rbxassetid://17862570082"
local Positions = UDim2.new(0.822025776, 0, 0.0401606411, 0)
local Sizes = UDim2.new(0, 76, 0, 70)

local KINGHUBMOBILE = Instance.new("ScreenGui")
local _100x100 = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")

KINGHUBMOBILE.Name = "LinniScriptcharge"
KINGHUBMOBILE.Parent = game:WaitForChild("CoreGui")
KINGHUBMOBILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

_100x100.Name = "100x100"
_100x100.Parent = KINGHUBMOBILE
_100x100.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_100x100.Position = Positions
_100x100.Size = UDim2.new(0, 76, 0, 70)

ImageButton.Parent = _100x100
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Size = Sizes
ImageButton.Image = IMAGE
ImageButton.MouseButton1Down:connect(function()
        local vim = game:service("VirtualInputManager")
        vim:SendKeyEvent(true, "RightControl", false, game)

        local vim = game:service("VirtualInputManager")
        vim:SendKeyEvent(false, "RightControl", false, game)
end)

local UILib = loadstring(game:HttpGet(('https://github.com/Hunryn/VB/blob/main/lib%E2%80%A6%E2%80%A6_------------------uI.lUa')))()
local win = UILib:Window("King.Script丨究极甩飞和传送",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)
local King = win:Tab("折磨功能")
local King2 = win:Tab("作者信息")

local plrlist = {}
local plr = nil
for i, v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(plrlist,v.Name)
end

local drop = King:Dropdown("玩家列表", plrlist, function(m)
for i, b in pairs(game:GetService("Workspace"):GetChildren()) do
if m == b.name then
plr = m
end
end
end)

King:Button("刷新列表", function()
drop:Clear()
for i, v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then
drop:Add(v.Name)
end
end
end)

King:Button("甩飞一次", function()
if plr == nil then 
elseif plr ~= nil then
local Targets = {plr}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("玩家消失", "King乱杀", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end

        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end

        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end

        workspace.FallenPartsDestroyHeight = 0/0

        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)

        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("玩家已经退出/脚本承受不了", "认准King[霖溺]", 5)
        end

        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid

        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("玩家消失", "消失", 5)
    end
end

if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("检测到玩家消失", "King乱杀", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("无敌中", "King乱杀", 5)
    end
end
end
end)

King:Button("甩飞所有", function()
local Targets = {"All"}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end

        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end

        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end

        workspace.FallenPartsDestroyHeight = 0/0

        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)

        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("错误", "King乱杀", 5)
        end

        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid

        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("错误", "重新调整", 5)
    end
end

if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error❌", "！KING", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error❌", "必须甩", 5)
    end
end
end)

King:Toggle("循环甩飞",false, function(t)
if plr == nil then
 elseif plr ~= nil then
getgenv().autofling = t
spawn(function()
while autofling do wait()
pcall(function()
local Targets = {plr}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error❌", "KINGKING", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end

        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end

        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end

        workspace.FallenPartsDestroyHeight = 0/0

        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)

        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error❌", "给我殺", 5)
        end

        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid

        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error❌甩", "飞", 5)
    end
end

if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error❌", "乱飞", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error㎏力", "KING.SCPRIT", 5)
    end
end
end)
end
end)
end
end)

King:Toggle("锁定传送",false, function(t)
if plr == nil then
 elseif plr ~= nil then
getgenv().autotele = t
spawn(function()
while autotele do wait()
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[plr].Character.HumanoidRootPart.CFrame wait()
end)
end
end)
end
end)

King2:Label("King就是霖溺")

King2:Button("作者QQ群，点击我复制", function()
    setclipboard("http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=xQZLbJAlQUT3vAjKtJVFHHDe9LyXnRdf&authKey=3G%2B9tCOh6DW2bya84ujgbOzNFTb8QHm8EJMkp5ho%2BWSc01ZsmVzLc5VPF%2FW1AdSt&noverify=0&group_code=744830231")
end)
  end)
linni:Button("开启最高FPS-假", function()
    setfpscap(999)
  end)
linni:Button("弹人-实体", function()
	power = 50
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
end)
linni:Button("弹人-半实体",function()
  local speed = 50
local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character
local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
plr.Character:WaitForChild("Humanoid").AutoRotate = false
local velocity = Instance.new("AngularVelocity")
velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
velocity.MaxTorque = math.huge
velocity.AngularVelocity = Vector3.new(0, speed, 0)
velocity.Parent = humRoot
velocity.Name = "Spinbot"
end)
  linni:Toggle("无敌吸人-不可关闭", "Tool", false, function(Tool)
local L_1_ = true or false;
local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(L_4_arg1)
	if L_4_arg1 == 'f' then
		L_1_ = not L_1_
	end;
	if L_4_arg1 == 'r' then
		L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
		L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
	end
end)

for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
	if L_6_forvar2 == game.Players.LocalPlayer then
	else
		local L_7_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_8_, L_9_ = pcall(function()
					local L_10_ = L_6_forvar2.Character;
					if L_10_ then
						if L_10_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_6_forvar2.Backpack:ClearAllChildren()
								for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
									if L_12_forvar2:IsA("Tool") then
										L_12_forvar2:Destroy()
									end
								end;
								L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_8_ then
				else
					warn("Unnormal error: "..L_9_)
				end
			end)
		end)
		coroutine.resume(L_7_)
	end
end;

game.Players.PlayerAdded:Connect(function(L_13_arg1)   
	if L_13_arg1 == game.Players.LocalPlayer then
	else
		local L_14_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_15_, L_16_ = pcall(function()
					local L_17_ = L_13_arg1.Character;
					if L_17_ then
						if L_17_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_13_arg1.Backpack:ClearAllChildren()
								for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
									if L_19_forvar2:IsA("Tool") then
										L_19_forvar2:Destroy()
									end
								end;
								L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_15_ then
				else
					warn("Unnormal error: "..L_16_)
				end
			end)
		end)
		coroutine.resume(L_14_)
	end           
end)

end)
  linni:Button("坐下", function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
  end)
  linni:Button("凹凸世界无限获取球",function()
    while true do local number_1 = 2; local table_1 = { [1] = 1, [2] = 1, [3] = 19 }; local Target = game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent; Target:FireServer(number_1, table_1); wait() end
  end)
  linni:Button("聊天气泡美化这个自制",function()
    textcolour = Color3.new(0,0,0)

    game:GetService("Chat").BubbleChatEnabled = true

    coroutine.wrap(function()
      while wait() do
        for i = 0,255,10 do
          textcolour = Color3.new(255/255,i/255,0/255)
          wait()
        end
        for i = 255,0,-10 do
          textcolour = Color3.new(i/255,255/255,0/255)
          wait()
        end
        for i = 0,255,10 do
          textcolour = Color3.new(0/255,255/255,i/255)
          wait()
        end
        for i = 255,0,-10 do
          textcolour = Color3.new(0/255,i/255,255/255)
          wait()
        end
        for i = 0,255,10 do
          textcolour = Color3.new(i/255,0/255,255/255)
          wait()
        end
        for i = 255,0,-10 do
          textcolour = Color3.new(255/255,0/255,i/255)
          wait()
        end
      end
    end)()

    local settings = {

    }

    while wait() do
      pcall(function()
        game:GetService("Chat"):SetBubbleChatSettings({
          TextColor3 = textcolour,
          BubbleDuration = 20,
          MaxBubbles = 20,
          BackgroundColor3 = Color3.fromRGB(0, 0, 0),
          TextSize = 16,
          Font = Enum.Font.Ubuntu,
          Transparency = .1,
          CornerRadius = UDim.new(0, 30),
          TailVisible = true,
          Padding = 8,
          MaxWidth = 500,
          VerticalStudsOffset = 0,
          BubblesSpacing = 3,
          MinimizeDistance = 250,
          MaxDistance = 500,
        })
      end)
    end
  end)
linni:Button("娱乐脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KingHaxxor/King-Hax-Gui/main/Arab-Gui%E2%98%85"))()
end)
linni:Button("通用杀死全部",function()
    while true do
local player = game.Players.LocalPlayer

for i, v in ipairs(game.Players:GetPlayers()) do
  if v.Name ~= player.Name then
    local upperTorso = v.Character:FindFirstChild("UpperTorso")
    if upperTorso then
      local humanoid = v.Character:FindFirstChild("Humanoid")
      if humanoid then
        local args = {
          [1] = player.Character.Pistol,
          [2] = {
            ["p"] = Vector3.new(-0.04069240391254425, 103.88400268554688, 3.110368251800537),
            ["pid"] = 1,
            ["part"] = upperTorso,
            ["d"] = 2.241058111190796,
            ["maxDist"] = 1.8013105392456055,
            ["h"] = humanoid,
            ["m"] = Enum.Material.Plastic,
            ["sid"] = 1,
            ["t"] = 0.01474018327328561,
            ["n"] = Vector3.new(-0.21247883141040802, 0.5551897287368774, -0.8041250705718994)
          }
        }

        game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args))
      end
    end
  end
end
wait(0.1)
end
  end)
linni:Button("老外画质脚本",function()
    loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()
  end)
  linni:Button("立即死亡☠️",function()
    game.Players.LocalPlayer.Character.Humanoid.Health=0
  end)
  linni:Button("King帧数",function()
    repeat wait() until game:IsLoaded() local ScreenGui = Instance.new("ScreenGui") ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling local Fps = Instance.new("TextLabel", ScreenGui) Fps.Name = "Fps" Fps.BackgroundTransparency = 1 Fps.Position = UDim2.new(0.556, 0, 0, 0) Fps.Size = UDim2.new(0, 525, 0, 60) Fps.Font = Enum.Font.SourceSans Fps.TextColor3 = Color3.new(1, 1, 1) Fps.TextScaled = true Fps.TextSize = 14 Fps.TextWrapped = true game:GetService("RunService").RenderStepped:Connect(function(frameTime) Fps.Text = ("King帧数: " .. math.round(1 / frameTime)) end) ScreenGui.Parent = game:GetService("CoreGui")
  end)
  linni:Button("玩家加入游戏提示",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  end)
  linni:Button("人物体积……可以成为掌管时间暂停的神",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Character%20Collision%20Volume-Modify.lua"))()
  end)
  linni:Button("变蛇",function()
    loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
  end)
  linni:Button("替身",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
  end)
  linni:Button("飞车『King』",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Control%20the%20car%20to%20fly.lua"))()
  end)
  linni:Button("King全部甩飞",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/%E5%85%A8%E9%83%A8%E7%94%A9%E9%A3%9E.lua"))()
  end)
 linni:Button("无后坐快速射击", function()
	local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
   if v.Name == "Auto" then
       v.Value = true
   end
   if v.Name == "RecoilControl" then
       v.Value = 0
   end
   if v.Name == "MaxSpread" then
       v.Value = 0
   end
   if v.Name == "ReloadTime" then
      v.Value = 0
   end
   if v.Name == "FireRate" then
       v.Value = 0.05
   end
   if v.Name == "Crit" then
       v.Value = 20
   end
end
game.StarterGui:SetCore("SendNotification",  {
 Title = "已开启快速射击";
 Text = "请低调";
 Icon = "";
 Duration = 30;
 Callback = NotificationBindable;
})
  	end)
  	linni:Button("无限子弹", function()
	while wait() do
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
    end
    game.StarterGui:SetCore("SendNotification",  {
 Title = "已开启无限子弹";
 Text = "请低调";
 Icon = "";
 Duration = 30;
 Callback = NotificationBindable;
})
  	end)
  linni:Button("踏空行走",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
  end)
  linni:Button("通用版传送玩家",function()
    local ScreenGui = Instance.new("ScreenGui")
    local ui = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local Frame = Instance.new("Frame")
    local Username = Instance.new("TextBox")
    local Kill = Instance.new("TextButton")
    local cred = Instance.new("TextLabel")

    ScreenGui.Parent = game:GetService("CoreGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    ui.Name = "ui"
    ui.Parent = ScreenGui
    ui.Active = true
    ui.BackgroundColor3 = Color3.new(1, 1, 1)
    ui.BackgroundTransparency = 0.20000000298023
    ui.BorderSizePixel = 3
    ui.Position = UDim2.new(0.254972845, 0, 0.419703096, 0)
    ui.Size = UDim2.new(0, 535, 0, 283)

    title.Name = "标题"
    title.Parent = ui
    title.BackgroundColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.BorderSizePixel = 2
    title.Position = UDim2.new(0, 0, 0.0199999996, 0)
    title.Size = UDim2.new(1, 0, 0, 50)
    title.Font = Enum.Font.SourceSans
    title.Text = "King跟踪脚本"
    title.TextColor3 = Color3.new(0, 0, 0)
    title.TextScaled = true
    title.TextSize = 14
    title.TextWrapped = true

    Frame.Parent = title
    Frame.BackgroundColor3 = Color3.new(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.25, 0, 0.860000014, 0)
    Frame.Size = UDim2.new(0.5, 0, 0, 3)

    Username.Name = "用户名"
    Username.Parent = ui
    Username.BackgroundColor3 = Color3.new(1, 1, 1)
    Username.BorderSizePixel = 0
    Username.Position = UDim2.new(0.100000001, 0, 0.300000012, 0)
    Username.Size = UDim2.new(0.800000012, 0, 0, 50)
    Username.Font = Enum.Font.SourceSans
    Username.PlaceholderText = "Name"
    Username.Text = ""
    Username.TextColor3 = Color3.new(0, 0, 0)
    Username.TextScaled = true
    Username.TextSize = 14
    Username.TextWrapped = true

    Kill.Name = "杀"
    Kill.Parent = ui
    Kill.BackgroundColor3 = Color3.new(1, 1, 1)
    Kill.BackgroundTransparency = 0.20000000298023
    Kill.BorderSizePixel = 2
    Kill.Position = UDim2.new(0.25, 0, 0.529999971, 0)
    Kill.Size = UDim2.new(0.5, 0, 0, 50)
    Kill.Font = Enum.Font.Gotham
    Kill.Text = "杀"
    Kill.TextColor3 = Color3.new(0, 0, 0)
    Kill.TextScaled = true
    Kill.TextSize = 14
    Kill.TextWrapped = true

    cred.Name = "我猜"
    cred.Parent = ui
    cred.BackgroundColor3 = Color3.new(1, 1, 1)
    cred.BackgroundTransparency = 1
    cred.BorderSizePixel = 2
    cred.Position = UDim2.new(0.0500000007, 0, 0.769999981, 0)
    cred.Size = UDim2.new(0.899999976, 0, 0, 50)
    cred.Font = Enum.Font.SourceSans
    cred.Text = "去当变态吧"
    cred.TextColor3 = Color3.new(0, 0, 0)
    cred.TextScaled = true
    cred.TextSize = 14
    cred.TextWrapped = true
    ui.Draggable = true

    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local function RemoveSpaces(String)
      return String:gsub("%s+", "") or String
    end

    local function FindPlayer(String)
      String = RemoveSpaces(String)
      for _, _Player in pairs(Players:GetPlayers()) do
        if _Player.Name:lower():match('^'.. String:lower()) then
          return _Player
        end
      end
      return nil
    end

    Kill.MouseButton1Click:Connect(function()
      local Target = FindPlayer(Username.Text)
      if Target and Target.Character then
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")

        local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        Torso.Anchored = true
        local tool = Instance.new("Tool", LocalPlayer.Backpack)
        local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
        local hathandle = hat.Handle
        hathandle.Parent = tool
        hathandle.Massless = true
        tool.GripPos = Vector3.new(0, 9e99, 0)
        tool.Parent = LocalPlayer.Character
        repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
        tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
        Torso.Anchored = false
        repeat LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame wait()
        until Target.Character == nil or Target.Character:FindFirstChild("Humanoid").Health <= 0 or LocalPlayer.Character == nil or LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (Target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - Target.Character:FindFirstChild("Humanoid").WalkSpeed) > (Target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
        LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
        hathandle.Parent = hat
        hathandle.Massless = false
        tool:Destroy()
        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
       else
        warn'no player found named like that or he has no char'
      end
    end)
  end)
  linni:Button("变玩家",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
  end)
  linni:Button("C00lgui",function()
    loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  end)
  linni:Button("声音播放器",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GEianeKX"))()
  end)
  local linni = lin:section("『LINNI』传送脚本系列",true)
  linni:Button("老外传送1『不用自己打字搜索旁边有可以选择玩家』",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua'))()
  end)
  local linni = lin:section("通用脚本",true)
  linni:Button("工具包",function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
  end)
  linni:Button("骂人无违规",function()
    loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()
  end)
  linni:Button("超高画质",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
  end)
  linni:Button("工具挂",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
  end)
  linni:Button("电脑键盘",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  end)
  linni:Button("Tiger",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/balintTheDevX/TigerX-V2/main/Back"))()
  end)
  linni:Button("Alysse",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NathTheDev/AlysseAndroid/main/loader.lua"))()
  end)
  linni:Button("宙斯V3",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
  end)
  linni:Button("acrylix",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/3dsonsuce/acrylix/main/Acrylix'))()
  end)
  linni:Button("Synapse",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
  end)
    linni:Button("King汉化阿尔宙斯ESP",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/Alzeus%20ESP.lua"))()
  end)
  linni:Button("『DEX-Explorer』",function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
  end)
  linni:Button("infinite-Yield指令",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/infinite-Yield.lua"))()
  end)
  
local lin = window:Tab("King>音乐专区",'17015137366')
local linni = lin:section("播放音乐",true)
linni:Button("彩虹瀑布",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1837879082"
    sound.Parent = game.Workspace
    sound:Play()
    end)
linni:Button("防空警报", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://792323017"
    sound.Parent = game.Workspace
    sound:Play()
    end)
linni:Button("义勇军进行曲", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1845918434"
    sound.Parent = game.Workspace
    sound:Play()
    end)
linni:Button("火车音", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://3900067524"
    sound.Parent = game.Workspace
    sound:Play()
    end)
  
  local lin = window:Tab("各位脚本作者脚本",'17015137366')

  local linni = lin:section("作者脚本",true)
  linni:Button("林脚本",function()
    lin = "作者林"lin ="林QQ群 747623342"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)
  local linni = lin:section("作者脚本",true)
  linni:Button("落叶中心",function()
    getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
  end)
  linni:Button("达脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/133ufudhdu/XGJKWQU/main/XGQJKWQU"))()
  end)
  linni:Button("山脚本",function()
    loadstring(game:HttpGet("https://h.lkmc.asia/script/ssfb.lua"))()
  end)
  linni:Button("青脚本",function()
    loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
  end)
  linni:Button("陈脚本",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QxDD9SpW"))()
  end)
  linni:Button("杯脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/llcq"))()
  end)
  linni:Button("北极脚本『中心』",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
  end)
  linni:Button("地岩脚本",function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
  end)
  linni:Button("脚本中心1.5版本",function()
 loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
  end)
  linni:Button("玖恶脚本",function()
    loadstring(game:HttpGet('https://ayangwp.cn/api/v3/file/get/8508/%E7%8E%96%E6%81%B6%E4%B8%AD%E5%BF%83.lua?sign=wt54yWf_f0LDB3gXXyQu0SFQ0oUDUXZBOaWQShwCFGg%3D%3A0'))()
  end)
  linni:Button("老大脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8401/%E8%80%81%E5%A4%A7%E8%84%9A%E6%9C%AC1.0%E7%89%88.txt?sign=XHxQ1ja8djAnEjVEG-eEZFPeZKFHJ0FHeybHpSbtBW4%3D%3A0"))()
  end)
  linni:Button("乌云脚本",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dT4ZGge8"))()
  end)
  linni:Button("皇脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/%E7%9A%87v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w%3D%3A0"))()
  end)
  linni:Button("冰红茶脚本",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8582/Protected_9297682332119129.lua?sign=jP-h1AGooC90C0A0O5eDboOCoaQTZpOzLoWzg_oz1eE%3D%3A0"))()
  end)
  linni:Button("静新脚本",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jxdjbx/jkkkk/main/dhbddbb'))()
  end)
  linni:Button("小魔脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaomoNB666/xiaomoNB666/main/%E6%9E%81.lua"))()
  end)
  linni:Button("鲨新ui脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fvvhhh/sturdy-octo-engine/main/Protected_1221338743706560.lua.txt"))()
  end)
  linni:Button("雷脚本",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/tPB47inG')))()
  end)
  linni:Button("秋脚本",function()
    _G[".秋·自制脚本 遗存抢救"]="2024dncxddtsnchzxtb0112"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,98,117,113,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67})end)())))()
  end)
  linni:Button("鱼脚本",function()
    getgenv().FISH = "鱼脚本群:851686462"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\101\108\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\72\119\81\77\82\90\68\69\34\41\41\40\41")("鱼脚本")
  end)

  local lin = window:Tab("HUB",'17015137366')

  local linni = lin:section("HUB脚本",true)
  linni:Button("EZ-HUB",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
  end)
  linni:Button("reen script",function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/KingLegacy.lua")()
  end)
  linni:Button("Maru_Hub",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/raw-scriptpastebin/raw/main/B_Genesis'))()
  end)
  linni:Button("Xenon_Hub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/legacy"))()
  end)
  linni:Button("ipper_hub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/King%20Leagacy"))()
  end)
  linni:Button("trike_hub",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Strikehubv2z/StormSKz/main/All_in_one"))()
  end)
  linni:Button("unfair hub",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
  end)
  local linni = lin:section("脚本密钥链接https://keyrblx.com/getkey/ShifeScripts",true)
  linni:Button(" Shadow Hub V2",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Alexcirer/Alexcirer/main/V%20d"))()
  end)
  local linni = lin:section("HUB脚本",true)
  linni:Button("Zen_Hub",function()
    loadstring(game:HttpGet("https://shz.al/~linninnn/Zen_Hub.lua"))()
  end)
  linni:Button("PlaybackX Hub",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt'))()
  end)
  linni:Button("Tianhe's script hub",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/xdQVhQdm'))()
  end)
  linni:Button("Mango hub",function()
    loadstring(game:HttpGet('https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta'))()
  end)
  linni:Button("VG hub",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
  end)
  linni:Button("Owl-Hub『嘿嘿』",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
  end)
  linni:Button("HOHO_hub",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  end)

  local lin = window:Tab("FE脚本",'17015137366')

  local linni = lin:section("King",true)
  linni:Button("C00lgui",function()
    loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  end)
  linni:Button("FE传送",function()
    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
  end)
  local lin = window:Tab("Vehicle Legends CARS!脚本",'17015137366')

  local linni = lin:section("『卡密模式』",true)
  linni:Button("Vehicle Legends CARS!",function()
    loadstring(game:HttpGet('https://scripts.luawl.com/hosted/2399/18728/FiberHubFree.lua'))()
  end)
  linni:Button("点击我复制dc链接自己弄",function()
    setclipboard("https://discord.gg/NZYMVZvT2H")
  end)
  local linni = lin:section("『不需要卡密模式』",true)
  linni:Button("Vehicle Legends CARS!",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/houjk2/Boosthub/main/main.lua"))()
  end)

  local lin = window:Tab("内脏与黑火药脚本",'16060333448')

  local linni = lin:section("内脏与黑火药",true)
  linni:Label("King温馨提示：不会失效")
  linni:Button("清风外部",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/G%26B.lua"))()
  end)
    linni:Button("老大版本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/%E8%80%81%E5%A4%A7%E7%89%88%E6%9C%AC.txt"))()
  end)
  linni:Button("点击我复制King群聊",function()
    setclipboard("霖溺QQ新主群https://qm.qq.com/q/SU0hmhIvwk")
  end)

  local lin = window:Tab("Sol's RNG脚本",'17015137366')

  local linni = lin:section("『卡密模式』",true)
  linni:Button("Sol's RNG",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Alan0947383/Demonic-HUB-V2/main/S-C-R-I-P-T.lua",true))()
  end)
  linni:Button("点击我复制密钥链接",function()
    setclipboard("https://pandadevelopment.net/startkey.html?service=demonichubv2")
  end)
  linni:Button("热乎呢刚找的Sol's RNG",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Rah-Md/Sol-Rgn-Scripts/main/Upd.lua"))()
  end)
  local linni = lin:section("『免费模式』",true)
  linni:Button("Sol's RNG更新时间2024.3.30",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Looser3itx/Hmmmmmmmmmmmmmmmmmmmmmmmmmmmm/main/loader.lua"))()
  end)
  
  local lin = window:Tab("力量传奇",'17015137366')

  local linni = lin:section("自制",true)
  linni:Button("King力量传奇已更新",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Legend%20of%20Power.lua"))()
  end)
  linni:Button("V.G.HUB",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/MuscleLegends"))()
  end)
  linni:Button("老外修改力量脚本",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
  end)
  linni:Button("无视力量击飞",function()
    loadstring(game:GetObjects("rbxassetid://10123407012")[1].Source)()
  end)
  linni:Button("老外多功能脚本",function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("极速传奇",'17015137366')

  local linni = lin:section("King自制",true)
  linni:Button("King极速传奇已更新",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Speed%20Legend.lua"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("忍者传奇",'17015137366')

  local linni = lin:section("King",true)
  linni:Button("King忍者传奇",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Legend%20of%20linni.lua"))()
  end)
  linni:Button("忍者传奇",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)
  linni:Button("忍者（老外1）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
  end)
  linni:Button("忍者（老外2）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatBlueDevil/Bleus/main/Ninja%20Legends/Source.lua"))()
  end)

  local lin = window:Tab("监狱人生",'17015137366')

  local linni = lin:section("King",true)
  linni:Button("King监狱人生已更新",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Life%20in%20prison.lua"))()
  end)
  local linni = lin:section("Tiger无敌了",true)
  linni:Button("tiger",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
  end)
  local linni = lin:section("King嘿",true)
  linni:Button("听说吊打一切",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
  end)
  linni:Button("剑客脚本（通用）",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)
local lin = window:Tab("俄亥俄州",'17015137366')
local linni = lin:section("King.ohio",true)
linni:Label("King自制功能YYDS")
linni:Button("通用开全部保险柜",function()
    for i,v in pairs(workspace:GetDescendants()) do      
       if v:IsA("ProximityPrompt") then           
      v.HoldDuration = 0        
     end     
    end
  end)
linni:Button("人物弹人", function()
	power = 50
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
end)
linni:Button("秒开银行", function()
	game.Workspace.BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
	    game.Workspace.BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
	local function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E then
        game.Workspace.BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
	    game.Workspace.BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
end)
linni:Button("查找ATM", function()
	while wait(1) do
		local ATM1 = CFrame.new(1039.634, 3.747, -372.284)
		local ATM2 = game:GetService("Players")
		local ATM3 = ATM2.LocalPlayer.Character.HumanoidRootPart
		ATM3.CFrame = ATM1
		wait(1)
		local AT1 = CFrame.new(1224.334, 3.745, -406.655)
		local AT2 = game:GetService("Players")
		local AT3 = AT2.LocalPlayer.Character.HumanoidRootPart
		AT3.CFrame = AT1
		wait(1)
		local A1 = CFrame.new(478.267, -8.548, -390.189)
		local A2 = game:GetService("Players")
		local A3 = A2.LocalPlayer.Character.HumanoidRootPart
		A3.CFrame = A1
		wait(1)
		local Ae1 = CFrame.new(1207.613, 3.8, -494.79)
		local Ae2 = game:GetService("Players")
		local Ae3 = Ae2.LocalPlayer.Character.HumanoidRootPart
		Ae3.CFrame = Ae1
		wait(1)
		local Aq1 = CFrame.new(899.679, 3.747, -658.59)
		local Aq2 = game:GetService("Players")
		local Aq3 = Aq2.LocalPlayer.Character.HumanoidRootPart
		Aq3.CFrame = Aq1
		wait(1)
		local eAq1 = CFrame.new(847.279, 3.747, -1014.538)
		local eAq2 = game:GetService("Players")
		local eAq3 = eAq2.LocalPlayer.Character.HumanoidRootPart
		eAq3.CFrame = eAq1
		wait(1)
		local eeAq1 = CFrame.new(1498.734, 3.745, -239.345)
		local eeAq2 = game:GetService("Players")
		local eeAq3 = eeAq2.LocalPlayer.Character.HumanoidRootPart
		eeAq3.CFrame = eeAq1  
	end
end)
linni:Button("删除地图只有你自己能看到", function()
	game.Workspace.Map:Destroy()
end)
linni:Button("银行按钮范围", function()
	game.Workspace.BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance= 10000
end)
linni:Toggle("查看全体玩家聊天", "ChatChannel", false, function(Value)
		if Value then
		    game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
		else
		    game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
		end
	end)
linni:Button("银行秒开+拿钱范围", function()
	    game.Workspace.BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
	    game.Workspace.BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
	local function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E then
        game.Workspace.BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
	    game.Workspace.BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
    end
end
game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
end)
linni:Toggle("近战范围", "HeadSize", false, function(Value)
	if Value then
	_G.HeadSize = 50
	_G.Disabled = true
	game:GetService('RunService').RenderStepped:connect(function()
    	    if _G.Disabled then
        	for i,v in next, game:GetService('Players'):GetPlayers() do
            	    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
            		pcall(function()
                  	    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                   	    v.Character.HumanoidRootPart.Transparency = 0.7
                  	    v.Character.HumanoidRootPart.CanCollide = false
            	        end)
                    end
                end
            end
        end)
		else
		    _G.HeadSize = 1
		end
	end)

linni:Button("秒充弹药箱", function()
    for i = 1 , 50 do
        local ammobx = game.workspace.Game.Local.droppables["Ammo Box"]
        ammobx.Handle.ProximityPrompt.HoldDuration = 0
        ammobx.Name = "ammoopen"
    end
	end)

linni:Button("背包保险格", function()
	game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Holder.Locker.Visible = true
	end)

linni:Button("珠宝秒拿（金库外）", function()
	local rocks = game.workspace.GemRobbery.JewelryCases.LowYieldSpawns
    for _, obj in pairs(rocks:GetChildren()) do
        if obj.ClassName == "Model" then
            for _, innerObj in pairs(obj:GetChildren()) do
                if innerObj.ClassName == "Model" then
                    if innerObj.Name == "Case" then
           
                    elseif innerObj.Name == "Emerald" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Sapphire" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Amethyst" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Topaz" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
					elseif innerObj.Name == "Diamond" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Gold Bar" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Ruby" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    else
                        if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
                            innerObj.Box.ProximityPrompt.HoldDuration = 0
                        end
                    end
                end
            end
        end
    end
  	end)

linni:Button("珠宝秒拿（金库内）", function()
	local rocks = game.workspace.GemRobbery.JewelryCases.HighYieldSpawns
    for _, obj in pairs(rocks:GetChildren()) do
        if obj.ClassName == "Model" then
            for _, innerObj in pairs(obj:GetChildren()) do
                if innerObj.ClassName == "Model" then
                    if innerObj.Name == "Case" then
                   
                    elseif innerObj.Name == "Emerald" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Sapphire" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Amethyst" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Topaz" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end						
					elseif innerObj.Name == "Diamond" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Gold Bar" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == "Ruby" then
                        if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    else
                        if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
                            innerObj.Box.ProximityPrompt.HoldDuration = 0
                        end
                    end
                end
            end
        end
    end
  	end)

linni:Button("金保险秒开", function()
   while true do
        local safe = game.workspace.Game.Entities.JewelSafe.JewelSafe
        safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        safe.Name = "safeopen" 
	end
	local function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.R then
        safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        safe.Name = "safeopen" 
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
                end)
linni:Button("黑保险秒开", function()
    while true do
        local safe = game.workspace.Game.Entities.JewelSafe.JewelSafe
        safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        safe.Name = "safeopen" 
	end
	local function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.R then
        safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
        safe.Name = "safeopen" 
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
                end)

linni:Button("银行", function()
	local epoh4 = CFrame.new(1053,10,-338)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("珠宝店", function()
	local epoh4 = CFrame.new(1719.02637, 14.2831011, -714.293091)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("购物车", function()
	local epoh4 = CFrame.new(1101.54529,10,-708.226379)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("射线枪", function()
	local epoh4 = CFrame.new(148.685471, -90, -529.280945)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("武士刀", function()
	local epoh4 = CFrame.new(175.191, 13.937, -132.69)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("锯掉", function()
	local epoh4 = CFrame.new(1179.98523,40,-436.812683)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("mp7", function()
	local epoh4 = CFrame.new(622.398, 40.72, -687.081)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)
linni:Button("ak", function()
	local epoh4 = CFrame.new(671.478, 10, -719.282)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("m4", function()
	local epoh4 = CFrame.new(603.4676513671875,25.662811279296875,-922.0442504882812)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("aug", function()
	local epoh4 = CFrame.new(1170.500244140625,41.37138366699219,-772.55859375)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("军事基地", function()
	local epoh4 = CFrame.new(563.4422607421875,22.502071380615234,-1472.780517578125)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)

linni:Button("黑市", function()
	local epoh4 = CFrame.new(714.778198,-13,-110.243431)
	local epoh5 = game:GetService("Players")
	local epoh6 = epoh5.LocalPlayer.Character.HumanoidRootPart
	epoh6.CFrame = epoh4
	end)
linni:Label("剑客脚本")
linni:Button("剑客V4",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)

  local lin = window:Tab("死亡球",'17015137366')
local linni = lin:section("King",true)
linni:Label("老外区")
linni:Button("自动封锁点击开启",function()
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/sirapobsriumang/Death-Ball/main/Main"))()
end)
linni:Button("自动漫游点击开启",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Walk%20Obfuscator'))()
end)
  linni:Button("死亡球（1）",function()
    loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua",true))()
  end)
  linni:Button("死亡球（2）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Ball1/main/Death"))()
  end)

  local lin = window:Tab("自然灾害",'17015137366')
local linni = lin:section("自制i",true)
  linni:Label("自制我就删了，我发现用通用就行了")
  linni:Button("老外自然灾害1",function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))()
  end)
  linni:Button("老外自然灾害2",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
  end)
  linni:Button("老外自然灾害3",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

 local lin = window:Tab("破坏者谜团2",'17015137366')
  local linni = lin:section("LinniScriptcharge",true)
  linni:Label("包满意的")
  linni:Button("King自制破坏者谜团2已更新",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Saboteur%20Mystery2.lua"))()
  end)
  linni:Button("破坏者谜团2（多功能）",function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()
  end)
  linni:Button("破坏者谜团2",function()
    loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
  end)
  linni:Button("破坏者谜团（透视谁是警长）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
  end)

  local lin = window:Tab("杀手于警长",'17015137366')
local linni = lin:section("King",true)
  linni:Button("杀手于警长（有全部秒杀并且能用）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/murdersvssherrifsduels/main/rubyhub", true))()
  end)
  linni:Button("剑客脚本（通用）",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("巴掌模拟器",'17015137366')
local linni = lin:section("King",true)
  linni:Label("King脚本包可以的")
  linni:Button("King自制巴掌模拟器",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Spanking%20war.lua"))()
  end)
  linni:Button("老外自动刷巴掌",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
  end)
  linni:Button("老外巴掌模拟器",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
  end)
  linni:Button("老外常用功能",function()
    loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()
  end)
  linni:Button("多功能（老外）",function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
  end)

  local lin = window:Tab("51区脚本",'17015137366')
local linni = lin:section("King",true)
  linni:Label("以后再加功能")
  linni:Button("King51区点击开启",function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Area%2051%20server.lua"))()
  end)

  local lin = window:Tab("短信模拟器脚本",'17015137366')
local linni = lin:section("King",true)
  linni:Button("短信模拟器",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/9hxkxUZ5'),true))()
  end)

  local lin = window:Tab("克隆大亨脚本",'17015137366')
local linni = lin:section("King",true)
  linni:Button("克隆大亨",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HELLLO1073/RobloxStuff/main/CT-Destroyer"))()
  end)

  local lin = window:Tab("刀刃球",'17015137366')
local linni = lin:section("King",true)
  linni:Button("King自制",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Blade%20linni.lua"))()
  end)
  linni:Button("老外牛鼻版的",function()
    loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()
  end)
  linni:Button("点击我复制解卡链接",function()
    setclipboard("https://linkvertise.com/608384/zaphub-key-system")
  end)
  linni:Button("刀刃球（强1）",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
  end)
  linni:Button("刀刃球（强2）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HKLua/Balls/main/DawnLoader.lua"))()
  end)
  linni:Button("刀刃球（强3）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
  end)
  linni:Button("刀刃球（强4）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Neoncat765/Neon.C-Hub-X/main/UnknownVersion"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("模仿者",'17015137366')
local linni = lin:section("King",true)
  linni:Button("模仿者（1有自动赢）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/obfloadstringmainmimic/main/README.md", true))()
  end)
  linni:Button("模仿者（名字相同脚本不同）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ttjy9808/obfloadstringmainmimic/main/README.md", true))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("战斗勇士",'17015137366')
local linni = lin:section("『King』",true)
  linni:Button("King自制点击我开启",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/%E6%88%98%E6%96%97%E5%8B%87%E5%A3%AB.lua"))()
  end)
  linni:Button("战斗勇士（英文电脑端，直接畅玩）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
  end)
  linni:Button("战斗勇士老外英文",function()
    loadstring(game:HttpGet("https://paste.gg/p/anonymous/697fc3cad5f743508318cb7399e89432/files/b5923e52edab4e5c91e46b74563d0ae8/raw"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("piggy脚本",'17015137366')
local linni = lin:section("piggy脚本",true)
  linni:Button("piggy脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Loader.lua"))()
  end)
  linni:Button("piggy英文",function()
    loadstring(game:HttpGet("https://encurtador.com.br/fiyFJ"))()
  end)

local lin = window:Tab("SharkBite 2[TRADING]脚本",'17015137366')
local linni = lin:section("King",true)
  linni:Button("SharkBite 2[TRADING]",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JerrymiahPM/SharkRipper/main/main.lua"))()
  end)
  linni:Button("SharkBite 2[TRADING]",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PikachuHack/SharkBite2-Instant-Kill-Main-Shark/main/Instant%20Kill%20Main%20Shark"))()
  end)
  local linni = lin:section("『卡密模式』",true)
  linni:Button("SharkBite 2[TRADING]",function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/62ac508ae22ac9d4d5485af7a4531b0b.lua"))()
  end)
  linni:Button("点击我复制密钥链接",function()
    setclipboard("https://keyrblx.com/getkey/StellarHub")
  end)
  linni:Button("SharkBite 2[TRADING]",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FlmesCoding/CandyHubGames/main/Protected_1799613766569471.lua"))()
  end)
  linni:Button("点击复制dc",function()
    setclipboard("https://discord.gg/NZU9zq5gMu")
  end)
  linni:Button("SharkBite 2[TRADING]",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IsThisMe01/Project-L/main/Main.lua"))()
  end)

  local lin = window:Tab("火箭发射模拟器",'17015137366')
local linni = lin:section("King",true)
  linni:Button("King精品收集燃料",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dcRiQinJ"))()
  end)
  linni:Button("火箭发射模拟器（名字相同脚本不同）",function()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9245/%E7%8C%AB%E9%80%9A%E7%94%A8.txt?sign=hrWROZdVfK2mtJcIFa3Tvbl-TojP1C86_Zd3q03qttc%3D%3A0"))()
  end)
  linni:Button("火箭发射模拟器（名字相同脚本不同）",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator')))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("只因剑",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("只因剑（名字相同脚本不同）",function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
  end)
  linni:Button("只因剑（2召唤小黑子）",function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
  end)
  linni:Button("只因剑（3巨剑战士）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("战争大亨脚本",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("King战争大亨点击开启",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/War%20tycoon.lua"))()
  end)
  linni:Button("无后座快速射击【似乎有效果】",function()
    local replicationstorage = game.ReplicatedStorage

    for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
      if v.Name == "Auto" then
        v.Value = true
      end
      if v.Name == "RecoilControl" then
        v.Value = 0
      end
      if v.Name == "MaxSpread" then
        v.Value = 0
      end
      if v.Name == "ReloadTime" then
        v.Value = 0
      end
      if v.Name == "FireRate" then
        v.Value = 0.05
      end
      if v.Name == "Crit" then
        v.Value = 20
      end
    end
    game.StarterGui:SetCore("SendNotification", {
      Title = "已开启快速射击";
      Text = "请低调";
      Icon = "";
      Duration = 30;
      Callback = NotificationBindable;
    })
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("彩虹朋友",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("King彩虹朋友2",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YhySSsNw"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("河北唐县",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("King河北唐县点击开启",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Tang%20County%2C%20Hebei.lua"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("Blox Fruit【水果战场】",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("Kingbf目前电脑注入器可以用",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YNzd3BKX"))()
  end)
  linni:Button("King汉化bf进度5%",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GP4gzbbX"))()
  end)
  linni:Button("另一个King准备汉化的目前进度0",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xeDKQLBE"))()
  end)
  linni:Button("新版刷级",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/OldBf"))()
  end)
  linni:Button("市面上暂时没有的脚本1",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/m1M-Plqer819/any/main/mbmxhub/0135"))()
  end)
  linni:Button("市面上暂时没有的脚本2",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Domadicoof/Domadicoof/main/NewHubX.txt"))()
  end)
  linni:Button("市面上暂时没有的脚本3",function()
    loadstring(game:HttpGet("https://github.com/DocYogurt/script/raw/main/redirect"))()
  end)
  linni:Button("BF『HOHO脚本』链接不一样",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/Free/BloxFruitFreeV3.lua"))()
  end)
  linni:Button("BF『HOHIO脚本』链接不一样",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  end)
  linni:Button("BF（听说第二强）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua"))()
  end)
  linni:Button("BF（King找的）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptsExploit/Blox-Fruits/main/Ripper%20M"))()
  end)
  linni:Button("BF（自动箱子）",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
  end)
  linni:Button("BF（刷怪）",function()
    loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Nub-V1-Hub-4583'))()
  end)
  linni:Button("BF脚本w-azure无密钥",function()
    getgenv().Team = "Pirates"loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  end)
  linni:Button("BF（自动升级）",function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
  end)
  linni:Button("BF_REDzHUB",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("进击的僵尸脚本",'17015137366')
  local linni = lin:section("King",true)
  linni:Label("以后我再自己做")
  linni:Button("进击的僵尸『linni』",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
  end)

  local lin = window:Tab("nico下一个机器人脚本",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("nico下一个机器人",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/elonof/nicosbots-script/main/main.lua",true))()
  end)
  linni:Button("nico下一个机器人",function()
    loadstring(game:HttpGet("https://fern.wtf/scripts/nico_bot.lua", true))()
  end)
  linni:Button("nico下一个机器人",function()
    local hrp = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    hrp.Parent = nil
    hrp:Clone()
    hrp.Parent = game.Players.LocalPlayer.Character
    hrp.Name = "Humanoid"
    game.StarterGui:SetCore("SendNotification", {Title="God Mode"; Text="God Mode Activated"; Duration=5;})
  end)
  linni:Button("nico下一个机器人",function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/fartbutt69/Nico-s-Nextbot-Killer/main/script.lua", true))()
  end)
  linni:Button("nico下一个机器人",function()
    local Player = game:GetService("Players").LocalPlayer
    while true do
      wait(0.5)
      Player.Character.HumanoidRootPart.Position = Vector3.new(0, -50, 0)
      wait(0.5)
      Player.Character.HumanoidRootPart.Position = Vector3.new(0, -80, 0)
    end
  end)

  local lin = window:Tab("蜂群模拟器",'17015137366')

  local linni = lin:section("King",true)
  linni:Button("King蜂群",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/p0jZeYcR"))()
  end)
  linni:Button("King制作解锁所有项目并获取",function()
    game:GetService("ReplicatedStorage").Events.SelectNPCOption:FireServer("ChooseWhiteTeam")
  end)
  linni:Button("蜂群模拟器bee swarm",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
  end)
  linni:Button("蜂群模拟器（自动收集）",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/max0mind/lua/main/loader.lua'))()
  end)
  linni:Button("剑客脚本",function()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
  end)

  local lin = window:Tab("小偷模拟器脚本",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("小偷模拟器",function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/adrician/Thief-Simulator---GUI/main/Thief%20sim.lua"),true))()
  end)

  local lin = window:Tab("evade大逃脱",'17015137366')
  local linni = lin:section("evade脚本",true)
  linni:Button("evade脚本1",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PepesGH1/stuff/main/evadeloader.lua"))()
  end)
  linni:Button("evade大逃脱",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E4%BA%91%E8%84%9A%E6%9C%ACEvade.lua"))()
  end)

  local lin = window:Tab("国王遗产脚本",'17015137366')
  local linni = lin:section("『更新时间2024.3.30』",true)
  linni:Button("『1』能用",function()
    loadstring(game:HttpGetAsync("https://lua-library.btteam.net/script-auth.txt"))()
  end)

  local lin = window:Tab("披萨店脚本",'17015137366')
  local linni = lin:section("King",true)
  linni:Button("King披萨店自动工作",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Pizzeria%20works%20automatically.lua"))()
end)
linni:Button("远程变成经理",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Pizzeria%20remote%20manager.lua"))()
end)

   local lin = window:Tab("Drive World",'17015137366')
   local linni = lin:section("King",true)
 linni:Button("Drive World脚本",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/x3fall3nangel/FallAngelHub/main/DriveWorld.lua"))()
end)

  local lin = window:Tab("一路向西",'17015137366')
 local linni = lin:section("King",true)
    linni:Button("King自制",function()
      loadstring(game:HttpGet("https://pastebin.com/raw/EWu8W98A"))()
end)
        linni:Button("一路向西（无后坐力超级射速无限子弹）",function()
          loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
        end)
        linni:Button("一路向西（名字相同脚本不同）",function()
          loadstring(game:HttpGet(("https://raw.githubusercontent.com/Drifter0507/scripts/main/westbound"),true))()
        end)
        linni:Button("一路向西（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://pastefy.app/q08owYGG/raw"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

   local lin = window:Tab("造船寻宝",'17015137366')

   local linni = lin:section("King",true)
   linni:Button("King自制造船寻宝点击我开启",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Shipbuilding%20and%20treasure%20hunting.lua"))()
end)
    linni:Button("老外造船寻宝（名字相同脚本不同）",function()
          loadstring(game:HttpGet("http://dirtgui.xyz/BuildABoat.lua",true))()
        end)
   linni:Button("老外造船寻宝（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://pastefy.app/hvV1c4nO/raw"))()
        end)
  linni:Button("老外造船寻宝（复制别人船）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/autobuild.txt"))()
        end)

    local lin = window:Tab("鲨口求生脚本",'17015137366')

   local linni = lin:section("King",true)
        linni:Button("鲨口求生有一些功能慎用",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
        end)
        linni:Button("鲨口求生脚本h",function()
          loadstring(rawget(game:GetObjects("rbxassetid://3623753581"), 1).Source)("Pepsi Byte")
        end)
        linni:Button("鲨口求生脚本linni",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/LOOF-sys/Roblox-Shit/main/SharkBite.lua",true))()
        end)
        linni:Button("秒杀鲨鱼",function()
          local data = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ProjectilesClient"):WaitForChild("WeaponScript"):WaitForChild("HitScanFire"))
          local remote = getupvalue(getupvalue(getupvalue(data.Fire,8),4),2)

          local function WaitForChildWhichIsA(instance, classtype)
            local target = instance:FindFirstChildWhichIsA(classtype)
            while not target or not target:IsA(classtype) do
              target = instance.ChildAdded:Wait()
            end
            return target
          end

          while task.wait() do
            remote:FireServer(WaitForChildWhichIsA(workspace:WaitForChild("Sharks"),"Model"))
          end
        end)
linni:Button("鲨口求生脚本",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
        end)
linni:Button("剑客v4",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

  local lin = window:Tab("DOORS",'17015137366')
local linni = lin:section("多耳屎新模式脚本哟",true)
 linni:Label("新的使用OrionLibUI")
   linni:Button("新Kingdoors脚本点击开启",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/NewDoors.OrionLibUI.lua"))()
   end)
    linni:Button("旧King_Doors精品点击开启",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Doors.lua"))()
 end)
        linni:Button("新doors脚本",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
        end)
        linni:Button("新MSDOORS脚本",function()
          loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
        end)
        linni:Button("多耳屎",function()
          loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
        end)
        local linni = lin:section("『多耳屎』",true)
        linni:Button("最强汉化DOORS",function()
          loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
        end)
        linni:Button("Doors（自动过room）",function()
          if game.PlaceId ~= 6839171747 or game.ReplicatedStorage.GameData.Floor.Value ~= "Rooms" then
            game.StarterGui:SetCore("SendNotification", { Title = "“King”是作者"; Text = "傻逼要到Rooms里执行" })

            local Sound = Instance.new("Sound")
            Sound.Parent = game.SoundService
            Sound.SoundId = "rbxassetid://11354741327"
            Sound.Volume = 5
            Sound.PlayOnRemove = true
            Sound:Destroy()

            return
           elseif workspace:FindFirstChild("PathFindPartsFolder") then
            game.StarterGui:SetCore("SendNotification", { Title = "Warning"; Text = "检查是QQ用户" })

            local Sound = Instance.new("Sound")
            Sound.Parent = game.SoundService
            Sound.SoundId = "rbxassetid://11354741327"
            Sound.Volume = 5
            Sound.PlayOnRemove = true
            Sound:Destroy()

            return
          end

          local PathfindingService = game:GetService("PathfindingService")
          local VirtualInputManager = game:GetService('VirtualInputManager')
          local LocalPlayer = game.Players.LocalPlayer
          local LatestRoom = game.ReplicatedStorage.GameData.LatestRoom

          local Cooldown = false

          local ScreenGui = Instance.new("ScreenGui")
          ScreenGui.Parent = game.CoreGui

          local TextLabel = Instance.new("TextLabel")
          TextLabel.Parent = ScreenGui

          TextLabel.Size = UDim2.new(0,350,0,100)
          TextLabel.TextSize = 48
          TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
          TextLabel.TextStrokeTransparency = 0
          TextLabel.BackgroundTransparency = 1

          local GC = getconnections or get_signal_cons
          if GC then
            for i,v in pairs(GC(LocalPlayer.Idled)) do
              if v["Disable"] then
                v["Disable"](v)
               elseif v["Disconnect"] then
                v["Disconnect"](v)
              end
            end
          end

          local Folder = Instance.new("Folder")
          Folder.Parent = workspace
          Folder.Name = "PathFindPartsFolder"

          if LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules:FindFirstChild("A90") then
            LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90.Name = "lol" 
          end

          function getLocker()
            local Closest

            for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
              if v.Name == "Rooms_Locker" then
                if v:FindFirstChild("Door") and v:FindFirstChild("HiddenPlayer") then
                  if v.HiddenPlayer.Value == nil then
                    if v.Door.Position.Y > -3 then
                      if Closest == nil then
                        Closest = v.Door
                       else
                        if (LocalPlayer.Character.HumanoidRootPart.Position - v.Door.Position).Magnitude < (Closest.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                          Closest = v.Door
                        end
                      end
                    end
                  end
                end
              end
            end
            return Closest
          end

          function getPath()
            local Part

            local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
            if Entity and Entity.Main.Position.Y > -4 then
              Part = getLocker()
             else
              Part = workspace.CurrentRooms[LatestRoom.Value].Door.Door
            end
            return Part
          end

          LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
            TextLabel.Text = "您现在已到达: A-King帮你翻译的 "..math.clamp(LatestRoom.Value, 1,1000)

            if LatestRoom.Value ~= 210 then
              LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.Scriptable
             else
              LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.KeyboardMouse

              Folder:ClearAllChildren()

              local Sound = Instance.new("Sound")
              Sound.Parent = game.SoundService
              Sound.SoundId = "rbxassetid://4590662766"
              Sound.Volume = 3
              Sound.PlayOnRemove = true
              Sound:Destroy()

              game.StarterGui:SetCore("SendNotification", { Title = "youtube.com/geoduude"; Text = "（King）帮你翻译的" })
              return
            end
          end)

          game:GetService("RunService").RenderStepped:connect(function()
            LocalPlayer.Character.HumanoidRootPart.CanCollide = false
            LocalPlayer.Character.Collision.CanCollide = false
            LocalPlayer.Character.Collision.Size = Vector3.new(8,LocalPlayer.Character.Collision.Size.Y,8)

            LocalPlayer.Character.Humanoid.WalkSpeed = 21

            local Path = getPath()

            local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
            if Entity then
              if Path then
                if Path.Parent.Name == "Rooms_Locker" then
                  if Entity.Main.Position.Y > -4 then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Path.Position).Magnitude < 2 then
                      if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                        fireproximityprompt(Path.Parent.HidePrompt)
                      end
                    end
                  end
                end
              end
              if Entity.Main.Position.Y < -4 then
                if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                  LocalPlayer.Character:SetAttribute("Hiding", false)
                end
              end
             else
              if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                LocalPlayer.Character:SetAttribute("Hiding", false)
              end
            end
          end)

          while true do

            local Destination = getPath()

            local path = PathfindingService:CreatePath({ WaypointSpacing = 1, AgentRadius = 0.1, AgentCanJump = false })
            path:ComputeAsync(LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,3,0), Destination.Position)
            local Waypoints = path:GetWaypoints()

            if path.Status ~= Enum.PathStatus.NoPath then

              Folder:ClearAllChildren()

              for _, Waypoint in pairs(Waypoints) do
                local part = Instance.new("Part")
                part.Size = Vector3.new(1,1,1)
                part.Position = Waypoint.Position
                part.Shape = "Cylinder"
                part.Rotation = Vector3.new(0,0,90)
                part.Material = "SmoothPlastic"
                part.Anchored = true
                part.CanCollide = false
                part.Parent = Folder
              end

              for _, Waypoint in pairs(Waypoints) do
                if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                  LocalPlayer.Character.Humanoid:MoveTo(Waypoint.Position)
                  LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
                end
              end
            end
          end
        end)
        linni:Button("Doors（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://pastefy.app/Su9RsViT/raw"))()
        end)
        linni:Button("Doors（最强1）",function()
          loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))()
        end)
        linni:Button("Doors（最强2）",function()
          loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
        end)
        linni:Button("Doors（最强3）",function()
          loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
        end)
        linni:Button("DOORS听说是好用脚本",function()
          loadstring("\112\114\105\110\116\40\34\32\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\75\73\78\71\72\85\66\48\49\47\66\108\97\99\107\75\105\110\103\47\109\97\105\110\47\66\108\97\99\107\75\105\110\103\37\50\48\68\111\111\114\115\37\50\48\77\111\98\105\108\101\34\41\41\40\41\32\34\41\10")()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("破坏模拟器脚本",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("破坏模拟器",function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/AquaModz/DestructionSIMModded/main/DestructionSimAqua.lua'))()
        end)

        local lin = window:Tab("驾驶帝国",'17015137366')

        local linni = lin:section("驾驶帝国脚本",true)
        linni:Button("King精品",function()
          LocalPlayer = game:GetService("Players").LocalPlayer
          Camera = workspace.CurrentCamera
          VirtualUser = game:GetService("VirtualUser")
          MarketplaceService = game:GetService("MarketplaceService")

          function GetCurrentVehicle()
            return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.SeatPart and LocalPlayer.Character.Humanoid.SeatPart.Parent
          end

          function TP(cframe)
            GetCurrentVehicle():SetPrimaryPartCFrame(cframe)
          end

          function VelocityTP(cframe)
            TeleportSpeed = math.random(200, 600)
            Car = GetCurrentVehicle()
            local BodyGyro = Instance.new("BodyGyro", Car.PrimaryPart)
            BodyGyro.P = 5000
            BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BodyGyro.CFrame = Car.PrimaryPart.CFrame
            local BodyVelocity = Instance.new("BodyVelocity", Car.PrimaryPart)
            BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            BodyVelocity.Velocity = CFrame.new(Car.PrimaryPart.Position, cframe.p).LookVector * TeleportSpeed
            wait((Car.PrimaryPart.Position - cframe.p).Magnitude / TeleportSpeed)
            BodyVelocity.Velocity = Vector3.new()
            wait(0.1)
            BodyVelocity:Destroy()
            BodyGyro:Destroy()
          end

          StartPosition = CFrame.new(Vector3.new(811.013184, 27.3421249, 2203.55542), Vector3.new(-187, 25.7, 1982))
          EndPosition = CFrame.new(Vector3.new(-76.4760208, 27.7194824, 1993.84229), Vector3.new(-187, 25.7, 1982))
          AutoFarmFunc = coroutine.create(function()
            while wait() do
              if not AutoFarm then
                AutoFarmRunning = false
                coroutine.yield()
              end
              AutoFarmRunning = true
              pcall(function()
                if not GetCurrentVehicle() and tick() - (LastNotif or 0) > 5 then
                  LastNotif = tick()
                  SendNotification("Aloha Scripts", "Please Enter A Vehicle!")
                 else
                  TP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                  VelocityTP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                  TP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                  VelocityTP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                end
              end)
            end
          end)

          local ULlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/libUI.txt"))()

          local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/libUI.lua"))()
          local OpenUI = Instance.new("ScreenGui")
          local ImageButton = Instance.new("ImageButton")
          local UICorner = Instance.new("UICorner")
          OpenUI.Name = "OpenUI"
          OpenUI.Parent = game.CoreGui
          OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
          ImageButton.Parent = OpenUI
          ImageButton.BackgroundColor3 = Color3.fromRGB(5, 6, 7)
          ImageButton.BackgroundTransparency = 0.500
          ImageButton.Position = UDim2.new(0.0235790554, 0, 0.466334164, 0)
          ImageButton.Size = UDim2.new(0, 50, 0, 50)
          ImageButton.Image = "rbxassetid://17345436140"
          ImageButton.Draggable = true
          UICorner.CornerRadius = UDim.new(0, 200)
          UICorner.Parent = ImageButton
          ImageButton.MouseButton1Click:Connect(function()
            if uihide == false then
              uihide = true
              game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
             else
              uihide = false
              game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 319),"Out","Quad",0.4,true)
            end

          end)

          uihide = false

          local win = ULlib:Window("驾驶帝国",Color3.fromRGB(0, 255, 0), Enum.KeyCode.E)

          local tab = win:Tab("主要功能")

          tab:Toggle("自动驾驶(刷钱)", false, function(value)
            AutoFarm = value
            if value and not AutoFarmRunning then
              coroutine.resume(AutoFarmFunc)
            end
          end)

          tab:Toggle("触摸地面", false, function(value)
            TouchTheRoad = value
          end)
        end)
        linni:Button("驾驶帝国（英文）",function()
          loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
        end)
        linni:Button("驾驶帝国（英文）",function()
          loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
        end)

        local lin = window:Tab("动物进化脚本『有稳定』",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("动物进化1『容易封』",function()
          game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("Lv", 999999999)
        end)
        linni:Button("动物进化2『容易封』",function()
          game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("Xp", 999999999)
        end)
        linni:Button("动物进化3『容易封』",function()
          game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("DmgLvl", 999999999)
        end)
        linni:Button("动物进化4『容易封』",function()
          game:GetService("ReplicatedStorage").Events.UpdateStatEvent:FireServer("CritDmgLvl", 999999999)
        end)
        linni:Button("动物进化『容易封』",function()
          local player = game.Players.LocalPlayer

          for _, child in ipairs(player:GetChildren()) do
            if child:IsA("BoolValue") then
              child.Value = true
            end
          end
        end)
        linni:Button("动物进化『稳，群里有稳定教程』",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Secure/Animal-Evolution-Simulator/main/.lua"))()
        end)

        local lin = window:Tab("浴缸战争脚本",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("（升级演习）浴缸战争",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Alan0947383/Boom/main/Protected_1198219713372149.lua.txt",true))()
        end)
        linni:Button("点我复制解密钥链接",function()
          setclipboard("https://pandadevelopment.net/startkey.html?service=demonichubv2")
        end)

 local lin = window:Tab("飞行比赛脚本",'17015137366')
 local linni = lin:section("King",true)
        linni:Button("飞行比赛",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/NightCoded/script/main/fly-race.lua"))()
        end)

 local lin = window:Tab("The rake",'17015137366')
local linni = lin:section("King",true)
    linni:Button("King自制点击我开启",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/EHj6gj91"))()
        end)
     linni:Button("The rake电脑端",function()
     loadstring(game:HttpGet("https://realzzhub.xyz/script.lua"))()
        end)
        linni:Button("『手机端吧』",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/ikY8F7gv"))()
        end)
    linni:Button("『手机端吧』",function()
  loadstring(game:HttpGet("https://pastebin.com/raw/jFn0k6Gz"))()
        end)

        local lin = window:Tab("兵工厂",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King精品点击我开启",function()
          loadstring(game:HttpGet("https://https://raw.githubusercontent.com/LINNIJSWD/LINNIqqQun932613422/main/Arsenal.lua"))()
        end)
        linni:Button("兵工厂1",function()
          loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
        end)
        linni:Button("兵工厂无敌子追",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
        end)
        linni:Button("兵工厂",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Arsenal/MainFile"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("餐厅大亨2",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King餐厅大亨2",function()
          if not game:IsLoaded() then game.Loaded:Wait() end
          if game.PlaceId ~= 4490140733 then return end

          local Library = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"));
          assert(Library, "Oopps! Library has not been loaded. Maybe try re-joining?")
          while not Library.Loaded do wait() end
          print("Library has been loaded!")

          function GetPath(...)
            local path = {...}
            local oldPath = Library
            if path and #path > 0 then
              for _,v in ipairs(path) do
                oldPath = oldPath[v]
              end
            end
            return oldPath
          end

          local Food = GetPath("Food")
          local Entity = GetPath("Entity")
          local Customer = GetPath("Customer")
          local Waiter = GetPath("Waiter")
          local Appliance = GetPath("Appliance")
          local Bakery = GetPath("Bakery")

          local FastWaiter = false
          Waiter.StartActionLoop = function(waiter)
            coroutine.wrap(function()
              while not waiter.isDeleted do
                waiter:PerformAction()
                if FastWaiter then
                  wait()
                 else
                  wait(1.5)
                end
              end
            end)()
          end

          local Original_CheckForQueuedCustomers = Waiter.CheckForQueuedCustomers
          Waiter.CheckForQueuedCustomers = function(waiter)
            if not FastWaiter then return Original_CheckForQueuedCustomers(waiter) end

            if not Library.Variables.MyBakery.isOpen then
              return false
            end

            local myFloor = waiter:GetMyFloor()

            if myFloor.floorLevel ~= 1 then
              if Library.Variables.MyBakery.floors[1]:HasAtLeastOneIdleStateOfClass("Waiter") then
                return false
              end

              if #Library.Variables.MyBakery.floors[1].waiters > 5 then
                return false
              end
            end

            local readyCustomerGroup = nil
            for _, customerGroup in ipairs(Library.Variables.MyBakery.customerQueue) do
              if customerGroup[1].state == "WaitingForSeat" and not customerGroup[1].waiterIsAttendingToInQueue then
                readyCustomerGroup = customerGroup
                break
              end
            end

            if not readyCustomerGroup then return false end

            for _, customer in ipairs(readyCustomerGroup) do
              customer.waiterIsAttendingToInQueue = true
            end

            local firstCustomer = readyCustomerGroup[1]

            coroutine.wrap(function()
              wait()
              if #readyCustomerGroup == 0 then
                return
              end
              if readyCustomerGroup[1].waiterIsAttendingToInQueue and readyCustomerGroup[1].state == "WaitingForSeat" then
                for _, customer in ipairs(readyCustomerGroup) do
                  customer.waiterIsAttendingToInQueue = false
                end
              end
            end)()

            waiter.state = "WalkingToQueuedCustomerGroup"


            if firstCustomer.state ~= "WaitingForSeat" or firstCustomer.stateData.busyWalking then
              for _, customer in ipairs(readyCustomerGroup) do
                customer.waiterIsAttendingToInQueue = false
              end
              waiter:ResetAllStates()
              return
            end

            firstCustomer:CleanupGroupInteract()
            firstCustomer:StopGroupEmoji()

            Library.Variables.MyBakery:SeatQueuedCustomerGroup(firstCustomer)

            Library.Variables.MyBakery:UpdateCustomerQueuePositioning()

            waiter:FaceEntity(firstCustomer)

            waiter.state = "Idle"

            return true

          end

          local Original_CheckForCustomerOrder = Waiter.CheckForCustomerOrder
          Waiter.CheckForCustomerOrder = function(waiter)
            if not FastWaiter then return Original_CheckForCustomerOrder(waiter) end

            local myFloor = waiter:GetMyFloor()

            local waitingCustomer = myFloor:GetCustomerWaitingToOrder()

            if not waitingCustomer then

              local indices = Library.Functions.RandomIndices(Library.Variables.MyBakery.floors)
              for _, index in ipairs(indices) do
                local floor = Library.Variables.MyBakery.floors[index]
                if floor ~= myFloor then
                  if not floor:HasAtLeastOneIdleStateOfClass("Waiter") then
                    waitingCustomer = floor:GetCustomerWaitingToOrder()
                    if waitingCustomer then
                      break
                    end
                  end
                end
              end

              if not waitingCustomer then
                return false
              end
            end

            waiter.state = "WalkingToTakeOrder"

            local customerGroup = {waitingCustomer}
            for _, customerPartner in ipairs(waitingCustomer.stateData.queueGroup) do
              if customerPartner.state == "WaitingToOrder" and not customerPartner.waiterIsAttendingToFoodOrder then
                table.insert(customerGroup, customerPartner)
              end
            end

            for _, seatedCustomer in ipairs(customerGroup) do
              seatedCustomer.waiterIsAttendingToFoodOrder = true
            end

            local function untagGroup()
              for _, seatedCustomer in ipairs(customerGroup) do
                seatedCustomer.waiterIsAttendingToFoodOrder = false
              end
            end

            local firstCustomer = customerGroup[1]
            local groupTable = waiter:EntityTable()[firstCustomer.stateData.tableUID]
            if not groupTable or groupTable.isDeleted then
              waiter.state = "Idle"
              return
            end
            local tx, ty, tz = groupTable.xVoxel, groupTable.yVoxel, groupTable.zVoxel

            local customerFloor = firstCustomer:GetMyFloor()
            waiter:WalkToNewFloor(customerFloor, function()
              if firstCustomer.leaving or firstCustomer.isDeleted then
                waiter.state = "Idle"
                return
              end
              waiter:WalkToPoint(tx, ty, tz, function()

                if firstCustomer.isDeleted or firstCustomer.leaving then
                  waiter.state = "Idle"
                  return
                end

                local orderStand = customerFloor:FindOrderStandOnAnyFloor()
                if not orderStand then
                  Library.Print("CRITICAL: NO ORDER STAND FOUND!", true)
                  untagGroup()
                  waiter.state = "Idle"
                  waiter:TimedEmoji("ConcernedEmoji", 2)
                  return
                end

                local firstCustomer = customerGroup[1]
                if firstCustomer then
                  firstCustomer:StopGroupEmoji()
                  firstCustomer:CleanupGroupInteract()
                end

                local groupOrder = {}
                local tookOrdersFrom = {}
                for _, seatedCustomer in ipairs(customerGroup) do
                  if seatedCustomer.state == "WaitingToOrder" then
                    table.insert(tookOrdersFrom, seatedCustomer)
                    groupOrder[seatedCustomer.UID] = Library.Food.RandomFoodChoice(seatedCustomer.UID, seatedCustomer.ID, seatedCustomer:IsRichCustomer(), seatedCustomer:IsPirateCustomer(), seatedCustomer.isNearTree)
                    seatedCustomer.state = "WaitingForFood"
                    seatedCustomer:StopChat()
                  end
                end

                if #tookOrdersFrom == 0 then
                  waiter.state = "Idle"
                  return
                end

                waiter:PlayLoadedAnimation("write")
                for _, customer in ipairs(customerGroup) do
                  waiter:FaceEntity(customer)
                end
                waiter:StopLoadedAnimation("write")

                waiter.state = "WalkingToDropoffOrder"

                waiter:WalkToNewFloor(orderStand:GetMyFloor(), function()

                  if orderStand.isDeleted then
                    for _, customer in ipairs(customerGroup) do
                      customer:ForcedToLeave()
                    end
                    waiter.state = "Idle"
                    return
                  end

                  waiter:WalkToPoint(orderStand.xVoxel, orderStand.yVoxel, orderStand.zVoxel, function()

                    if orderStand.isDeleted then
                      for _, customer in ipairs(customerGroup) do
                        customer:ForcedToLeave()
                      end
                      waiter.state = "Idle"
                      return
                    end


                    for _, orderedCustomer in ipairs(tookOrdersFrom) do
                      if orderedCustomer.isDeleted then
                        continue
                      end
                      orderedCustomer:ChangeToWaitingForFoodState(groupOrder[orderedCustomer.UID])
                      orderStand:AddFoodToQueue(groupOrder[orderedCustomer.UID])
                    end


                    Library.Network.Fire("AwardWaiterExperienceForTakingOrderWithVerification", waiter.UID)

                    waiter:FaceEntity(orderStand)

                    waiter.state = "Idle"

                  end)
                end)

              end)
            end)

            return true

          end

          if getconnections then
            for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
              v:Disable()
            end
          end

          local Players = game:GetService("Players")
          local Player = Players.LocalPlayer

          local Original_RandomFoodChoice = Food.RandomFoodChoice
          local GoldFood = false
          Food.RandomFoodChoice = function(customerOwnerUID, customerOwnerID, isRichCustomer, isPirateCustomer, isNearTree)
            if GoldFood then
              local spoof = Food.new("45", customerOwnerUID, customerOwnerID, true, true)
              spoof.IsGold = true
              return spoof
            end

            return Original_RandomFoodChoice(customerOwnerUID, customerOwnerID, isRichCustomer, isPirateCustomer, isNearTree)
          end

          local Original_DropPresent = Customer.DropPresent
          local AutoGift = false

          local Original_CheckForFoodDelivery = Waiter.CheckForFoodDelivery
          Waiter.CheckForFoodDelivery = function(waiter)
            if not GoldFood then
              return Original_CheckForFoodDelivery(waiter)
            end

            local myFloor = waiter:GetMyFloor()
            local readyStands = myFloor:GatherOrderStandsWithDeliveryReady()
            if #readyStands == 0 then
              local indices = Library.Functions.RandomIndices(Library.Variables.MyBakery.floors)
              for _, index in ipairs(indices) do
                local floor = Library.Variables.MyBakery.floors[index]
                if floor ~= myFloor and not floor:HasAtLeastOneIdleStateOfClass("Waiter") then
                  readyStands = floor:GatherOrderStandsWithDeliveryReady()
                  if #readyStands > 0 then break end
                end
              end

              if #readyStands == 0 then
                return false
              end
            end

            local orderStand = readyStands[math.random(#readyStands)]
            if not orderStand then
              return false
            end

            orderStand.stateData.foodReadyTargetCount = orderStand.stateData.foodReadyTargetCount + 1
            waiter.state = "WalkingToPickupFood"
            waiter:WalkToNewFloor(orderStand:GetMyFloor(), function()
              if orderStand.isDeleted then
                waiter.state = "Idle"
                return
              end

              waiter:WalkToPoint(orderStand.xVoxel, orderStand.yVoxel, orderStand.zVoxel, function()
                if orderStand.isDeleted then
                  waiter.state = "Idle"
                  return
                end

                orderStand.stateData.foodReadyTargetCount = orderStand.stateData.foodReadyTargetCount - 1
                if #orderStand.stateData.foodReadyList == 0 then
                  waiter.state = "Idle"
                  return
                end

                local selectedFoodOrder = orderStand.stateData.foodReadyList[1]
                selectedFoodOrder.isGold = true

                table.remove(orderStand.stateData.foodReadyList, 1)

                selectedFoodOrder:DestroyPopupListItemUI()
                local customerOfOrder = waiter:EntityTable()[selectedFoodOrder.customerOwnerUID]
                if not customerOfOrder then
                  Library.Print("CRITICAL: customer owner of food not found", true)
                  waiter.state = "Idle"
                  return false
                end
                waiter:FaceEntity(orderStand)
                waiter:HoldFood(selectedFoodOrder.ID, selectedFoodOrder.isGold)
                waiter.state = "WalkingToDeliverFood"
                if not customerOfOrder.isDeleted then
                  waiter:WalkToNewFloor(customerOfOrder:GetMyFloor(), function()
                    waiter:WalkToPoint(customerOfOrder.xVoxel, customerOfOrder.yVoxel, customerOfOrder.zVoxel, function()
                      waiter:DropFood()
                      if customerOfOrder.isDeleted then
                        Library.Print("CRITICAL: walked to customer, but they were forced to leave.  aborting", true)
                        waiter.state = "Idle"
                        return
                      end
                      customerOfOrder:ChangeToEatingState()
                      waiter:FaceEntity(customerOfOrder)
                      Library.Network.Fire("AwardWaiterExperienceForDeliveringOrderWithVerification", waiter.UID)
                      waiter.state = "Idle"
                    end)
                  end)
                  return
                end
                waiter.state = "Idle"
                waiter.stateData.heldDish = waiter.stateData.heldDish:Destroy()
              end)
            end)

            return true
          end

          Customer.DropPresent = function(gift)
            if AutoGift then
              local character = Player.Character or Player.CharacterAdded:Wait()
              local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

              local UID = Library.Network.Invoke("Santa_RequestPresentUID", gift.UID)
              Library.Network.Fire("Santa_PickUpGift", UID, humanoidRootPart.Position + Vector3.new(1,0,0))
             else
              Original_DropPresent(gift)
            end
          end



          local IMAGE = "rbxassetid://17345436140"
          local Positions = UDim2.new(0.822025776, 0, 0.0401606411, 0)
          local Sizes = UDim2.new(0, 76, 0, 70)

          local KINGHUBMOBILE = Instance.new("ScreenGui")
          local _100x100 = Instance.new("Frame")
          local ImageButton = Instance.new("ImageButton")

          KINGHUBMOBILE.Name = "LinniScriptcharge"
          KINGHUBMOBILE.Parent = game:WaitForChild("CoreGui")
          KINGHUBMOBILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

          _100x100.Name = "100x100"
          _100x100.Parent = KINGHUBMOBILE
          _100x100.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          _100x100.Position = Positions
          _100x100.Size = UDim2.new(0, 76, 0, 70)

          ImageButton.Parent = _100x100
          ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ImageButton.Size = Sizes
          ImageButton.Image = IMAGE
          ImageButton.MouseButton1Down:connect(function()
            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(true, "RightControl", false, game)

            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(false, "RightControl", false, game)
          end)

          local UILib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/%E7%89%B9%E5%88%AB%E7%9A%84ui.lua')))()
          local win = UILib:Window("LinniScriptcharge丨餐厅大亨2",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

          local tab = win:Tab("主要功能")

          local Original_ChangeToWaitForOrderState = Customer.ChangeToWaitForOrderState
          local FastOrder = false
          Customer.ChangeToWaitForOrderState = function(customer)
            if not FastOrder then
              Original_ChangeToWaitForOrderState(customer)
              return
            end

            if customer.state ~= "WalkingToSeat" then return end

            local seatLeaf = customer:EntityTable()[customer.stateData.seatUID]
            local tableLeaf = customer:EntityTable()[customer.stateData.tableUID]

            if seatLeaf.isDeleted or tableLeaf.isDeleted then
              customer:ForcedToLeave()
              return
            end

            customer:SetCustomerState("ThinkingAboutOrder")
            customer:SitInSeat(seatLeaf).Completed:Connect(function()

              customer.humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
              customer.xVoxel = seatLeaf.xVoxel
              customer.zVoxel = seatLeaf.zVoxel

              coroutine.wrap(function()
                wait(0.05)
                customer:ReadMenu()
                wait(0.1)

                if customer.isDeleted or customer.state ~= "ThinkingAboutOrder" then return end

                customer:StopReadingMenu()
                customer:SetCustomerState("DecidedOnOrder")

                local myGroup = {customer}
                for _, partner in ipairs(customer.stateData.queueGroup) do
                  if not partner.isDeleted then
                    table.insert(myGroup, partner)
                  end
                end
                local foundUndecidedMember = false
                for _, groupMember in ipairs(myGroup) do
                  if groupMember.state ~= "DecidedOnOrder" then
                    foundUndecidedMember = true
                    break
                  end
                end

                if not foundUndecidedMember then
                  for _, groupMember in ipairs(myGroup) do
                    groupMember:ReadyToOrder()
                  end
                end
              end)()
            end)
          end

          tab:Toggle("快速订单", false, function(Value)
            FastOrder = Value
          end)

          tab:Toggle("快速服务员", false, function(Value)
            FastWaiter = Value
          end)

          tab:Toggle("黄金食品", false, function(Value)
            GoldFood = Value
          end)

          tab:Toggle("收集礼物", false, function(Value)
            AutoGift = Value

            if Value and Value == true then
              if not Workspace or not Workspace.__DEBRIS then return end

              coroutine.wrap(function()
                for _, object in pairs(Workspace.__DEBRIS:GetChildren()) do
                  if object.Name == "SantaPresent" and object:FindFirstChild("SantaPresent") and object.SantaPresent:FindFirstChild("Activated") then
                    pcall(function()
                      local activated = object.SantaPresent.Activated
                      for _, connection in pairs(getconnections(activated.Event)) do
                        connection:Fire()
                        wait()
                      end
                    end)
                    wait(1)
                  end
                end
              end)()
            end
          end)
          local Wells = {"101","49","50"}
          local Slots = {"57"}
          local FurnituresCooldowns = {}
          local AutoInteract = false
          local function UseWell(wellUID, wellId)
            local event = "RequestWishingWellUsage"
            if wellId == "101" then
              event = "RequestHauntedWishingWellUsage"
            end
            Library.Network.Fire(event,wellUID)
            print("Collected Wishing Well!")
          end
          task.spawn(function()
            while true do
              if AutoInteract then
                local bakeryData = Library.Variables.UIDData
                if not bakeryData then
                  Rayfield.Flags["AutoInteract"]:Set(false)
                  AutoInteract = false
                  return
                end
                for i,v in pairs(bakeryData["Furniture"]) do
                  local ID = v.ID
                  if ID and table.find(Wells,ID) and v.ClassName == "Furniture" and not FurnituresCooldowns[v.UID] then
                    task.spawn(function()
                      local event = "GetWishingWellRefreshTime"
                      if ID == "101" then
                        event = "GetHauntedWishingWellRefreshTime"
                      end
                      local cooldown = Library.Network.Invoke(event, ID == "101" and v.UID or v.ID)

       if cooldown and cooldown == 0 and AutoInteract then
                        UseWell(v.UID, ID)
                        FurnituresCooldowns[v] = nil
                       else
FurnituresCooldowns[v] = Workspace:GetServerTimeNow() + cooldown
                      end
                    end)
                  end
                  if ID and table.find(Slots,ID) then
                    task.spawn(function()
                      local cooldown = Library.Network.Invoke("GetSlotRefreshTime")
     if cooldown and cooldown == 0 and AutoInteract then
             Library.Network.Fire("RequestSlotUsage", v.UID)
                        print("Collected Slot Machine!")
                        FurnituresCooldowns[v] = nil
                       else
FurnituresCooldowns[v] = Workspace:GetServerTimeNow() + cooldown
                      end
                    end)
                  end
                  wait()
                end
      local currentTime = Workspace:GetServerTimeNow()
                if AutoInteract then
                  for furniture, cooldown in pairs(FurnituresCooldowns) do
                    local ID = furniture.ID
                    if ID and currentTime >= cooldown then
     if table.find(Wells,ID) and v.ClassName == "Furniture" then
                        task.spawn(function()
       local event = "GetWishingWellRefreshTime"
                          if ID == "101" then
          event = "GetHauntedWishingWellRefreshTime"
                          end

local cooldown = Library.Network.Invoke(event, ID == "101" and v.UID or v.ID)
    if cooldown and cooldown == 0 and AutoInteract then
                            UseWell(v.UID, ID)
                            FurnituresCooldowns[v] = nil
                           else
FurnituresCooldowns[v] = Workspace:GetServerTimeNow() + cooldown
                          end
                        end)
                      end
                      if table.find(Slots,ID) then
                        local cooldown = Library.Network.Invoke("GetSlotRefreshTime")
                        if cooldown and cooldown == 0 and AutoInteract then
                          Library.Network.Fire("RequestSlotUsage", v.UID)
                          print("Collected Slot Machine!")
                          FurnituresCooldowns[v] = nil
                         else
                          FurnituresCooldowns[v] = Workspace:GetServerTimeNow() + cooldown
                        end
                      end
                    end
                  end
                end
              end
              wait(5)
            end
          end)
          tab:Toggle("自动抽奖", false, function(Value)
            AutoInteract = Value
          end)
          local TiersLayout = {
            Cook = Library.Shared.CookTierLayout,
            Waiter = Library.Shared.WaiterTierLayout
          }
          function CheckIfCanBuy(className)
            local stats = Library.Stats.Get(true);
            if not stats then return end
            local allWorkers = Library.Variables.MyBakery:GetAllOfClassName(className)
            if not allWorkers then return end
            local level = Library.Experience.BakeryExperienceToLevel(Library.Variables.MyBakery.experience)
            for _, tier in pairs(TiersLayout[className]) do
              local alreadyOwned = false
              for _, worker in pairs(allWorkers) do
                if tier.Tier == worker.tier then
                  alreadyOwned = true
                  break
                end
              end

              if not alreadyOwned then
                if tier.BakeryLevelRequired <= level and tier.Cost < stats.Cash then
                  Library.Network.Fire("RequestNPCPurchase", className, tier.Tier)
                  print(string.format("Bought a %s of tier %s", className, tier.Tier))
                  wait(0.5)
                end
              end
            end
          end

          local AutoBuyWorkers = false
          Library.Network.Fired("BakeryLevelUp"):Connect(function()
            if not AutoBuyWorkers then return end

            CheckIfCanBuy("Cook")
            CheckIfCanBuy("Waiter")
          end)

          tab:Toggle("自动购买员工", false, function(Value)
            AutoBuyWorkers = Value
            if Value then
              CheckIfCanBuy("Cook")
              CheckIfCanBuy("Waiter")
            end
          end)


          local Original_WalkThroughWaypoints = Entity.WalkThroughWaypoints
          local FastNPC = false
          local TeleportNPC = false
          local NPCSpeed = 100
          Entity.WalkThroughWaypoints = function(entity, voxelpoints, waypoints, undefined1, undefined2)
            if entity:BelongsToMyBakery() then
              if TeleportNPC then
                TeleportThroughWaypoints(entity, voxelpoints, waypoints)
                return
               elseif FastNPC and entity.humanoid then
                entity.humanoid.WalkSpeed = NPCSpeed
               elseif not FastNPC and entity.humanoid and entity.data and entity.data.walkSpeed then
                entity.humanoid.WalkSpeed = entity.data.walkSpeed
              end
            end

            Original_WalkThroughWaypoints(entity, voxelpoints, waypoints, undefined1, undefined2)
          end


          function TeleportThroughWaypoints(entity, voxelpoints, waypoints)
            entity:PlayLoadedAnimation("walking")

            if #voxelpoints == 0 then
              return
            end

            if not entity:BelongsToMyBakery() and entity.stateData.walkingThroughWaypoints then
              repeat wait() until entity.isDeleted or not entity.stateData.walkingThroughWaypoints
              if entity.isDeleted then
                return
              end
            end
            if not entity:BelongsToMyBakery() then
              entity.stateData.walkingThroughWaypoints = true
            end

            -- replication fix?
            if not entity:BelongsToMyBakery() then
              entity.model.HumanoidRootPart.Anchored = false
            end

            local wayPoint = waypoints[#waypoints]
            local voxelPoint = voxelpoints[#waypoints]


            if wayPoint and voxelPoint and voxelPoint["x"] and voxelPoint["y"] then
              entity.model.HumanoidRootPart.CFrame = CFrame.new(wayPoint) * CFrame.new(0, 2, 0)
              local oldX, oldZ = entity.xVoxel, entity.zVoxel

              entity.xVoxel = voxelPoint.x
              entity.zVoxel = voxelPoint.y

              if entity:BelongsToMyBakery() then
                entity:GetMyFloor():BroadcastNPCPositionChange(entity, oldX, oldZ)
              end
             else
              for i, v in ipairs(waypoints) do
                entity.model.HumanoidRootPart.CFrame = CFrame.new(v) * CFrame.new(0, 2, 0)
                --entity.humanoid.MoveToFinished:Wait()
                local oldX, oldZ = entity.xVoxel, entity.zVoxel
                entity.xVoxel = voxelpoints[i].x
                entity.zVoxel = voxelpoints[i].y


                if entity:BelongsToMyBakery() then
                  entity:GetMyFloor():BroadcastNPCPositionChange(entity, oldX, oldZ)
                end
              end
            end

            if not entity:BelongsToMyBakery() then
              entity.stateData.walkingThroughWaypoints = false
            end

            entity:StopLoadedAnimation("walking")
            entity:PlayLoadedAnimation("idle")
          end

          tab:Toggle("机器人传送", false, function(Value)
            TeleportNPC = Value
          end)

        end)
        linni:Button("餐厅大亨（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/snake-hub/main/restaurant-tycoon-2.lua"))()
        end)
        linni:Button("餐厅大亨（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://pastefy.app/Ppqt0Gib/raw"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("超级大力士模拟器",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King自制超级大力士模拟器点击我开启",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/swymsn5J"))()
        end)
        linni:Button("超级大力士模拟器（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0strongman", true))()
        end)
        linni:Button("超级大力士模拟器（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://pastefy.app/aO18ZEB9/raw"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("举重模拟器",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King自制举重模拟器",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/bj9jHFMQ"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("怪兽宇宙",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King自制怪兽宇宙点击我开启",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/WFg1kC9g"))()
        end)

        local lin = window:Tab("铲雪模拟器脚本",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King自制铲雪模拟器",function()
          loadstring(game:HttpGet("https://shz.al/~LinNiCYMNQ/铲雪模拟器.lua"))()
        end)

        local lin = window:Tab("幸运方块",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King自制",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/n7mGHecw"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("汽车经销大亨",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King自制",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/Uw5kueaq"))()
        end)
        linni:Button("汽车经销大亨（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://pastefy.app/5o594Q0i/raw"))()
        end)
        linni:Button("汽车经销大亨",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/saucekid/scripts/main/CarCrushers.lua"))()
        end)
        linni:Button("汽车经销大亨（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
        end)
        linni:Button("汽车经销大亨（收集所有砖头）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/IExpIoit/Script/main/Car%20Dealership%20Tycoon.lua"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("寻宝模拟器",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King自制",function()
          local PhysicsService = game:GetService("PhysicsService")
          local RunService = game:GetService("RunService")
          local MarketplaceService = game:GetService("MarketplaceService")
          local ReplicatedStorage = game:GetService("ReplicatedStorage")
          local Players = game:GetService("Players")
          local VirtualUser = game:GetService("VirtualUser")
          local TeleportService = game:GetService("TeleportService")
          local HttpService = game:GetService("HttpService")

          -- Global Environment Variables
          getgenv().thunt_gui_executed = true
          getgenv().cheat_settings = {}
          getgenv().cheat_settings.autochest = false
          getgenv().cheat_settings.autosell = false
          getgenv().cheat_settings.autobuyshovels = false
          getgenv().cheat_settings.autobuybackpacks = false
          getgenv().cheat_settings.autobuypets = false
          getgenv().cheat_settings.autorebirth = false
          getgenv().cheat_settings.autobuycrates = false
          getgenv().cheat_settings.autoopencrates = false
          --getgenv().cheat_settings.freegamepass = false
          getgenv().cheat_settings.gcollide = true
          --getgenv().cheat_settings.autoinvisible = false
          getgenv().cheat_settings.walkspeed = false
          getgenv().cheat_settings.jumppower = false
          getgenv().cheat_settings.autoserverhop = false
          getgenv().cheat_settings.antiafk = true
          getgenv().cheat_settings.savesettings = false

          -- Predefining needed game data
          getgenv().thunt_data = {}
          getgenv().thunt_data.chests = ReplicatedStorage:WaitForChild("Chests")
          getgenv().thunt_data.crates = ReplicatedStorage:WaitForChild("Crates")
          getgenv().thunt_data.shovels = ReplicatedStorage:WaitForChild("Shovels")
          getgenv().thunt_data.backpacks = ReplicatedStorage:WaitForChild("Backpacks")
          getgenv().thunt_data.pets = ReplicatedStorage:WaitForChild("Pets")
          getgenv().thunt_data.gamepasses = ReplicatedStorage:WaitForChild("Gamepasses")
          getgenv().thunt_data.buy_item = ReplicatedStorage:WaitForChild("Events"):WaitForChild("Checkout")
          getgenv().thunt_data.buy_crate = ReplicatedStorage:WaitForChild("Events"):WaitForChild("BuyCrate")
          getgenv().thunt_data.open_crate = ReplicatedStorage:WaitForChild("Events"):WaitForChild("SendOpenCrate")
          getgenv().thunt_data.rebirth = ReplicatedStorage:WaitForChild("Events"):WaitForChild("Rebirth")
          getgenv().thunt_data.check_if_owned = ReplicatedStorage:WaitForChild("Events"):WaitForChild("CheckIfOwned")

          function thunt_data.getChestNames(with_health)
            local ret_val = {}
            for ind, val in pairs(getgenv().thunt_data.chests:GetChildren()) do
              if with_health then
                ret_val[ind] = val.Name.." ("..val:WaitForChild("Health").Value..")"
               else
                ret_val[ind] = val.Name
              end
            end
            return ret_val
          end

          function thunt_data.getCrateNames()
            local ret_val = {}
            for ind, val in pairs(getgenv().thunt_data.crates:GetChildren()) do
              ret_val[ind] = val.Name
            end
            return ret_val
          end

          -- Predefining player data
          getgenv().player_data = {}

          -- Cheat needed variables
          getgenv().cheat_vars = {}
          getgenv().cheat_vars.walkspeed = 16
          getgenv().cheat_vars.jumppower = 50
          getgenv().cheat_vars.servermin = 6
          getgenv().cheat_vars.servermax= 14

          getgenv().cheat_vars.chosen_autobuycrate = {}
          getgenv().cheat_vars.chosen_autoopencrates = {}

          local crates_arr = getgenv().thunt_data.getCrateNames()
          for i,v in pairs(crates_arr) do
            getgenv().cheat_vars.chosen_autobuycrate[v] = false
            getgenv().cheat_vars.chosen_autoopencrates[v] = false
          end


          getgenv().cheat_vars.chosen_autofarm = {}
          local chests_arr = getgenv().thunt_data.getChestNames(true)
          for i,v in pairs(chests_arr) do
            getgenv().cheat_vars.chosen_autofarm[v] = false
          end

          sandblocks = workspace.SandBlocks--:WaitForChild("SandBlocks")

          -- Utility functions
          -- Data related functions
          local function saveData()
            if getgenv().player_data["player"] == nil then
              return false
            end
            local table =
            {
              cheat_var = getgenv().cheat_vars,
              cheat_setting = getgenv().cheat_settings
            }
            local json = HttpService:JSONEncode(table)
            makefolder("BongoTHS")
            writefile("BongoTHSdata_"..getgenv().player_data["player"].Name.."v1.txt", json)
            return true
          end

          local function loadData()
            if getgenv().player_data["player"] == nil then
              return false
            end
            if(not isfile("BongoTHSdata_"..getgenv().player_data["player"].Name.."v1.txt")) then
              return nil
            end
            local file_content = readfile("BongoTHSdata_"..getgenv().player_data["player"].Name.."v1.txt")
            local table = HttpService:JSONDecode(file_content)
            if table.cheat_setting.savesettings == true then
              getgenv().cheat_vars = table.cheat_var
              getgenv().cheat_settings = table.cheat_setting
            end
            return true
          end

          local function removeData()
            if getgenv().player_data["player"] == nil then
              return false
            end
            if isfile("BongoTHSdata_"..getgenv().player_data["player"].Name.."v1.txt") then
              delfile("BongoTHSdata_"..getgenv().player_data["player"].Name.."v1.txt")
            end
          end

          -- Other functions
          local function spawnThread(task, ...)
            local cor = coroutine.create(task)
            local success, message = coroutine.resume(cor, ...)
            return cor, success, message
          end

          local function updatePlayerData()
            getgenv().player_data["player"] = Players.LocalPlayer
            getgenv().player_data["character"] = getgenv().player_data["player"].Character or getgenv().player_data["player"].CharacterAdded:Wait()
            getgenv().player_data["humanoid"] = getgenv().player_data["character"]:WaitForChild("Humanoid")
            getgenv().player_data["root"] = getgenv().player_data["character"]:WaitForChild("HumanoidRootPart")
            getgenv().player_data["tool"] = nil
            for ind, val in pairs(getgenv().player_data["player"].Backpack:GetChildren()) do--:WaitForChild("Backpack"):GetChildren()) do
              if val:IsA("Tool") then
                getgenv().player_data["tool"] = val
                break
              end
            end

            if getgenv().player_data["tool"] == nil then
              for ind, val in pairs(getgenv().player_data["character"]:GetChildren()) do
                if val:IsA("Tool") then
                  getgenv().player_data["tool"] = val
                  break
                end
              end
            end
            getgenv().player_data["coins"] = getgenv().player_data["player"].leaderstats.Coins--:WaitForChild("leaderstats"):WaitForChild("Coins")
          end

          local function createInstance(inst, args)
            local instance = Instance.new(inst)
            -- Instance properties
            for key, value in pairs(args) do
              instance[key] = value
            end
            return instance
          end

          local function strToVec2(str, char)
            local temp = string.split(str, char)
            return {temp[1], temp[2]}
          end

          -- Cheat functions
          updatePlayerData()


          local function serverHop(min_players, max_players)
            local servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
            local teleported = false
            local cursor = ""
            while not teleported do
              if servers.nextPageCursor ~= nil then
                for i,v in pairs(servers.data) do
                  if v.playing < min_players then
                    continue
                  end
                  if v.playing > max_players then
                    continue
                  end
                  teleported = true
                  TeleportService:TeleportToPlaceInstance(game.PlaceId, v.id)
                  break
                end
                if not teleported then
                  cursor = servers.nextPageCursor
                  servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..cursor))
                end
               else
                wait(10)
                servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100&cursor="..cursor))
              end
              wait(1)
            end
          end

          local function teleportTo(cframe)
            getgenv().player_data["root"].CFrame = cframe
          end

          local function setWalkSpeed(number)
            getgenv().player_data["humanoid"].WalkSpeed = number
          end

          local function setJumpPower(number)
            getgenv().player_data["humanoid"].JumpPower = number
          end

          local function platformStand()
            local args =
            {
              Anchored = true,
              Parent = workspace,
              CFrame = getgenv().player_data["root"].CFrame - Vector3.new(0, 3.6, 0)
            }
            local part = createInstance("Part", args)
            part.TouchEnded:Connect(function(tpart)
              if tpart.Parent == getgenv().player_data["character"] then
                part:Destroy()
              end
            end)
          end
          local function findChest(filters)
            for ind1, part1 in pairs(sandblocks:GetChildren()) do
              if part1:FindFirstChild("Chest") then
                local chest_type = part1:FindFirstChild("Mat")
                if chest_type == nil then
                  continue
                end
                for i,v in pairs(filters) do
                  if v == chest_type.Value or v:match(chest_type.Value) then
                    return part1
                  end
                end
              end
            end
            return nil
          end
          local function getFirstBlock()
            local children = sandblocks:GetChildren()
            for i,v in pairs(children) do
              if v:FindFirstChild("Rock") == nil or v:FindFirstChild("Chest") == nil then
                --return v
              end
            end
            return nil
          end
          local function digBlock(block)
            while getgenv().player_data["tool"] == nil do
              updatePlayerData()
              wait()
            end
            while(getgenv().player_data["tool"].Parent ~= getgenv().player_data["character"] and getgenv().player_data["tool"].Parent ~= getgenv().player_data["player"].Backpack) do
              updatePlayerData()
              wait()
            end
            getgenv().player_data["humanoid"]:EquipTool(getgenv().player_data["tool"])

            getgenv().player_data["tool"]:FindFirstChild("RemoteClick"):FireServer(block)
          end

          local function checkMaxBackpack()
            local amount = getgenv().player_data["player"].PlayerGui.Gui.Buttons.Sand.Amount
            local backpack_status = strToVec2(Amount.Text, " / ")
            return backpack_status[1] == backpack_status[2]
          end


          local function sell()
            while checkMaxBackpack() do
           
              teleportTo(CFrame.new(2201, 10, -254))
              wait(1)
            end
          end
          local function sellReturn()
            local cframe = getgenv().player_data["root"].CFrame
            sell()
            getgenv().player_data["root"].CFrame = cframe
          end
          local function checkIfItemOwned(item_name)
            getgenv().thunt_data.check_if_owned:InvokeServer(item_name)
          end
          local function buyItem(item_name)
            local args =
            {
              [1] = item_name
            }
            getgenv().thunt_data.buy_item:FireServer(unpack(args))
          end
          local function buyCrate(crate_name, target_name,quantity)
            local args =
            {
              [1] = getgenv().thunt_data.crates[crate_name],
              [2] = target_name,
              [3] = quantity
            }
            getgenv().thunt_data.buy_crate:FireServer(unpack(args))
          end
          local function openCrate(crate_name)
            local args =
            {
              [1] = getgenv().thunt_data.crates[crate_name]
            }

            getgenv().thunt_data.open_crate:FireServer(unpack(args))
          end

          local function rebirth()
            getgenv().thunt_data.rebirth:FireServer()
          end
          local function getCurrentItem(item_type)
            if string.lower(item_type) == "shovels" then
              return getgenv().player_data["tool"].Name
             elseif string.lower(item_type) == "backpacks" then
              local backpack
              for i,v in pairs(getgenv().player_data["character"]:GetChildren()) do
                if v:IsA("Model") then
                  return v.Name
                end
              end
             elseif string.lower(item_type) == "pets" then
              local pet_holder = getgenv().player_data["character"].PetHolder--:WaitForChild("PetHolder")
              local children = pet_holder:GetChildren()
              if #children == 0 then
                return "None"
              end
              return children[1].Name
            end
          end
          local function getNextBestItem(item_type, max_price)
            local current_item_name = getCurrentItem(item_type)
            if current_item_name == nil then
              return nil
            end
            local current_item
            local min_price
            if current_item_name ~= "None" then
              current_item = getgenv().thunt_data[item_type][current_item_name]
              if current_item == nil then
                return nil
              end
              min_price = current_item.Price.Value
             else
              min_price = 0
            end

            local next_best_item
            for i, item in pairs(getgenv().thunt_data[item_type]:GetChildren()) do
              if item_type == "shovels" then
                local item_tool = item:WaitForChild(item.Name)
                local item_configuration = item_tool:WaitForChild("Configurations")
                local item_type = item_configuration:WaitForChild("ToolType")

                if item_type.Value == "Bomb" then
                  continue
                end
              end
              local item_price = item.Price.Value
              if item_price <= min_price then
                continue
               elseif item_price > max_price then
                continue
              end
              next_best_item = item
              min_price = item_price
            end
            return next_best_item
          end
          local function buyNextBestItem(item_type)
            local item = getNextBestItem(item_type, getgenv().player_data["coins"].Value)
            if item == nil then
              return
            end
            buyItem(item.Name)
          end

          local function buyEverything()
            if getgenv().cheat_settings.autorebirth then
              rebirth()
            end

            if getgenv().cheat_settings.autobuyshovels then
              buyNextBestItem("shovels")
            end

            if getgenv().cheat_settings.autobuybackpacks then
              buyNextBestItem("backpacks")
            end

            if getgenv().cheat_settings.autobuypets then
              buyNextBestItem("pets")
            end

            updatePlayerData()
          end

          local function autoChest(chests)
            local block = findChest(chests) or getFirstBlock()
            if block == nil then
              return
            end
            local hp = block.Health.Value
            local retries = 0
            while getgenv().cheat_settings.autochest and block ~= nil do
              if block.Parent ~= sandblocks then
                break
              end
              if getgenv().cheat_settings.autosell then
                if checkMaxBackpack() then
                  sellReturn()
                  buyEverything()
                end
              end
              getgenv().cheat_settings.gcollide = false
              teleportTo(block.CFrame + Vector3.new(0, block.Size.Y, 0))
              digBlock(block)
              wait(getgenv().player_data["tool"].Configurations.AttackLength.Value)  
                end
          end

          local IMAGE = "rbxassetid://17345436140"
          local Positions = UDim2.new(0.822025776, 0, 0.0401606411, 0)
          local Sizes = UDim2.new(0, 76, 0, 70)

          local KINGHUBMOBILE = Instance.new("ScreenGui")
          local _100x100 = Instance.new("Frame")
          local ImageButton = Instance.new("ImageButton")

          KINGHUBMOBILE.Name = "LinniScriptcharge"
          KINGHUBMOBILE.Parent = game:WaitForChild("CoreGui")
          KINGHUBMOBILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

          _100x100.Name = "100x100"
          _100x100.Parent = KINGHUBMOBILE
          _100x100.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          _100x100.Position = Positions
          _100x100.Size = UDim2.new(0, 76, 0, 70)

          ImageButton.Parent = _100x100
          ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ImageButton.Size = Sizes
          ImageButton.Image = IMAGE
          ImageButton.MouseButton1Down:connect(function()
            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(true, "RightControl", false, game)

            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(false, "RightControl", false, game)
          end)

          local UILib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/%E7%89%B9%E5%88%AB%E7%9A%84ui.lua')))()
          local win = UILib:Window("LinniScriptcharge丨寻宝模拟器",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

          local tab = win:Tab("主要功能")

          tab:Button("自动挖宝箱GUI", function()
            local TresureBreakSimulator = Instance.new("ScreenGui")
            local BG = Instance.new("Frame")
            local Line = Instance.new("Frame")
            local ToolBoxBG = Instance.new("Frame")
            local ToolBox = Instance.new("TextBox")
            local AutoFarm = Instance.new("TextButton")
            local Top = Instance.new("TextLabel")

            --Toggle
            local Farm = false

            --ButtonToggle
            local Click1 = false

            TresureBreakSimulator.Name = "TresureBreakSimulator"
            TresureBreakSimulator.Parent = game.CoreGui
            TresureBreakSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BG.Name = "BG"
            BG.Parent = TresureBreakSimulator
            BG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
            BG.BackgroundTransparency = 0.20000000298023
            BG.BorderColor3 = Color3.new(0, 0, 0)
            BG.BorderSizePixel = 5
            BG.Position = UDim2.new(0.604587197, 0, 0.30796814, 0)
            BG.Size = UDim2.new(0, 250, 0, 150)
            BG.Active = true
            BG.Selectable = true
            BG.Draggable = true
            Line.Name = "Line"
            Line.Parent = BG
            Line.BackgroundColor3 = Color3.new(0, 0, 0)
            Line.BorderSizePixel = 0
            Line.Position = UDim2.new(0, 0, 0, 72)
            Line.Size = UDim2.new(0, 250, 0, 5)
            ToolBoxBG.Name = "ToolBoxBG"
            ToolBoxBG.Parent = BG
            ToolBoxBG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
            ToolBoxBG.BackgroundTransparency = 0.20000000298023
            ToolBoxBG.BorderColor3 = Color3.new(0, 0, 0)
            ToolBoxBG.BorderSizePixel = 5
            ToolBoxBG.Position = UDim2.new(0, 25, 1, 5)
            ToolBoxBG.Size = UDim2.new(0, 200, 0, 50)
            ToolBox.Name = "ToolBox"
            ToolBox.Parent = ToolBoxBG
            ToolBox.BackgroundColor3 = Color3.new(0.490196, 0.490196, 0.490196)
            ToolBox.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
            ToolBox.BorderSizePixel = 0
            ToolBox.Size = UDim2.new(0, 200, 0, 50)
            ToolBox.Font = Enum.Font.GothamBold
            ToolBox.PlaceholderColor3 = Color3.new(0, 0, 0)
            ToolBox.PlaceholderText = "工具名称"
            ToolBox.Text = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Name
            ToolBox.TextColor3 = Color3.new(0, 0, 0)
            ToolBox.TextSize = 35
            ToolBox.TextWrapped = true
            AutoFarm.Name = "AutoFarm"
            AutoFarm.Parent = BG
            AutoFarm.BackgroundColor3 = Color3.new(0.882353, 0.882353, 0.882353)
            AutoFarm.BorderColor3 = Color3.new(1, 0, 0)
            AutoFarm.BorderSizePixel = 5
            AutoFarm.Position = UDim2.new(0, 25, 0, 5)
            AutoFarm.Size = UDim2.new(0, 200, 0, 62)
            AutoFarm.Font = Enum.Font.GothamBold
            AutoFarm.Text = "自动挖宝箱"
            AutoFarm.TextColor3 = Color3.new(1, 0, 0)
            AutoFarm.TextScaled = true
            AutoFarm.TextSize = 14
            AutoFarm.TextWrapped = true
            AutoFarm.MouseButton1Click:Connect(function()
              if Click1 then
                Click1 = false
                Farm = false
                AutoFarm.TextColor3 = Color3.new(1,0,0)
                AutoFarm.BorderColor3 = Color3.new(1,0,0)
               else
                if game.Players.LocalPlayer.Character:FindFirstChild(ToolBox.Text) then
                  print('Already EquipTool')
                 else
                  game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[ToolBox.Text])
                end
                Click1 = true
                Farm = true
                AutoFarm.TextColor3 = Color3.new(0,1,0)
                AutoFarm.BorderColor3 = Color3.new(0,1,0)
              end
            end)

            Top.Name = "Top"
            Top.Parent = BG
            Top.Active = true
            Top.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
            Top.BorderColor3 = Color3.new(0, 0, 0)
            Top.BorderSizePixel = 5
            Top.Position = UDim2.new(0, 25, 0, -30)
            Top.Selectable = true
            Top.Size = UDim2.new(0, 200, 0, 25)
            Top.Font = Enum.Font.GothamBold
            Top.Text = "寻宝模拟器"
            Top.TextColor3 = Color3.new(0, 0, 0)
            Top.TextScaled = true
            Top.TextSize = 14
            Top.TextWrapped = true

            local Character = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)

            function Sell()
              local OldPos = Character.HumanoidRootPart.CFrame
              Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
              game.ReplicatedStorage.Events.AreaSell:FireServer()
              wait(0.1)
              Character.HumanoidRootPart.CFrame = OldPos
            end

            local function RE()
              while true do
                wait(1)
                if Rebirth == true then
                  local a = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text:gsub(',','')
                  local b = game.Players.LocalPlayer.PlayerGui.Gui.Rebirth.Needed.Coins.Amount.Text:gsub(',','')
                  print(tonumber(a))
                  print(tonumber(b))
                  if tonumber(a) > tonumber(b) then
                    warn('Calculation Complete!')
                    game.ReplicatedStorage.Events.Rebirth:FireServer()
                    ToolBox.Text = "Bucket"
                    repeat wait(.1) until game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible == true
                    game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible = false
                    wait()
                  end
                end
              end
            end
            spawn(RE)
            while true do
              wait()
              if Farm then
                local Sand = nil
                local SandName = ""
                for i,v in pairs (game.Workspace.SandBlocks:GetChildren()) do
                  if not Farm then
                    Sell()
                    break
                  end
                  if v:FindFirstChild("Chest") then
                    if v.CFrame.X > -40 and v.CFrame.X < 20 and v.CFrame.Z < -175 and v.CFrame.Z > -235 then
                      local Next = false
                      if v == nil then
                        Next = false
                       else
                        Next = true
                        Sand = v
                        SandName = v.Name
                      end
                      if Next == true then
                        local Success,Problem = pcall(function()
                          if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
                          Sand.CanCollide = false
                          local Coins = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text
                          repeat
                            if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
                            if not Farm then
                              wait(.1)
Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
                              wait(1)
                              break
                            end
               Character.HumanoidRootPart.Anchored = true
                            wait()
      Character.HumanoidRootPart.CFrame = Sand.CFrame
                            wait()
            Character.HumanoidRootPart.Anchored = false
                            Character:WaitForChild(ToolBox.Text)['RemoteClick']:FireServer(game.Workspace.SandBlocks[SandName])
                            wait()
                          until game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text ~= Coins
                          Next = false
                        end)
                        if Success then
                          print('Worked')
                         else
                          warn(Problem)
                        end
                      end
                    end
                  end
                end
              end
            end
          end)
   tab:Toggle("自动重生", false, function(state)
            getgenv().cheat_settings.autorebirth = state
          end)
 tab:Toggle("自动售卖", false, function(state)
            getgenv().cheat_settings.autosell = state
          end)
   tab:Toggle("自动购买铲子", false, function(state)
            getgenv().cheat_settings.autobuyshovels = state
          end)
  tab:Toggle("自动购买宠物", false, function(state)
            getgenv().cheat_settings.autobuypets = state
          end)
 tab:Toggle("自动购买背包", false, function(state)
            getgenv().cheat_settings.autobuypets = state
          end)
   tab:Toggle("自动购买板条箱", false, function(state)
            getgenv().cheat_settings.autobuycrates = state
          end)
          spawnThread(function()
            while wait() do
              while getgenv().cheat_settings.autorebirth do
                rebirth()
                wait(1)
              end
            end
          end)
          spawnThread(function()
            while wait() do
              while getgenv().cheat_settings.autobuycrates do
                for k,v in pairs(getgenv().cheat_vars.chosen_autobuycrate) do
                  if v == true then
         buyCrate(k, getgenv().player_data["player"].Name, 1)
                  end
                end
                wait(0.5)
              end
            end
          end)
        end)
 linni:Button("King自动",function()
          local TresureBreakSimulator = Instance.new("ScreenGui")
          local BG = Instance.new("Frame")
          local Line = Instance.new("Frame")
          local ToolBoxBG = Instance.new("Frame")
          local ToolBox = Instance.new("TextBox")
          local AutoFarm = Instance.new("TextButton")
          local AutoRebirth = Instance.new("TextButton")
          local Top = Instance.new("TextLabel")
          local Farm = false
          local Rebirth = false
          local Click1 = false
          local Click2 = false
          TresureBreakSimulator.Name = "TresureBreakSimulator"
          TresureBreakSimulator.Parent = game.CoreGui
          TresureBreakSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
          BG.Name = "BG"
          BG.Parent = TresureBreakSimulator
     BG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
          BG.BackgroundTransparency = 0.20000000298023
          BG.BorderColor3 = Color3.new(0, 0, 0)
          BG.BorderSizePixel = 5
          BG.Position = UDim2.new(0.604587197, 0, 0.30796814, 0)
          BG.Size = UDim2.new(0, 250, 0, 150)
          BG.Active = true
          BG.Selectable = true
          BG.Draggable = true
          Line.Name = "Line"
          Line.Parent = BG
          Line.BackgroundColor3 = Color3.new(0, 0, 0)
          Line.BorderSizePixel = 0
          Line.Position = UDim2.new(0, 0, 0, 72)
          Line.Size = UDim2.new(0, 250, 0, 5)
          ToolBoxBG.Name = "ToolBoxBG"
          ToolBoxBG.Parent = BG
          ToolBoxBG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
          ToolBoxBG.BackgroundTransparency = 0.20000000298023
          ToolBoxBG.BorderColor3 = Color3.new(0, 0, 0)
          ToolBoxBG.BorderSizePixel = 5
          ToolBoxBG.Position = UDim2.new(0, 25, 1, 5)
          ToolBoxBG.Size = UDim2.new(0, 200, 0, 50)
          ToolBox.Name = "ToolBox"
          ToolBox.Parent = ToolBoxBG
          ToolBox.BackgroundColor3 = Color3.new(0.490196, 0.490196, 0.490196)
          ToolBox.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
          ToolBox.BorderSizePixel = 0
          ToolBox.Size = UDim2.new(0, 200, 0, 50)
          ToolBox.Font = Enum.Font.GothamBold
          ToolBox.PlaceholderColor3 = Color3.new(0, 0, 0)
          ToolBox.PlaceholderText = "工具名称"
          ToolBox.Text = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Name
          ToolBox.TextColor3 = Color3.new(0, 0, 0)
          ToolBox.TextSize = 35
          ToolBox.TextWrapped = true
          AutoFarm.Name = "AutoFarm"
          AutoFarm.Parent = BG
          AutoFarm.BackgroundColor3 = Color3.new(0.882353, 0.882353, 0.882353)
          AutoFarm.BorderColor3 = Color3.new(1, 0, 0)
          AutoFarm.BorderSizePixel = 5
          AutoFarm.Position = UDim2.new(0, 25, 0, 5)
          AutoFarm.Size = UDim2.new(0, 200, 0, 62)
          AutoFarm.Font = Enum.Font.GothamBold
          AutoFarm.Text = "自动农场"
          AutoFarm.TextColor3 = Color3.new(1, 0, 0)
          AutoFarm.TextScaled = true
          AutoFarm.TextSize = 14
          AutoFarm.TextWrapped = true
          AutoFarm.MouseButton1Click:Connect(function()
            if Click1 then
              Click1 = false
              Farm = false
              AutoFarm.TextColor3 = Color3.new(1,0,0)
              AutoFarm.BorderColor3 = Color3.new(1,0,0)
             else
              if game.Players.LocalPlayer.Character:FindFirstChild(ToolBox.Text) then
                print('Already EquipTool')
               else
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[ToolBox.Text])
              end
              Click1 = true
              Farm = true
              AutoFarm.TextColor3 = Color3.new(0,1,0)
              AutoFarm.BorderColor3 = Color3.new(0,1,0)
            end
          end)
          AutoRebirth.Name = "AutoRebirth"
          AutoRebirth.Parent = BG
          AutoRebirth.BackgroundColor3 = Color3.new(0.882353, 0.882353, 0.882353)
          AutoRebirth.BorderColor3 = Color3.new(1, 0, 0)
          AutoRebirth.BorderSizePixel = 5
          AutoRebirth.Position = UDim2.new(0, 25, 0, 82)
          AutoRebirth.Size = UDim2.new(0, 200, 0, 62)
          AutoRebirth.Font = Enum.Font.GothamBold
          AutoRebirth.Text = "自动重生"
          AutoRebirth.TextColor3 = Color3.new(1, 0, 0)
          AutoRebirth.TextScaled = true
          AutoRebirth.TextSize = 14
          AutoRebirth.TextWrapped = true
          AutoRebirth.MouseButton1Click:Connect(function()
            if Click1 then
              Click1 = false
              Rebirth = false
              AutoRebirth.TextColor3 = Color3.new(1,0,0)
              AutoRebirth.BorderColor3 = Color3.new(1,0,0)
             else
              Click1 = true
              Rebirth = true
              AutoRebirth.TextColor3 = Color3.new(0,1,0)
              AutoRebirth.BorderColor3 = Color3.new(0,1,0)
            end
          end)
          Top.Name = "Top"
          Top.Parent = BG
          Top.Active = true
          Top.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
          Top.BorderColor3 = Color3.new(0, 0, 0)
          Top.BorderSizePixel = 5
          Top.Position = UDim2.new(0, 25, 0, -30)
          Top.Selectable = true
          Top.Size = UDim2.new(0, 200, 0, 25)
          Top.Font = Enum.Font.GothamBold
          Top.Text = "寻宝模拟器"
          Top.TextColor3 = Color3.new(0, 0, 0)
          Top.TextScaled = true
          Top.TextSize = 14
          Top.TextWrapped = true

          local Character = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)

          function Sell()
            local OldPos = Character.HumanoidRootPart.CFrame
            Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
            game.ReplicatedStorage.Events.AreaSell:FireServer()
            wait(0.1)
            Character.HumanoidRootPart.CFrame = OldPos
          end

          local function RE()
            while true do
              wait(1)
              if Rebirth == true then
                local a = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text:gsub(',','')
                local b = game.Players.LocalPlayer.PlayerGui.Gui.Rebirth.Needed.Coins.Amount.Text:gsub(',','')
                print(tonumber(a))
                print(tonumber(b))
                if tonumber(a) > tonumber(b) then
                  warn('Calculation Complete!')
                  game.ReplicatedStorage.Events.Rebirth:FireServer()
                  ToolBox.Text = "Bucket"
                  repeat wait(.1) until game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible == true
                  game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible = false
                  wait()
                end
              end
            end
          end
          spawn(RE)
          while true do
            wait()
            if Farm then
              local Sand = nil
              local SandName = ""
              for i,v in pairs (game.Workspace.SandBlocks:GetChildren()) do
                if not Farm then
                  Sell()
                  break
                end
                if v:FindFirstChild("Chest") then
                  if v.CFrame.X > -40 and v.CFrame.X < 20 and v.CFrame.Z < -175 and v.CFrame.Z > -235 then
                    local Next = false
                    if v == nil then
                      Next = false
                     else
                      Next = true
                      Sand = v
                      SandName = v.Name
                    end
                    if Next == true then
                      local Success,Problem = pcall(function()
                        if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
                        Sand.CanCollide = false
                        local Coins = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text
                        repeat
                          if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
                          if not Farm then
                            wait(.1)
Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
                            wait(1)
                            break
                          end
             Character.HumanoidRootPart.Anchored = true
                          wait()
       Character.HumanoidRootPart.CFrame = Sand.CFrame
                          wait()
          Character.HumanoidRootPart.Anchored = false
Character:WaitForChild(ToolBox.Text)['RemoteClick']:FireServer(game.Workspace.SandBlocks[SandName])
                          wait()
until game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text ~= Coins
                        Next = false
                      end)
                      if Success then
                        print('Worked')
                       else
                        warn(Problem)
                      end
                    end
                  end
                end
              end
            end
          end
        end)
        linni:Button("寻宝模拟器『King汉化』",function()
          loadstring(game:HttpGet("https://shz.al/~MKS"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("拳击模拟器",'17015137366')
        local linni = lin:section("King",true)
        linni:Button("King自制",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/amuYYVHN"))()
        end)
        linni:Button("拳击模拟器（名字相同脚本不同）",function()
          loadstring(game:HttpGet("https://pastefy.app/T4O1SA3q/raw"))()
        end)
        linni:Button("拳击模拟器（名字相同脚本不同）",function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua'))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("伐木大亨/木材",'17015137366')
        local linni = lin:section("King",true)
        linni:Button("King木材",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/linni.Lumber.txt"))()
        end)
        linni:Button("King伐木大亨2",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/njFwXjGM"))()
        end)
        linni:Button("King伐木大亨4",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/yPraK0rm"))()
        end)
        linni:Button("伐木大亨（听说最强）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
        end)
        linni:Button("想白的老外脚本",function()
          loadstring(game:HttpGet('https://getexploits.com/key-system/',true))('https://da.com/936657404291084298/1006220505583460352/Script.txt')
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("最强战场",'17015137366')
        local linni = lin:section("King",true)
        linni:Button("最强战场能用且不需要密钥",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua"))()
        end)
        linni:Button("最近更新的",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
        end)
        linni:Button("多功能",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
        end)
        local linni = lin:section("『需要密钥脚本』",true)
        linni:Button("需要密钥自己加dc",function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/DrakainnnDL/Script/main/TheStrongestBattle'))()
        end)
        linni:Button("点击我复制dc",function()
          setclipboard("https://discord.gg/Mbh9NRd8")
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

  local lin = window:Tab("奎尔湖",'17015137366')
   local linni = lin:section("King",true)
  linni:Button("King-奎尔湖",function()
   local IMAGE = "rbxassetid://17345436140"
          local Positions = UDim2.new(0.822025776, 0, 0.0401606411, 0)
          local Sizes = UDim2.new(0, 76, 0, 70)

          local KINGHUBMOBILE = Instance.new("ScreenGui")
          local _100x100 = Instance.new("Frame")
          local ImageButton = Instance.new("ImageButton")

          KINGHUBMOBILE.Name = "LinniScriptcharge"
          KINGHUBMOBILE.Parent = game:WaitForChild("CoreGui")
          KINGHUBMOBILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

          _100x100.Name = "100x100"
          _100x100.Parent = KINGHUBMOBILE
          _100x100.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          _100x100.Position = Positions
          _100x100.Size = UDim2.new(0, 76, 0, 70)

          ImageButton.Parent = _100x100
          ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ImageButton.Size = Sizes
          ImageButton.Image = IMAGE
          ImageButton.MouseButton1Down:connect(function()
            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(true, "RightControl", false, game)

            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(false, "RightControl", false, game)
          end)

          local UILib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/%E7%89%B9%E5%88%AB%E7%9A%84ui.lua')))()
          local win = UILib:Window("LinniScriptcharge丨奎尔湖",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)
          local tab = win:Tab("主要功能")

          tab:Toggle("无敌模式", false, function(Value)
            game.ReplicatedStorage.DamageHumanoid:FireServer(-2e9)
          end)
          tab:Button("无限金钱", function()
            local money = {
              [1] = -9999,
              [2] = "Buy"
            }

            game:GetService("ReplicatedStorage").Pay:FireServer(unpack(money))
          end)
          tab:Button("无限金币", function()
            local gold = {
              [1] = game:GetService("Players").LocalPlayer.GoldCoins,
              [2] = 99999
            }

            game:GetService("ReplicatedStorage").ChangeValue:FireServer(unpack(gold))
          end)

          tab:Button("给所有物品", function()
            game.ReplicatedStorage.GiveTool:FireServer("SeaScooter")
            game.ReplicatedStorage.GiveTool:FireServer("Lantern")
            game.ReplicatedStorage.GiveTool:FireServer("Compass")
            game.ReplicatedStorage.GiveTool:FireServer("ItemFinder")
            game.ReplicatedStorage.GiveTool:FireServer("Aquabreather")
          end)

          tab:Button("红色套装", function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("FireSuit")
          end)

          tab:Button("黄色套装", function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("HazmatSuit")
          end)

          tab:Button("海盗套装", function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("PirateCostume")
          end)

          tab:Button("动力套装", function()
            game.ReplicatedStorage.ChangeOutfits:FireServer("SuperScuba")
          end)

        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)
    local lin = window:Tab("格林维尔",'17015137366')
    local linni = lin:section("King",true)
        linni:Button("King-格林维尔",function()
          LocalPlayer = game:GetService("Players").LocalPlayer
          Camera = workspace.CurrentCamera
          RunService = game:GetService("RunService")
          VirtualUser = game:GetService("VirtualUser")
          MarketplaceService = game:GetService("MarketplaceService")

          function GetCurrentVehicle()
            return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.SeatPart and LocalPlayer.Character.Humanoid.SeatPart.Parent
          end
          MT = getrawmetatable(game)
          Old_Index = MT.__index
          setreadonly(MT, false)
          MT.__index = newcclosure(function(self, K)
            if self:IsA("Sound") and self:IsDescendantOf(workspace.SessionVehicles) and AntiSkidMarkSounds then
              self:Stop()
              return
            end
            return Old_Index(self, K)
          end)
          setreadonly(MT, true)
          function TP(cframe)
            GetCurrentVehicle():SetPrimaryPartCFrame(cframe)
          end
          function VelocityTP(cframe)
            TeleportSpeed = 500
            Car = GetCurrentVehicle()
            for I,V in pairs(GetCurrentVehicle():GetDescendants()) do
              if V:IsA("BodyGyro") then
                V:Destroy()
              end
            end
            local BodyGyro = Instance.new("BodyGyro", Car.PrimaryPart)
            BodyGyro.P = 5000
            BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BodyGyro.CFrame = Car.PrimaryPart.CFrame
            local BodyVelocity = Instance.new("BodyVelocity", Car.PrimaryPart)
            BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            BodyVelocity.Velocity = CFrame.new(Car.PrimaryPart.Position, cframe.p).LookVector * TeleportSpeed
            wait((Car.PrimaryPart.Position - cframe.p).Magnitude / TeleportSpeed)
            BodyVelocity.Velocity = Vector3.new()
            wait(0.1)
            BodyVelocity:Destroy()
            BodyGyro:Destroy()
          end

          --Auto Farm
          StartPosition = CFrame.new(Vector3.new(-1818, -79, -10685), Vector3.new(-880, -79, -10769))
          EndPosition = CFrame.new(Vector3.new(-965, -79, -10761), Vector3.new(-880, -79, -10769))
          AutoFarmFunc = coroutine.create(function()
            while wait() do
              if not AutoFarm then
                AutoFarmRunning = false
                coroutine.yield()
              end
              AutoFarmRunning = true
              pcall(function()
                if not GetCurrentVehicle() and tick() - (LastNotif or 0) > 5 then
                  LastNotif = tick()
                  SendNotification("Aloha Scripts", "Please Enter A Vehicle!")
                 else
                  TP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                  VelocityTP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                  TP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                  VelocityTP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 1, 0)))
                end
              end)
            end
          end)

          local ULlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/libUI.txt"))()

          local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/libUI.lua"))()
          local OpenUI = Instance.new("ScreenGui")
          local ImageButton = Instance.new("ImageButton")
          local UICorner = Instance.new("UICorner")
          OpenUI.Name = "OpenUI"
          OpenUI.Parent = game.CoreGui
          OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
          ImageButton.Parent = OpenUI
          ImageButton.BackgroundColor3 = Color3.fromRGB(5, 6, 7)
          ImageButton.BackgroundTransparency = 0.500
          ImageButton.Position = UDim2.new(0.0235790554, 0, 0.466334164, 0)
          ImageButton.Size = UDim2.new(0, 50, 0, 50)
          ImageButton.Image = "rbxassetid://17345436140"
          ImageButton.Draggable = true
          UICorner.CornerRadius = UDim.new(0, 200)
          UICorner.Parent = ImageButton
          ImageButton.MouseButton1Click:Connect(function()
            if uihide == false then
              uihide = true
              game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
             else
              uihide = false
              game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 319),"Out","Quad",0.4,true)
            end

          end)

          uihide = false

          local win = ULlib:Window("格林维尔",Color3.fromRGB(0, 255, 0), Enum.KeyCode.E) -- your own keybind

          local tab = win:Tab("主要功能")

          tab:Toggle("自动驾驶", false, function(value)
            AutoFarm = value
            if value and not AutoFarmRunning then
              coroutine.resume(AutoFarmFunc)
            end
          end)

          tab:Toggle("触摸地面", false, function(value)
            TouchTheRoad = value
          end)

        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("恐怖奶奶",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("恐怖奶奶",function()
          loadstring(game:HttpGet("https://pastefy.app/o688Jvmn/raw"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("奶酪逃亡",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King奶酪逃亡",function()
          local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/libUI.lua"))()
          local OpenUI = Instance.new("ScreenGui")
          local ImageButton = Instance.new("ImageButton")
          local UICorner = Instance.new("UICorner")
          OpenUI.Name = "OpenUI"
          OpenUI.Parent = game.CoreGui
          OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
          ImageButton.Parent = OpenUI
          ImageButton.BackgroundColor3 = Color3.fromRGB(5, 6, 7)
          ImageButton.BackgroundTransparency = 0.500
          ImageButton.Position = UDim2.new(0.0235790554, 0, 0.466334164, 0)
          ImageButton.Size = UDim2.new(0, 50, 0, 50)
          ImageButton.Image = "rbxassetid://17015137366"
          ImageButton.Draggable = true
          UICorner.CornerRadius = UDim.new(0, 200)
          UICorner.Parent = ImageButton
          ImageButton.MouseButton1Click:Connect(function()
            if uihide == false then
              uihide = true
              game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
             else
              uihide = false
              game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 319),"Out","Quad",0.4,true)
            end

          end)

          uihide = false

          local win = ULlib:Window("King-奶酪逃脱",Color3.fromRGB(0, 255, 0), Enum.KeyCode.E) -- your own keybind

          local tab = win:Tab("主要功能")

          tab:Button("获取所有奶酪", function()
            for _, v in pairs (game.Workspace.FindCheese:GetDescendants())do
              if v.Name == 'Cheese' then
                fireclickdetector(v.ClickDetector)
              end
            end
          end)

          tab:Button("打开所有门", function()
            local toggle = off
            wait()
            toggle = on
            repeat wait()
              fireclickdetector(game.Workspace.Cheese.ClickDetector)
            until toggle
          end)

          tab:Label("锁门密码: 3842", function()
          end)

          tab:Button("出生点", function()
            game.Players.LocalPlayer.Character:MoveTo(game.Workspace.SpawnLocation.Position)
          end)

          tab:Button("安全区", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-73.6963, 4.2, -109.536))
          end)

          tab:Button("奶酪1", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-264.393, 4.19329, -56.25))
          end)

          tab:Button("奶酪2", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-275.163, 4.19329, -149.3))
          end)

          tab:Button("奶酪3", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-271.628, 4.19329, -33.53))
          end)

          tab:Button("安全区", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-272.487, 48.5, -150.641))
          end)

          tab:Button("奶酪4", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-205.069, 4.19329, -180.7))
          end)

          tab:Button("跑酷", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-25.2942, 100.5, -1037.5))
          end)

          tab:Button("离开", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-24.3932, 5, 24.3302))
          end)

          tab:Button("锁定区域", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-220.522, 4, -452.123))
          end)

          tab:Button("地下室", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-88.9135, 4, -451.278))
          end)

          tab:Button("终点", function()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1758.41, 57, -137.61))
          end)
        end)

        local lin = window:Tab("钓鱼模拟器",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("King钓鱼模拟器点击我开启",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/HSsNwjA9"))()
        end)
        linni:Button("钓鱼模拟器（1英文）",function()
          loadstring(game:HttpGet("https://shz.al/~LNINIGGDHH"))()
        end)
        linni:Button("钓鱼模拟器（2英文）",function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/reddythedev/Reddy-Hub/main/_Loader'))()
        end)
        linni:Button("钓鱼模拟器（3英文）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/bebedi15/SRM-Scripts/main/Bebedi9960/SRMHub"))()
        end)
        linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

   local lin = window:Tab("旗帜战争",'17015137366')
 local linni = lin:section("King",true)
        linni:Button("旗帜战争（名字相同脚本不同）",function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Flag%20Wars.txt'))()
        end)
        linni:Button("King旗帜战争点击我开启",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/y5b8x7sG"))()
        end)

  local lin = window:Tab("法宝模拟器",'17015137366')
 local linni = lin:section("King",true)
        linni:Button("King自制法宝点击我开启",function()
          loadstring(game:HttpGet("https://pastebin.com/raw/QGRwDkxg"))()
        end)
 linni:Button("法宝模拟器",function()
          loadstring(game:HttpGet("https://pastefy.app/9bGpv4H3/raw"))()
        end)
 linni:Button("法宝模拟器（汉化）",function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/zhanghuihuihuil/Script/main/%E6%B3%95%E5%AE%9D%E6%A8%A1%E6%8B%9F%E5%99%A8%E6%B1%89%E5%8C%96'))()
        end)
  linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)

 local lin = window:Tab("急速奔驰",'17015137366')
 local linni = lin:section("King",true)
  linni:Button("King急速奔驰点击我开启",function()
          local IMAGE = "rbxassetid://17345436140"
          local Positions = UDim2.new(0.822025776, 0, 0.0401606411, 0)
          local Sizes = UDim2.new(0, 76, 0, 70)

          local KINGHUBMOBILE = Instance.new("ScreenGui")
          local _100x100 = Instance.new("Frame")
          local ImageButton = Instance.new("ImageButton")

          KINGHUBMOBILE.Name = "LinniScriptcharge"
          KINGHUBMOBILE.Parent = game:WaitForChild("CoreGui")
          KINGHUBMOBILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

          _100x100.Name = "100x100"
          _100x100.Parent = KINGHUBMOBILE
          _100x100.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          _100x100.Position = Positions
          _100x100.Size = UDim2.new(0, 76, 0, 70)

          ImageButton.Parent = _100x100
          ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ImageButton.Size = Sizes
          ImageButton.Image = IMAGE
          ImageButton.MouseButton1Down:connect(function()
            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(true, "RightControl", false, game)

            local vim = game:service("VirtualInputManager")
            vim:SendKeyEvent(false, "RightControl", false, game)
          end)

local UILib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/%E7%89%B9%E5%88%AB%E7%9A%84ui.lua')))()
local win = UILib:Window("LinniScriptcharge / 急速奔驰",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)
local tab = win:Tab("主要功能")

          tab:Toggle("自动跳过1", false, function(bool)
            getgenv().AutoFarmMainFast = bool

            while getgenv().AutoFarmMainFast do

              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)
              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)
              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)

              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)

              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.07)
              local args = {
                [1] = 0
              }

              game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))

              wait(0.1)

              local args = {
                [1] = 0
              }

              game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))

              wait(0.1)
              local args = {
                [1] = 0
              }

              game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
              wait(1)

            end
          end)

          tab:Toggle("自动跳过2", false, function(bool)
            getgenv().AutoFarmMainSlow = bool

            while getgenv().AutoFarmMainSlow do

              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)
              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)
              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)

              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)

              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)



              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)


              local args = {
                [1] = 0.1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
              }

              game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
              wait(0.25)
              local args = {
                [1] = 0
              }

              game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))

              wait(0.3)

              local args = {
                [1] = 0
              }

              game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))

              wait(0.3)
              local args = {
                [1] = 0
              }

              game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
              wait(2.5)

            end
          end)

          tab:Button("获取速度线圈", function()
            local copy = game:GetService("ReplicatedStorage")["Speed Coil"]:Clone()
            copy.Parent = game:GetService("Players").LocalPlayer.Backpack
          end)
end)
linni:Button("剑客脚本",function()
   jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)

local lin = window:Tab("射击光束模拟器",'17015137366')
local linni = lin:section("King",true)
linni:Button("King自制射击光束模拟器",function()
    loadstring(game:HttpGet("https://shz.al/~LinNiSJGS/射击光束模拟器.lua"))()
end)
linni:Button("剑客脚本",function()
     jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)

local lin = window:Tab("合并滴管",'17015137366')
local linni = lin:section("King",true)
   linni:Button("King自制合并滴管",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/AfFDTGgd"))()
end)
linni:Button("剑客脚本",function()
       jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
end)

local lin = window:Tab("动感星期五",'17015137366')
local linni = lin:section("King",true)
linni:Button("动感星期五（Auto Click）",function()
          loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
end)
linni:Button("动感星期五（自动PK）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)
linni:Button("动感星期五",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"))()
        end)
linni:Button("剑客脚本",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("活过杀手",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("活过杀手（垃圾）",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
        end)
        linni:Button("剑客脚本（里面的通用）",function()
          jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))()
        end)

        local lin = window:Tab("起床战争",'17015137366')

        local linni = lin:section("King",true)
        linni:Button("起床vape",function()
          if getgenv and not getgenv().shared then getgenv().shared = {} end
          local errorPopupShown = false
          local setidentity = syn and syn.set_thread_identity or set_thread_identity or setidentity or setthreadidentity or function() end
          local getidentity = syn and syn.get_thread_identity or get_thread_identity or getidentity or getthreadidentity or function() return 8 end
          local isfile = isfile or function(file)
            local suc, res = pcall(function() return readfile(file) end)
            return suc and res ~= nil
          end
          local delfile = delfile or function(file) writefile(file, "") end

          local function displayErrorPopup(text, func)
            local oldidentity = getidentity()
            setidentity(8)
            local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
            local prompt = ErrorPrompt.new("Default")
            prompt._hideErrorCode = true
            local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
            prompt:setErrorTitle("Vape")
            prompt:updateButtons({{
                Text = "OK",
                Callback = function()
                  prompt:_close()
                  if func then func() end
                end,
                Primary = true
              }}, 'Default')
            prompt:setParent(gui)
            prompt:_open(text)
            setidentity(oldidentity)
          end

          local function vapeGithubRequest(scripturl)
            if not isfile("vape/"..scripturl) then
              local suc, res
              task.delay(15, function()
                if not res and not errorPopupShown then
                  errorPopupShown = true
                  displayErrorPopup("The connection to github is taking a while, Please be patient.")
                end
              end)
              suc, res = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/"..readfile("vape/commithash.txt").."/"..scripturl, true) end)
              if not suc or res == "404: Not Found" then
                displayErrorPopup("Failed to connect to github : vape/"..scripturl.." : "..res)
                error(res)
              end
              if scripturl:find(".lua") then res = "--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.\n"..res end
              writefile("vape/"..scripturl, res)
            end
            return readfile("vape/"..scripturl)
          end

          if not shared.VapeDeveloper then
            local commit = "main"
            for i,v in pairs(game:HttpGet("https://github.com/7GrandDadPGN/VapeV4ForRoblox"):split("\n")) do
              if v:find("commit") and v:find("fragment") then
                local str = v:split("/")[5]
                commit = str:sub(0, str:find('"') - 1)
                break
              end
            end
            if commit then
              if isfolder("vape") then
                if ((not isfile("vape/commithash.txt")) or (readfile("vape/commithash.txt") ~= commit or commit == "main")) then
                  for i,v in pairs({"vape/Universal.lua", "vape/MainScript.lua", "vape/GuiLibrary.lua"}) do
                    if isfile(v) and readfile(v):find("--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.") then
                      delfile(v)
                    end
                  end
                  if isfolder("vape/CustomModules") then
                    for i,v in pairs(listfiles("vape/CustomModules")) do
                      if isfile(v) and readfile(v):find("--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.") then
                        delfile(v)
                      end
                    end
                  end
                  if isfolder("vape/Libraries") then
                    for i,v in pairs(listfiles("vape/Libraries")) do
                      if isfile(v) and readfile(v):find("--This watermark is used to delete the file if its cached, remove it to make the file persist after commits.") then
                        delfile(v)
                      end
                    end
                  end
                  writefile("vape/commithash.txt", commit)
                end
               else
                makefolder("vape")
                writefile("vape/commithash.txt", commit)
              end
             else
              displayErrorPopup("Failed to connect to github, please try using a VPN.")
              error("Failed to connect to github, please try using a VPN.")
            end
          end

          return loadstring(vapeGithubRequest("MainScript.lua"))()
        end)
        linni:Button("起床战争",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/OWJBWKQLAISH/Inferno-X/main/inferno%20X%20V2"))()
        end)

local lin = window:Tab("RELEASE + EVENT The Heroes Simulator",'17015137366')

local linni = lin:section("King",true)
linni:Button("Demonic HUB V2脚本",function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Alan0947383/Demonic-HUB-V2/main/S-C-R-I-P-T.lua",true))()
end)

local lin = window:Tab("宠物99 ",'17015137366')
local linni = lin:section("King",true)
linni:Button("King自制",function()
          local SafeSpot = Instance.new("Part", workspace)

          SafeSpot.Position = Vector3.new(-1860.61,-399.9,927.21)

          SafeSpot.Name = "Vip"

          SafeSpot.Size = Vector3.new(0,0.1,0)

          SafeSpot.Anchored = true

          SafeSpot.Transparency = 1


          local SafeSpot = Instance.new("Part", workspace)

          SafeSpot.Position = Vector3.new(-1920.71,-399.9,929.66)

          SafeSpot.Name = "Laaabby"

          SafeSpot.Size = Vector3.new(0,0.1,0)

          SafeSpot.Anchored = true

          SafeSpot.Transparency = 1


          local SafeSpot = Instance.new("Part", workspace)

          SafeSpot.Position = Vector3.new(-0.81,1,-7.31)

          SafeSpot.Name = "Game"

          SafeSpot.Size = Vector3.new(0,0.1,0)

          SafeSpot.Anchored = true

          SafeSpot.Transparency = 1

          local Players = game:GetService("Players")
          local ReplicatedStorage = game:GetService("ReplicatedStorage")
          local VirtualUser = game:GetService("VirtualUser")

          local LocalPlayer = Players.LocalPlayer

          getgenv().Settings = {
            Win = false,
            Rebirth = false,
          }

          function getHash()
            for _, v in pairs(game:GetService("Workspace").PlayerTycoons:GetDescendants()) do
              if v:IsA("ObjectValue") and v.Name == "Owner" then
                if tostring(v.Value) == game.Players.LocalPlayer.Name then
                  return (v.Parent.Parent.Name)
                end
              end
            end
          end

          local Settings = {
            Names = false,
          }
          local RunService = game:GetService("RunService")
          local UserInputService = game:GetService("UserInputService")
          local Camera = game:GetService("Workspace").CurrentCamera
          local Players = game:GetService("Players")
          local Player = Players.LocalPlayer
          local Mouse = Player:GetMouse()

          local msg = Instance.new("Message",workspace)
          msg.Text = "欢迎使用King脚本！"
          wait(1.8)
          msg:Destroy()

          local msg = Instance.new("Message",workspace)
          msg.Text = "制作者:King"
          wait(1.8)
          msg:Destroy()

          local msg = Instance.new("Message",workspace)
          msg.Text = "当前宠物模拟器99"
          wait(3)
          msg:Destroy()

          local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LINNIWDGGG/lINni/main/OrionLib.UI"))()
          local Window = OrionLib:MakeWindow({Name = "King脚本", IntroIcon = "rbxassetid://11354741327", HidePremium = false, SaveConfig = true,IntroText = "King脚本", ConfigFolder = "King脚本"})

          local about = Window:MakeTab({
            Name = "公告",
            Icon = "rbxassetid://17015137366",
            PremiumOnly = false

          })
          about:AddParagraph("I got nothing to lose","不知不觉夏去秋来")
          about:AddParagraph("作者: King")
          about:AddParagraph("副作者: 红鲨")
          about:AddParagraph("制作者: King")

          local Tab = Window:MakeTab({
            Name = "宠物模拟器99",
            Icon = "rbxassetid://17015137366",
            PremiumOnly = false

          })
          Tab:AddToggle({
            Name = "自动收集",
            Default = false,
            Callback = function(state)
              _G.test = (state and true or false)
              while _G.test do
                wait()
                if workspace.__THINGS.Lootbags:FindFirstChildOfClass("Model") then
                  for i,v in pairs(workspace.__THINGS.Lootbags:GetChildren()) do
                    if v.ClassName == "Model" then
                      local test = v:FindFirstChildOfClass("MeshPart") or v:FindFirstChildOfClass("Part")
                      test.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                  end
                 elseif workspace.__THINGS.Orbs:FindFirstChildOfClass("Part") then
                  for i,v in pairs(workspace.__THINGS.Orbs:GetChildren()) do
                    if v.ClassName == "Part" then
                      v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                  end
                end
              end
            end
          })

          Tab:AddToggle({
            Name = "自动农场",
            Default = false,
            Callback = function(state)
              _G.test2 = (state and true or false)
              _G.range = 100
              while _G.test2 do
                task.wait()
                pcall(function()
                  for i,v in pairs(workspace.__THINGS.Breakables:GetChildren()) do
                    if v.ClassName == "Model" and game:GetService("Players").LocalPlayer:DistanceFromCharacter(v:GetChildren()[1].Position) < _G.range then
                      print(v.PrimaryPart)
                      game:GetService("ReplicatedStorage").Network.Breakables_PlayerDealDamage:FireServer(v.Name)
                      task.wait()
                    end
                  end
                end)
              end
            end
          })
          Tab:AddToggle({
            Name = "自动领取排名奖励",
            Default = false,
            Callback = function(state)
              _G.reward = (state and true or false)
              while _G.reward do
                wait()
                for i=1,32 do
                  game:GetService("ReplicatedStorage").Network.Ranks_ClaimReward:FireServer(i)
                  task.wait(0.1)
                end
              end
            end
          })
        end)
linni:Button("ZapHub The Best PS99 Script (Fast Version) ",function()
loadstring(game:HttpGet('https://www.zaphub.xyz/ExecPS99FV'))()
end)

local lin = window:Tab("超级联赛足球",'17015137366')
local linni = lin:section("老外的踢足球",true)
linni:Button("菜单",function()
          loadstring(game:HttpGet"https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/neo")()
end)
---------------分割线-------------------------------分割线-----------------------
  wait(1)
else
setclipboard("KingQQ新主群https://qm.qq.com/q/SU0hmhIvwk")
------分割----
game.Players.LocalPlayer:Kick("King Team Alert⚠:Not all links and text are copied.Execution Error❌")
end
