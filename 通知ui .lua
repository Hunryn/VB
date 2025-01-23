-- 完整版通知系统 by 霖溺
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local Players = game:GetService("Players")

-- 核心配置参数
local SETTINGS = {
    NeonFrameID = "rbxassetid://13070413034",  -- 霓虹边框素材
    GlowTextureID = "rbxassetid://13070414678", -- 流光特效素材
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
    }
}

-- 初始化UI容器
local NotifGui = Instance.new("ScreenGui")
NotifGui.Name = "NeonNotif"
NotifGui.ResetOnSpawn = false
NotifGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.AnchorPoint = Vector2.new(0, 0.5)
Container.Position = UDim2.new(0, 20, 0.5, 0)
Container.Size = UDim2.new(0, 320, 0.5, 0)
Container.BackgroundTransparency = 1
Container.Parent = NotifGui

-- 霓虹边框生成器
local function CreateNeonFrame(parent, size)
    local frame = Instance.new("ImageLabel")
    frame.Name = "NeonBorder"
    frame.Image = SETTINGS.NeonFrameID
    frame.ScaleType = Enum.ScaleType.Slice
    frame.SliceCenter = Rect.new(50, 50, 250, 250)
    frame.BackgroundTransparency = 1
    frame.Size = size + UDim2.new(0, 40, 0, 40)
    frame.Position = UDim2.new(0, -20, 0, -20)
    frame.ImageColor3 = Color3.fromHSV(0.7, 0.8, 1)
    frame.ImageTransparency = 0.15
    frame.ZIndex = -1
    frame.Parent = parent

    -- 动态颜色循环
    task.spawn(function()
        while frame.Parent do
            frame.ImageColor3 = Color3.fromHSV((tick()*0.3)%1, 0.8, 1)
            task.wait(0.3)
        end
    end)

    -- 添加流光层
    local glow = Instance.new("ImageLabel")
    glow.Image = SETTINGS.GlowTextureID
    glow.ScaleType = Enum.ScaleType.Tile
    glow.TileSize = UDim2.new(0, 128, 0, 128)
    glow.Size = UDim2.new(2, 0, 1, 0)
    glow.ImageTransparency = 0.85
    glow.BackgroundTransparency = 1
    glow.Rotation = -15
    glow.Parent = frame

    -- 流光动画
    TweenService:Create(glow, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, math.huge), {
        Position = UDim2.new(-1, 0, 0, 0)
    }):Play()

    return frame
end

-- 文字渐变处理
local function ApplyTextGradient(label, colors)
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(colors)
    gradient.Rotation = 90
    gradient.Enabled = true
    gradient.Parent = label

    -- 动态渐变偏移
    TweenService:Create(gradient, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, math.huge), {
        Offset = Vector2.new(0, 0.3)
    }):Play()
end

-- 通知主体创建
local notifications = {}
local function CreateNotification(data)
    local mainFrame = Instance.new("Frame")
    mainFrame.BackgroundTransparency = 1
    mainFrame.Size = UDim2.new(1, -40, 0, 0)
    mainFrame.Position = UDim2.new(-1, 20, 0, 0)
    mainFrame.ClipsDescendants = true
    mainFrame.Parent = Container

    -- 背景层
    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = SETTINGS.Colors.Background
    bg.BackgroundTransparency = 0.15
    bg.Parent = mainFrame

    -- 添加霓虹边框
    CreateNeonFrame(mainFrame, UDim2.new(1, 0, 1, 0))

    -- 文字内容
    local content = Instance.new("Frame")
    content.Size = UDim2.new(1, -20, 1, -20)
    content.Position = UDim2.new(0, 10, 0, 10)
    content.BackgroundTransparency = 1
    content.Parent = mainFrame

    -- 标题文字
    local titleLabel = Instance.new("TextLabel")
    titleLabel.FontFace = Font.new(SETTINGS.Font.Title)
    titleLabel.TextSize = 18
    titleLabel.Text = "<b>"..data.Title.."</b>"
    titleLabel.RichText = true
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.Size = UDim2.new(1, 0, 0, 24)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = content
    ApplyTextGradient(titleLabel, SETTINGS.Colors.TitleGradient)

    -- 描述文字
    local descLabel = Instance.new("TextLabel")
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
    descLabel.Parent = content

    -- 自动调整高度
    local textHeight = TextService:GetTextSize(data.Description, 14, descLabel.FontFace, Vector2.new(300, 1000)).Y
    mainFrame.Size = UDim2.new(1, -40, 0, math.max(60, textHeight + 40))

    -- 入场动画
    local enterTween = TweenService:Create(mainFrame, TweenInfo.new(
        SETTINGS.Animation.EnterDuration, 
        SETTINGS.Animation.EasingStyle, 
        Enum.EasingDirection.Out
    ), {
        Position = UDim2.new(0, 20, 0, #notifications * (mainFrame.AbsoluteSize.Y + 10))
    })
    enterTween:Play()

    -- 出场动画
    task.delay(data.Duration, function()
        local exitTween = TweenService:Create(mainFrame, TweenInfo.new(
            SETTINGS.Animation.ExitDuration, 
            Enum.EasingStyle.Back, 
            Enum.EasingDirection.In
        ), {
            Position = UDim2.new(-1, -100, 0, mainFrame.Position.Y.Offset),
            BackgroundTransparency = 1
        })
        exitTween:Play()
        exitTween.Completed:Wait()
        mainFrame:Destroy()
        table.remove(notifications, table.find(notifications, mainFrame))
    end)

    table.insert(notifications, mainFrame)
end

-- 导出接口
return {
    Notify = function(data)
        CreateNotification({
            Title = data.Title or "通知",
            Description = data.Description or "",
            Duration = data.Duration or 5
        })
    end
}
