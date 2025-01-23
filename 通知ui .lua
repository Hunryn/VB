local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local SoundService = game:GetService("SoundService")

local Player = game:GetService("Players").LocalPlayer

-- 全局配置项
local Config = {
    -- 背景配置
    BackgroundColor = Color3.fromRGB(20, 20, 40),
    BackgroundTransparency = 0.3,
    
    -- 音效配置
    SoundEffect = "rbxassetid://9046898034",
    
    -- 霓虹边框配置
    NeonColor = Color3.fromRGB(0, 255, 255),
    BorderAnimationSpeed = 1.5,
    
    -- 字体渐变配置
    GradientColors = {
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255))
    },
    
    -- 通用配置
    Padding = 10,
    TweenTime = 1,
    TweenStyle = Enum.EasingStyle.Sine,
    TweenDirection = Enum.EasingDirection.Out
}

-- UI初始化
local NotifGui = Instance.new("ScreenGui")
NotifGui.Name = "EnhancedNotif"
NotifGui.Parent = RunService:IsStudio() and Player.PlayerGui or game:GetService("CoreGui")

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.Position = UDim2.new(0, 20, 0.5, -20)
Container.Size = UDim2.new(0, 300, 0.5, 0)
Container.BackgroundTransparency = 1
Container.Parent = NotifGui

-- 图像组件工厂
local function Image(ID, Button)
    local NewImage = Instance.new(Button and "ImageButton" or "ImageLabel")
    NewImage.Image = ID
    NewImage.BackgroundTransparency = 1
    return NewImage
end

-- 带背景的圆角容器
local function RoundContainer()
    local container = Image("http://www.roblox.com/asset/?id=5761488251")
    container.ScaleType = Enum.ScaleType.Slice
    container.SliceCenter = Rect.new(2, 2, 298, 298)
    
    -- 背景层
    local bg = Instance.new("Frame")
    bg.Size = UDim2.fromScale(1, 1)
    bg.BackgroundColor3 = Config.BackgroundColor
    bg.BackgroundTransparency = Config.BackgroundTransparency
    bg.Parent = container
    
    -- 容器样式
    container.ImageColor3 = Config.BackgroundColor:Lerp(Color3.new(0,0,0), 0.3)
    container.ImageTransparency = Config.BackgroundTransparency
    return container
end

-- 动态霓虹边框
local function NeonBorder(parent)
    local border1 = Image("http://www.roblox.com/asset/?id=5761498316")
    border1.ScaleType = Enum.ScaleType.Slice
    border1.SliceCenter = Rect.new(17, 17, 283, 283)
    border1.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30)
    border1.Position = -UDim2.fromOffset(15, 15)
    border1.ImageColor3 = Config.NeonColor
    border1.ImageTransparency = 0.5
    
    local border2 = border1:Clone()
    border2.ImageColor3 = Config.NeonColor:Complement()
    
    -- 呼吸灯动画
    local function animate()
        while parent.Parent do
            TweenService:Create(border1, TweenInfo.new(Config.BorderAnimationSpeed), {
                ImageTransparency = 0.8
            }):Play()
            TweenService:Create(border2, TweenInfo.new(Config.BorderAnimationSpeed), {
                ImageTransparency = 0.3
            }):Play()
            task.wait(Config.BorderAnimationSpeed)
            TweenService:Create(border1, TweenInfo.new(Config.BorderAnimationSpeed), {
                ImageTransparency = 0.3
            }):Play()
            TweenService:Create(border2, TweenInfo.new(Config.BorderAnimationSpeed), {
                ImageTransparency = 0.8
            }):Play()
            task.wait(Config.BorderAnimationSpeed)
        end
    end
    
    border1.Parent = parent
    border2.Parent = parent
    coroutine.wrap(animate)()
end

-- 渐变文字组件
local function GradientLabel(text, font, size)
    local label = Instance.new("TextLabel")
    label.Text = text
    label.Font = font
    label.TextSize = size
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.RichText = true
    
    -- 渐变效果
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(Config.GradientColors)
    gradient.Rotation = 90
    gradient.Parent = label
    
    -- 动态渐变偏移
    coroutine.wrap(function()
        local offset = 0
        while label.Parent do
            gradient.Offset = Vector2.new(0, math.sin(offset) * 0.5 + 0.5)
            offset += 0.05
            task.wait(0.05)
        end
    end)()
    
    return label
end

-- 音效系统
local function PlaySound()
    local sound = Instance.new("Sound")
    sound.SoundId = Config.SoundEffect
    sound.Volume = 0.5
    sound.Parent = SoundService
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 3)
end

-- 核心逻辑
local InstructionObjects = {}
local LastTick = tick()

local function Update()
    local delta = tick() - LastTick
    local previous = {}
    
    for _, obj in pairs(InstructionObjects) do
        local label, progress, done = obj[1], obj[2], obj[3]
        
        if not done then
            progress = math.clamp(progress + delta/Config.TweenTime, 0, 1)
            obj[2] = progress
            if progress >= 1 then obj[3] = true end
        end
        
        local tweenValue = TweenService:GetValue(progress, Config.TweenStyle, Config.TweenDirection)
        local targetY = #previous * (Config.Padding + label.AbsoluteSize.Y)
        label.Position = label.Position:Lerp(UDim2.new(-1, 20, 0, targetY), tweenValue)
        table.insert(previous, label)
    end
    
    LastTick = tick()
end

RunService:BindToRenderStep("NotificationUpdate", Enum.RenderPriority.First.Value, Update)

return {
    Notify = function(properties)
        local title = properties.Title
        local desc = properties.Description
        local duration = properties.Duration or 5
        
        if title or desc then
            PlaySound()
            
            -- 计算内容高度
            local height = title and 26 or 0
            if desc then
                local textSize = TextService:GetTextSize(desc, 14, Enum.Font.Gotham, Vector2.new(280, math.huge))
                height += textSize.Y + 8
            end
            
            -- 创建容器
            local container = RoundContainer()
            container.Size = UDim2.new(1, 0, 0, height)
            container.Position = UDim2.new(-1, 20, 0, 0)
            container.Parent = Container
            
            -- 添加霓虹边框
            NeonBorder(container)
            
            -- 标题
            if title then
                local titleLabel = GradientLabel(title, Enum.Font.GothamSemibold, 14)
                titleLabel.Size = UDim2.new(1, -10, 0, 26)
                titleLabel.Position = UDim2.fromOffset(10, 0)
                titleLabel.Parent = container
            end
            
            -- 描述
            if desc then
                local descLabel = GradientLabel(desc, Enum.Font.Gotham, 14)
                descLabel.TextWrapped = true
                descLabel.Size = UDim2.new(1, -10, 1, title and -26 or 0)
                descLabel.Position = UDim2.fromOffset(10, title and 26 or 0)
                descLabel.TextYAlignment = title and Enum.TextYAlignment.Top or Enum.TextYAlignment.Center
                descLabel.Parent = container
            end
            
            -- 入场动画
            table.insert(InstructionObjects, {container, 0, false})
            
            -- 自动淡出
            coroutine.wrap(function()
                task.wait(duration)
                TweenService:Create(container, TweenInfo.new(0.5), {
                    ImageTransparency = 1,
                    BackgroundTransparency = 1
                }):Play()
                task.wait(0.5)
                container:Destroy()
            end)()
        end
    end
}
