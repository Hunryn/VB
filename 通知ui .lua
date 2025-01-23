
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

-- 主题系统配置
local Themes = {
    Dark = {
        Background = Color3.fromRGB(12, 4, 20),
        Text = Color3.fromRGB(255, 255, 255),
        Shadow = Color3.fromRGB(26, 26, 26)
    },
    Red = {
        Background = Color3.fromRGB(150, 20, 20),
        Text = Color3.fromRGB(255, 230, 230),
        Shadow = Color3.fromRGB(80, 10, 10)
    }
}

-- 动画系统配置
local AnimationStyles = {
    Spring = {
        Style = Enum.EasingStyle.Elastic,
        Direction = Enum.EasingDirection.Out,
        Time = 1.2
    },
    Bounce = {
        Style = Enum.EasingStyle.Bounce,
        Direction = Enum.EasingDirection.Out,
        Time = 1.5
    },
    Default = {
        Style = Enum.EasingStyle.Sine,
        Direction = Enum.EasingDirection.Out,
        Time = 1
    }
}

-- UI容器初始化
local NotifGui = Instance.new("ScreenGui")
NotifGui.Name = "EnhancedNotif"
NotifGui.Parent = RunService:IsStudio() and Player.PlayerGui or game:GetService("CoreGui")

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.Position = UDim2.new(0, 20, 0.5, -20)
Container.Size = UDim2.new(0, 300, 0.5, 0)
Container.BackgroundTransparency = 1
Container.Parent = NotifGui

-- 通用组件生成器
local function Image(ID, isButton)
    local NewImage = Instance.new(isButton and "ImageButton" or "ImageLabel")
    NewImage.Image = ID
    NewImage.BackgroundTransparency = 1
    return NewImage
end

-- 动态圆角背景
local function Round2px(theme)
    local NewImage = Image("rbxassetid://5761488251")
    NewImage.ScaleType = Enum.ScaleType.Slice
    NewImage.SliceCenter = Rect.new(2, 2, 298, 298)
    NewImage.ImageColor3 = Themes[theme].Background
    NewImage.ImageTransparency = 0.14
    return NewImage
end

-- 动态阴影
local function Shadow2px(theme)
    local NewImage = Image("rbxassetid://5761498316")
    NewImage.ScaleType = Enum.ScaleType.Slice
    NewImage.SliceCenter = Rect.new(17, 17, 283, 283)
    NewImage.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30)
    NewImage.Position = -UDim2.fromOffset(15, 15)
    NewImage.ImageColor3 = Themes[theme].Shadow
    return NewImage
end

-- 文本标签生成器
local function CreateLabel(text, font, size, theme, isButton)
    local Label = Instance.new(isButton and "TextButton" or "TextLabel")
    Label.Text = text
    Label.Font = font
    Label.TextSize = size
    Label.BackgroundTransparency = 1
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.RichText = true
    Label.TextColor3 = Themes[theme].Text
    return Label
end

-- 通知管理核心
local Padding = 10
local DescriptionPadding = 10
local MaxWidth = 280
local ActiveNotifications = {}
local LastUpdate = tick()

-- 动画更新系统
local function UpdateNotifications()
    local deltaTime = tick() - LastUpdate
    local visibleHeight = 0
    
    for index, notification in ipairs(ActiveNotifications) do
        if notification.Visible then
            local targetPos = UDim2.new(0, 0, 0, visibleHeight + (index-1)*Padding)
            notification.Position = notification.Position:Lerp(
                targetPos,
                TweenService:GetValue(
                    math.min(deltaTime / notification.AnimTime, 1),
                    notification.AnimStyle,
                    notification.AnimDirection
                )
            )
            visibleHeight += notification.AbsoluteSize.Y
        end
    end
    LastUpdate = tick()
end

RunService:BindToRenderStep("NotificationUpdate", Enum.RenderPriority.First.Value, UpdateNotifications)

-- 渐隐效果
local function FadeOut(notification)
    local fadeInfo = TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
    TweenService:Create(notification, fadeInfo, {ImageTransparency = 1}):Play()
    for _, child in ipairs(notification:GetChildren()) do
        if child:IsA("GuiObject") then
            TweenService:Create(child, fadeInfo, {TextTransparency = 1}):Play()
        end
    end
    task.wait(0.3)
    notification:Destroy()
end

-- 通知创建主函数
return {
    Notify = function(properties)
        local config = {
            Title = properties.Title or "通知",
            Description = properties.Description or "",
            Duration = properties.Duration or 5,
            Theme = properties.Theme or "Dark",
            Icon = properties.Icon,
            Animation = properties.Animation or "Default",
            OnClick = properties.OnClick
        }

        -- 计算布局尺寸
        local textBounds = TextService:GetTextSize(
            config.Description,
            14,
            Enum.Font.Gotham,
            Vector2.new(MaxWidth, math.huge)
        )

        -- 创建通知主体
        local notification = Round2px(config.Theme)
        notification.Size = UDim2.new(0, 300, 0, textBounds.Y + (config.Title and 36 or 20))
        notification.Position = UDim2.new(-1, 20, 0, 0)
        notification.Parent = Container

        -- 添加阴影
        Shadow2px(config.Theme).Parent = notification

        -- 添加图标
        if config.Icon then
            local icon = Image(config.Icon)
            icon.Size = UDim2.fromOffset(24, 24)
            icon.Position = UDim2.fromOffset(8, 8)
            icon.Parent = notification
        end

        -- 标题文字
        if config.Title then
            local title = CreateLabel(config.Title, Enum.Font.GothamSemibold, 16, config.Theme)
            title.Size = UDim2.new(1, -40, 0, 24)
            title.Position = UDim2.new(0, config.Icon and 36 or 12, 0, 8)
            title.Parent = notification
        end

        -- 描述文字
        local description = CreateLabel(config.Description, Enum.Font.Gotham, 14, config.Theme)
        description.TextWrapped = true
        description.Size = UDim2.new(1, -20, 0, textBounds.Y)
        description.Position = UDim2.new(0, 12, 0, config.Title and 36 or 12)
        description.Parent = notification

        -- 点击交互
        if config.OnClick then
            notification.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    config.OnClick()
                    FadeOut(notification)
                end
            end)
        end

        -- 动画配置
        local animConfig = AnimationStyles[config.Animation]
        notification.AnimTime = animConfig.Time
        notification.AnimStyle = animConfig.Style
        notification.AnimDirection = animConfig.Direction

        -- 自动销毁
        table.insert(ActiveNotifications, notification)
        task.delay(config.Duration, function()
            FadeOut(notification)
            table.remove(ActiveNotifications, table.find(ActiveNotifications, notification))
        end)
    end
}
