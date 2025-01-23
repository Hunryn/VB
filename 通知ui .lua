-- 通知ui.lua
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
    ShadowIntensity = 0.14,
    
    -- 音效配置
    SoundEffect = "rbxassetid://9882371641",
    
    -- 霓虹边框配置
    NeonColor = Color3.fromRGB(0, 255, 255),
    BorderAnimationSpeed = 1.5,
    
    -- 字体渐变配置
    GradientColors = {
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255))
    },
    
    -- 动画配置
    Padding = 10,
    TweenTime = 1,
    TweenStyle = Enum.EasingStyle.Quint,
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

-- 高级背景容器
local function CreateBubble()
    local container = Image("http://www.roblox.com/asset/?id=5761488251")
    container.ScaleType = Enum.ScaleType.Slice
    container.SliceCenter = Rect.new(2, 2, 298, 298)
    
    -- 渐变背景层
    local bgGradient = Instance.new("UIGradient")
    bgGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Config.BackgroundColor),
        ColorSequenceKeypoint.new(1, Config.BackgroundColor:Lerp(Color3.new(0,0,0), 0.3))
    })
    bgGradient.Rotation = 90
    bgGradient.Parent = container
    
    -- 动态透明度
    container.ImageTransparency = Config.BackgroundTransparency
    return container
end

-- 霓虹光效系统
local function NeonEffect(parent)
    local border = Image("http://www.roblox.com/asset/?id=5761498316")
    border.ScaleType = Enum.ScaleType.Slice
    border.SliceCenter = Rect.new(17, 17, 283, 283)
    border.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30)
    border.Position = -UDim2.fromOffset(15, 15)
    border.ImageColor3 = Config.NeonColor
    border.ImageTransparency = 0.7
    
    -- 动态光效
    coroutine.wrap(function()
        local direction = 1
        while parent.Parent do
            local targetTrans = direction == 1 and 0.3 or 0.7
            TweenService:Create(border, TweenInfo.new(Config.BorderAnimationSpeed, Enum.EasingStyle.Sine), {
                ImageTransparency = targetTrans
            }):Play()
            task.wait(Config.BorderAnimationSpeed)
            direction = -direction
        end
    end)()
    
    return border
end

-- 高级文字组件
local function CreateText(content, isTitle)
    local label = Instance.new("TextLabel")
    label.Text = content
    label.Font = isTitle and Enum.Font.GothamSemibold or Enum.Font.Gotham
    label.TextSize = 14
    label.TextColor3 = Color3.new(1,1,1)
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.RichText = true
    
    -- 动态渐变
    local textGradient = Instance.new("UIGradient")
    textGradient.Color = ColorSequence.new(Config.GradientColors)
    textGradient.Rotation = 90
    textGradient.Enabled = true
    textGradient.Parent = label
    
    -- 渐变动画
    coroutine.wrap(function()
        local offset = 0
        while label.Parent do
            textGradient.Offset = Vector2.new(0, math.sin(offset)*0.3 + 0.5)
            offset += 0.02
            task.wait(0.05)
        end
    end)()
    
    return label
end

-- 音效系统
local function PlaySound()
    local sound = Instance.new("Sound")
    sound.SoundId = Config.SoundEffect
    sound.Volume = 0.3
    sound.Parent = SoundService
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 3)
end

-- 动画队列系统
local NotificationQueue = {}
local LastTick = tick()

local function UpdateNotifications()
    local delta = tick() - LastTick
    local activeHeight = 0
    
    for index, notification in ipairs(NotificationQueue) do
        local container = notification.container
        local progress = notification.progress
        
        if progress < 1 then
            progress = math.clamp(progress + delta/Config.TweenTime, 0, 1)
            notification.progress = progress
        end
        
        local tweenValue = TweenService:GetValue(progress, Config.TweenStyle, Config.TweenDirection)
        local targetY = activeHeight + (index-1)*Config.Padding
        container.Position = UDim2.new(-1,20,0,targetY):Lerp(UDim2.new(0,20,0,targetY), tweenValue)
        activeHeight += container.AbsoluteSize.Y
    end
    
    LastTick = tick()
end

RunService:BindToRenderStep("NotificationAnim", Enum.RenderPriority.First.Value, UpdateNotifications)

return {
    Notify = function(properties)
        local title = properties.Title or "通知"
        local desc = properties.Description
        local duration = properties.Duration or 5
        
        PlaySound()
        
        -- 创建容器
        local container = CreateBubble()
        container.Size = UDim2.new(1, 0, 0, 0)
        container.Parent = Container
        
        -- 添加霓虹边框
        NeonEffect(container)
        
        -- 构建内容
        local contentHeight = 0
        if title then
            local titleLabel = CreateText(title, true)
            titleLabel.Size = UDim2.new(1, -20, 0, 26)
            titleLabel.Position = UDim2.fromOffset(10, 5)
            titleLabel.Parent = container
            contentHeight += 31
        end
        
        if desc then
            local descLabel = CreateText(desc, false)
            descLabel.TextWrapped = true
            descLabel.Size = UDim2.new(1, -20, 0, 0)
            descLabel.Position = UDim2.fromOffset(10, contentHeight)
            descLabel.AutomaticSize = Enum.AutomaticSize.Y
            descLabel.Parent = container
            contentHeight += descLabel.TextBounds.Y + 5
        end
        
        -- 调整容器尺寸
        container.Size = UDim2.new(1, 0, 0, contentHeight + 10)
        
        -- 加入队列
        local notification = {
            container = container,
            progress = 0
        }
        table.insert(NotificationQueue, notification)
        
        -- 自动移除
        coroutine.wrap(function()
            task.wait(duration)
            TweenService:Create(container, TweenInfo.new(0.5), {
                ImageTransparency = 1,
                BackgroundTransparency = 1
            }):Play()
            task.wait(0.5)
            container:Destroy()
            table.remove(NotificationQueue, table.find(NotificationQueue, notification))
        end)()
    end
}
