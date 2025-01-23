-- 文件: 通知ui.lua
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local SoundService = game:GetService("SoundService")
local Players = game:GetService("Players")

-- 全局配置表
local Config = {
    DebugMode = false,
    SafeMode = true,

    -- 视觉设置
    BackgroundColor = Color3.fromRGB(20, 20, 40),
    BackgroundTransparency = 0.3,
    NeonColor = Color3.fromRGB(0, 255, 255),
    NeonTransparency = 0.2,

    -- 文字渐变
    TextGradient = {
        Colors = {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 255))
        },
        Speed = 0.05,
        Rotation = 45
    },

    -- 动画设置
    Animation = {
        EnterDuration = 0.8,
        ExitDuration = 0.5,
        EasingStyle = Enum.EasingStyle.Quint,
        Spacing = 15,
        RotationSpeed = 0.5  -- 新增旋转速度
    },

    -- 音效设置
    SoundEffects = {
        Show = "rbxassetid://9046898034",
        Hide = "rbxassetid://9046898035"
    }
}

-- 安全资源管理
local AssetManager = {
    Fallback = {
        ["rbxassetid://5761488251"] = "rbxassetid://3570695787",
        ["rbxassetid://5761498316"] = "rbxassetid://5553946656",
        default = "rbxassetid://3570695787"
    },
    LoadImage = function(id)
        if Config.SafeMode then
            local success = pcall(function()
                game:GetService("ContentProvider"):PreloadAsync({id})
            end)
            return success and id or (AssetManager.Fallback[id] or AssetManager.Fallback.default)
        end
        return id
    end
}

-- UI初始化
local Player = Players.LocalPlayer
local NotificationGui = Instance.new("ScreenGui")
NotificationGui.Name = "EnhancedNotifications"
NotificationGui.ResetOnSpawn = false
NotificationGui.Parent = RunService:IsStudio() and Player:WaitForChild("PlayerGui") or game:GetService("CoreGui")

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.Size = UDim2.new(0, 320, 0.5, 0)
Container.Position = UDim2.new(0, 20, 0.5, -20)
Container.BackgroundTransparency = 1
Container.Parent = NotificationGui

-- 通知队列管理
local activeNotifications = {}
local updateConnection = nil

local function UpdatePositions()
    local totalHeight = 0
    for i, notification in ipairs(activeNotifications) do
        local frameHeight = notification.frame.AbsoluteSize.Y
        notification.targetPosition = UDim2.new(0, 20, 0, totalHeight + (i-1)*Config.Animation.Spacing)
        totalHeight = totalHeight + frameHeight + Config.Animation.Spacing
    end
end

-- 渐变文本组件
local function CreateText(text, isTitle)
    local label = Instance.new("TextLabel")
    label.Text = text
    label.Font = isTitle and Enum.Font.GothamSemibold or Enum.Font.Gotham
    label.TextSize = 14
    label.TextColor3 = Color3.new(1,1,1)
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.RichText = true
    label.TextWrapped = true

    -- 三色渐变
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(Config.TextGradient.Colors)
    gradient.Rotation = Config.TextGradient.Rotation
    gradient.Parent = label

    -- 浮动动画
    task.spawn(function()
        local baseY = label.Position.Y.Offset
        while label.Parent do
            TweenService:Create(label, TweenInfo.new(1.5, Enum.EasingStyle.Sine), {
                Position = UDim2.new(label.Position.X.Scale, label.Position.X.Offset, 
                                 0, baseY + math.sin(os.clock()*3)*3)
            }):Play()
            task.wait(0.5)
        end
    end)

    return label
end

-- 通知容器创建
local function CreateNotificationFrame(options)
    local container = Instance.new("ImageLabel")
    container.Image = AssetManager.LoadImage("rbxassetid://5761488251")
    container.ScaleType = Enum.ScaleType.Slice
    container.SliceCenter = Rect.new(2, 2, 298, 298)
    container.BackgroundTransparency = 1
    container.Size = UDim2.new(1, 0, 0, 0)

    -- 背景层
    local bg = Instance.new("Frame")
    bg.Size = UDim2.fromScale(1, 1)
    bg.BackgroundColor3 = Config.BackgroundColor
    bg.BackgroundTransparency = Config.BackgroundTransparency
    bg.Parent = container

    -- 霓虹边框
    local border = Instance.new("ImageLabel")
    border.Image = AssetManager.LoadImage("rbxassetid://5761498316")
    border.ScaleType = Enum.ScaleType.Slice
    border.SliceCenter = Rect.new(17, 17, 283, 283)
    border.Size = options.BorderSize and UDim2.fromScale(options.BorderSize, options.BorderSize) or UDim2.fromScale(1.2, 1.2)
    border.AnchorPoint = Vector2.new(0.5, 0.5)
    border.Position = UDim2.fromScale(0.5, 0.5)
    border.ImageColor3 = Config.NeonColor
    border.ImageTransparency = Config.NeonTransparency
    border.ZIndex = -1
    border.Parent = container

    -- 旋转动画
    task.spawn(function()
        local rotationAngle = 0
        while container.Parent do
            rotationAngle = (rotationAngle + Config.Animation.RotationSpeed) % 360
            TweenService:Create(border, TweenInfo.new(1.5, Enum.EasingStyle.Linear), {
                Rotation = rotationAngle,
                ImageTransparency = 0.2 + math.sin(os.clock()*2)*0.1
            }):Play()
            task.wait(0.05)
        end
    end)

    return container
end

return {
    Config = Config,

    Notify = function(options)
        options = options or {}
        if not options.Title and not options.Description then return end

        local frame = CreateNotificationFrame(options)
        frame.Parent = Container

        -- 内容构建
        local contentHeight = 0
        if options.Title then
            local title = CreateText(options.Title, true)
            title.Size = UDim2.new(1, -20, 0, 26)
            title.Position = UDim2.fromOffset(10, 5)
            title.Rotation = options.TextRotation or 0  -- 文字旋转
            title.Parent = frame
            contentHeight += 30
        end

        if options.Description then
            local desc = CreateText(options.Description)
            desc.Size = UDim2.new(1, -20, 0, 0)
            desc.Position = UDim2.fromOffset(10, contentHeight)
            desc.AutomaticSize = Enum.AutomaticSize.Y
            desc.Parent = frame
            contentHeight += desc.TextBounds.Y + 5
        end

        frame.Size = UDim2.new(1, 0, 0, contentHeight + 10)
        
        -- 入场动画
        frame.Position = UDim2.new(-1, 20, 0, 0)
        TweenService:Create(frame, TweenInfo.new(
            Config.Animation.EnterDuration,
            Config.Animation.EasingStyle
        ), {
            Position = UDim2.new(0, 20, 0, 0)
        }):Play()

        -- 自动移除
        task.delay(options.Duration or 5, function()
            TweenService:Create(frame, TweenInfo.new(
                Config.Animation.ExitDuration,
                Config.Animation.EasingStyle
            ), {
                Position = UDim2.new(-1, 20, 0, frame.Position.Y.Offset),
                ImageTransparency = 1
            }):Play()
            task.wait(Config.Animation.ExitDuration)
            frame:Destroy()
        end)
    end
}
