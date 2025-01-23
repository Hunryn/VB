-- 完整修复版通知系统
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local Players = game:GetService("Players")

-- 强化配置参数
local SETTINGS = {
    NeonFrameID = "rbxassetid://13070413034",  -- 验证可用的霓虹边框
    GlowTextureID = "rbxassetid://13070414678", -- 验证可用的流光特效
    Font = {
        Title = Enum.Font.FredokaOne,
        Desc = Enum.Font.GothamSemibold
    },
    Colors = {
        Background = Color3.fromRGB(20, 15, 35),
        TitleGradient = {Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255)},
        DescColor = Color3.fromRGB(200, 200, 255)
    },
    Animation = {
        EnterDuration = 0.8,
        ExitDuration = 0.6,
        EasingStyle = Enum.EasingStyle.Quint
    },
    SafeMargin = 20 -- 安全边距
}

-- 强化UI容器初始化
local NotifGui = Instance.new("ScreenGui")
NotifGui.Name = "NeonNotif_Pro"
NotifGui.ResetOnSpawn = false
NotifGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NotifGui.Parent = RunService:IsStudio() and Players.LocalPlayer.PlayerGui or game:GetService("CoreGui")

local Container = Instance.new("Frame")
Container.Name = "Container_Pro"
Container.AnchorPoint = Vector2.new(0, 0.5)
Container.Position = UDim2.new(0, SETTINGS.SafeMargin, 0.5, 0)
Container.Size = UDim2.new(0, 340, 0, 0)
Container.BackgroundTransparency = 1
Container.ClipsDescendants = true -- 添加裁切保护
Container.Parent = NotifGui

-- 强化霓虹边框生成器
local function CreateNeonFrame(parent, size)
    local frame = Instance.new("ImageLabel")
    frame.Name = "NeonBorder_Pro"
    frame.Image = SETTINGS.NeonFrameID
    frame.ScaleType = Enum.ScaleType.Slice
    frame.SliceCenter = Rect.new(50, 50, 250, 250)
    frame.BackgroundTransparency = 1
    frame.Size = size + UDim2.new(0, 40, 0, 40)
    frame.Position = UDim2.new(0, -20, 0, -20)
    frame.ImageColor3 = Color3.fromHSV(0.7, 0.8, 1)
    frame.ImageTransparency = 0.15
    frame.ZIndex = 1 -- 层级调整
    frame.Parent = parent

    -- 强化动态颜色循环
    task.spawn(function()
        while frame.Parent do
            local hue = (tick()*0.3)%1
            frame.ImageColor3 = Color3.fromHSV(hue, 0.8, 1)
            task.wait(0.3)
        end
    end)

    -- 强化流光层
    local glow = Instance.new("ImageLabel")
    glow.Name = "DynamicGlow"
    glow.Image = SETTINGS.GlowTextureID
    glow.ScaleType = Enum.ScaleType.Tile
    glow.TileSize = UDim2.new(0, 128, 0, 128)
    glow.Size = UDim2.new(2, 0, 1, 0)
    glow.ImageTransparency = 0.85
    glow.BackgroundTransparency = 1
    glow.Rotation = -15
    glow.ZIndex = 0
    glow.Parent = frame

    -- 强化流光动画
    local flowTween = TweenService:Create(glow, TweenInfo.new(
        5, 
        Enum.EasingStyle.Linear, 
        Enum.EasingDirection.InOut, 
        math.huge
    ), {
        Position = UDim2.new(-1, 0, 0, 0)
    })
    flowTween:Play()

    return frame
end

-- 强化文字渲染系统
local function ApplyTextGradient(label, colors)
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(colors)
    gradient.Rotation = 90
    gradient.Enabled = true
    gradient.ZIndex = 3 -- 提升文字层级
    gradient.Parent = label

    -- 动态渐变偏移
    TweenService:Create(gradient, TweenInfo.new(
        3, 
        Enum.EasingStyle.Sine, 
        Enum.EasingDirection.InOut, 
        math.huge
    ), {
        Offset = Vector2.new(0, 0.3)
    }):Play()
end

