local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local SoundService = game:GetService("SoundService")
local Players = game:GetService("Players")

-- 全局配置表（用户可自定义）
local Config = {
    -- 基础设置
    DebugMode = true,
    SafeMode = true,

    -- 视觉设置
    BackgroundColor = Color3.fromRGB(20, 20, 40),
    BackgroundTransparency = 0.3,
    NeonColor = Color3.fromRGB(0, 255, 255),
    TextGradient = {
        Colors = {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 255))
        },
        Speed = 0.05
    },

    -- 音效设置
    SoundEffects = {
        Show = "rbxassetid://9046898034",
        Hide = "rbxassetid://9046898035"
    },

    -- 动画设置
    Animation = {
        EnterDuration = 0.8,
        ExitDuration = 0.5,
        EasingStyle = Enum.EasingStyle.Quint,
        Spacing = 15
    }
}

-- 安全资源管理
local AssetManager = {
    Fallback = {
        Bubble = "rbxassetid://3570695787",
        Border = "rbxassetid://5553946656"
    },
    LoadImage = function(id)
        if Config.SafeMode then
            local success = pcall(game.GetObjects, game, id)
            return success and id or AssetManager.Fallback[id]
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

-- 调试系统
local function DebugPrint(...)
    if Config.DebugMode then
        print("[DEBUG]", os.date("%X"), ...)
    end
end

-- 音效播放
local function PlaySound(soundId)
    if not soundId then return end
    local sound = Instance.new("Sound")
    sound.SoundId = soundId
    sound.Volume = 0.3
    sound.Parent = SoundService
    sound:Play()
    DebugPrint("播放音效:", soundId)
    game:GetService("Debris"):AddItem(sound, 5)
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

    -- 渐变效果
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(Config.TextGradient.Colors)
    gradient.Rotation = 90
    gradient.Parent = label

    -- 动态动画
    task.spawn(function()
        local offset = 0
        while label.Parent do
            gradient.Offset = Vector2.new(0, math.sin(offset) * 0.3 + 0.5)
            offset += Config.TextGradient.Speed
            task.wait(0.05)
        end
    end)

    return label
end

-- 通知容器
local function CreateNotificationFrame()
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
    border.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30)
    border.Position = -UDim2.fromOffset(15, 15)
    border.ImageColor3 = Config.NeonColor
    border.ImageTransparency = 0.7
    border.Parent = container

    -- 边框动画
    task.spawn(function()
        local phase = 0
        while container.Parent do
            local target = phase % 2 == 0 and 0.3 or 0.7
            TweenService:Create(border, TweenInfo.new(1.5), {
                ImageTransparency = target
            }):Play()
            phase += 1
            task.wait(1.5)
        end
    end)

    return container
end

-- 通知队列管理
local activeNotifications = {}
local updateConnection = nil

local function UpdatePositions()
    local totalHeight = 0
    for i, notification in ipairs(activeNotifications) do
        local targetY = totalHeight + (i-1) * Config.Animation.Spacing
        notification.targetPosition = UDim2.new(0, 20, 0, targetY)
        totalHeight += notification.frame.AbsoluteSize.Y
    end
end

local function AnimateNotifications()
    while #activeNotifications > 0 do
        local changed = false
        for i, notification in ipairs(activeNotifications) do
            local currentPos = notification.frame.Position
            local newPos = currentPos:Lerp(notification.targetPosition, 0.15)
            if (currentPos.Y.Offset - newPos.Y.Offset) > 1 then
                notification.frame.Position = newPos
                changed = true
            end
        end
        if not changed then break end
        task.wait()
    end
end

-- 主接口
return {
    Config = Config,  -- 暴露配置表供外部修改

    Notify = function(options)
        -- 参数验证
        options = options or {}
        if not options.Title and not options.Description then
            warn("通知需要标题或描述内容")
            return
        end

        -- 创建容器
        local frame = CreateNotificationFrame()
        frame.Parent = Container
        PlaySound(Config.SoundEffects.Show)

        -- 构建内容
        local contentHeight = 0
        if options.Title then
            local title = CreateText(options.Title, true)
            title.Size = UDim2.new(1, -20, 0, 26)
            title.Position = UDim2.fromOffset(10, 5)
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

        -- 调整容器尺寸
        frame.Size = UDim2.new(1, 0, 0, contentHeight + 10)

        -- 入场动画
        frame.Position = UDim2.new(-1, 20, 0, 0)
        TweenService:Create(frame, TweenInfo.new(
            Config.Animation.EnterDuration,
            Config.Animation.EasingStyle
        ), {
            Position = UDim2.new(0, 20, 0, 0)
        }):Play()

        -- 加入队列
        table.insert(activeNotifications, {
            frame = frame,
            targetPosition = UDim2.new(0, 20, 0, 0)
        })

        -- 自动移除
        task.delay(options.Duration or 5, function()
            TweenService:Create(frame, TweenInfo.new(
                Config.Animation.ExitDuration,
                Config.Animation.EasingStyle
            ), {
                Position = UDim2.new(-1, 20, 0, frame.Position.Y.Offset),
                ImageTransparency = 1
            }):Play()
            PlaySound(Config.SoundEffects.Hide)
            task.wait(Config.Animation.ExitDuration)
            frame:Destroy()
            for i, notif in ipairs(activeNotifications) do
                if notif.frame == frame then
                    table.remove(activeNotifications, i)
                    break
                end
            end
            UpdatePositions()
        end)

        -- 启动动画循环
        if not updateConnection then
            updateConnection = RunService.Heartbeat:Connect(AnimateNotifications)
        end
    end
}