-- 强化通知生命周期管理
local notifications = {}
local function CreateNotification(data)
    -- 容器初始化
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "NotificationFrame"
    mainFrame.BackgroundTransparency = 1
    mainFrame.Size = UDim2.new(1, -40, 0, 0)
    mainFrame.Position = UDim2.new(0, SETTINGS.SafeMargin, 0, 0) -- 修正初始位置
    mainFrame.ClipsDescendants = true
    mainFrame.ZIndex = 2
    mainFrame.Parent = Container

    -- 背景强化
    local bg = Instance.new("Frame")
    bg.Name = "Background"
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = SETTINGS.Colors.Background
    bg.BackgroundTransparency = 0.15
    bg.ZIndex = 2
    bg.Parent = mainFrame

    -- 创建霓虹边框
    CreateNeonFrame(mainFrame, UDim2.new(1, 0, 1, 0))

    -- 内容容器
    local content = Instance.new("Frame")
    content.Name = "ContentFrame"
    content.Size = UDim2.new(1, -20, 1, -20)
    content.Position = UDim2.new(0, 10, 0, 10)
    content.BackgroundTransparency = 1
    content.ZIndex = 3
    content.Parent = mainFrame

    -- 标题强化
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.FontFace = Font.new(SETTINGS.Font.Title)
    titleLabel.TextSize = 18
    titleLabel.Text = "<b>"..data.Title.."</b>"
    titleLabel.RichText = true
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.Size = UDim2.new(1, 0, 0, 24)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.ZIndex = 4
    titleLabel.Parent = content
    ApplyTextGradient(titleLabel, SETTINGS.Colors.TitleGradient)

    -- 描述强化
    local descLabel = Instance.new("TextLabel")
    descLabel.Name = "Description"
    descLabel.FontFace = Font.new(SETTINGS.Font.Desc)
    descLabel.TextSize = 14
    descLabel.Text = data.Description
    descLabel.TextColor3 = SETTINGS.Colors.DescColor
    descLabel.Size = UDim2.new(1, 0, 1, -28)
    descLabel.Position = UDim2.new(0, 0, 0, 28)
    descLabel.BackgroundTransparency = 1
    descLabel.TextWrapped = true
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.TextYAlignment = Enum.TextYAlignment.Top
    descLabel.ZIndex = 4
    descLabel.Parent = content

    -- 动态高度计算
    local textBounds = TextService:GetTextSize(
        data.Description,
        14,
        descLabel.FontFace,
        Vector2.new(content.AbsoluteSize.X - 20, math.huge)
    )
    mainFrame.Size = UDim2.new(1, -40, 0, math.max(60, textBounds.Y + 50))

    -- 入场动画强化
    local targetY = 0
    if #notifications > 0 then
        for _, note in ipairs(notifications) do
            targetY += note.AbsoluteSize.Y + 10
        end
    end

    local enterTween = TweenService:Create(mainFrame, TweenInfo.new(
        SETTINGS.Animation.EnterDuration,
        SETTINGS.Animation.EasingStyle,
        Enum.EasingDirection.Out,
        0,
        false,
        0
    ), {
        Position = UDim2.new(0, SETTINGS.SafeMargin, 0, targetY)
    })
    enterTween:Play()

    -- 退出系统强化
    task.delay(data.Duration, function()
        local exitTween = TweenService:Create(mainFrame, TweenInfo.new(
            SETTINGS.Animation.ExitDuration,
            Enum.EasingStyle.Back,
            Enum.EasingDirection.In
        ), {
            Position = UDim2.new(-0.5, -100, 0, mainFrame.Position.Y.Offset),
            BackgroundTransparency = 1
        })
        exitTween:Play()
        
        exitTween.Completed:Wait()
        mainFrame:Destroy()
        
        -- 更新后续通知位置
        for i, note in ipairs(notifications) do
            if note == mainFrame then
                table.remove(notifications, i)
                break
            end
        end
        
        -- 重新定位剩余通知
        local currentY = 0
        for _, note in ipairs(notifications) do
            note.Position = UDim2.new(0, SETTINGS.SafeMargin, 0, currentY)
            currentY += note.AbsoluteSize.Y + 10
        end
    end)

    table.insert(notifications, mainFrame)
end

-- 强化接口
return {
    Notify = function(data)
        data = data or {}
        CreateNotification({
            Title = data.Title or "系统通知",
            Description = data.Description or "",
            Duration = data.Duration or 5
        })
    end
}
