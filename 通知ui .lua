-- 增强版通知系统核心模块
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

-- 增强主题系统
local Themes = {
    Cyber = {
        Background = Color3.fromRGB(12, 4, 20),
        Text = Color3.fromRGB(0, 255, 255),
        Border = Color3.fromRGB(0, 200, 200),
        Shadow = Color3.fromRGB(0, 80, 80)
    },
    NeonRed = {
        Background = Color3.fromRGB(40, 0, 0),
        Text = Color3.fromRGB(255, 50, 50),
        Border = Color3.fromRGB(255, 0, 0),
        Shadow = Color3.fromRGB(80, 0, 0)
    }
}

-- 增强动画系统
local AnimationPresets = {
    CyberSlide = {
        Style = Enum.EasingStyle.Quint,
        Direction = Enum.EasingDirection.Out,
        Time = 0.8
    },
    Hologram = {
        Style = Enum.EasingStyle.Elastic,
        Direction = Enum.EasingDirection.Out,
        Time = 1.2
    }
}

-- 容器初始化（修复显示问题）
local NotifGui = Instance.new("ScreenGui")
NotifGui.Name = "CyberNotif"
NotifGui.ResetOnSpawn = false
NotifGui.DisplayOrder = 100
NotifGui.Parent = Player:WaitForChild("PlayerGui")

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.AnchorPoint = Vector2.new(0, 0.5)
Container.Position = UDim2.new(0, 20, 0.5, 0) -- 修正定位锚点
Container.Size = UDim2.new(0, 320, 0, 0)
Container.BackgroundTransparency = 1
Container.Parent = NotifGui

-- 霓虹边框生成器
local function CreateNeonBorder(parent, theme)
    local border = Instance.new("UIStroke")
    border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    border.Color = Themes[theme].Border
    border.Transparency = 0.3
    border.Thickness = 2
    
    local glow = Instance.new("UIGradient")
    glow.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Themes[theme].Border),
        ColorSequenceKeypoint.new(1, Color3.new(1,1,1))
    }
    glow.Rotation = 90
    glow.Transparency = NumberSequence.new(0.5)
    
    glow.Parent = border
    border.Parent = parent
    return border
end

-- 动态背景生成（修复初始位置问题）
local function CreateCyberPanel(theme)
    local panel = Instance.new("Frame")
    panel.Size = UDim2.new(1, 0, 0, 0)
    panel.Position = UDim2.new(-1, 0, 0, 0) -- 修正初始位置
    panel.BackgroundColor3 = Themes[theme].Background
    panel.BackgroundTransparency = 0.2
    
    -- 添加动态模糊
    local blur = Instance.new("BlurEffect")
    blur.Size = 8
    blur.Parent = panel
    
    -- 添加霓虹边框
    CreateNeonBorder(panel, theme)
    
    return panel
end

-- 增强动画系统
local function AnimateEntry(panel, config)
    local targetSize = UDim2.new(1, 0, 0, panel.ContentSize)
    local targetPos = UDim2.new(0, 0, 0, panel.LayoutOrder * (panel.ContentSize + 10))
    
    local sizeTween = TweenService:Create(
        panel,
        TweenInfo.new(
            config.Time,
            config.Style,
            config.Direction
        ),
        {Size = targetSize}
    )
    
    local posTween = TweenService:Create(
        panel,
        TweenInfo.new(
            config.Time * 0.8,
            Enum.EasingStyle.Quad,
            Enum.EasingDirection.Out
        ),
        {Position = targetPos}
    )
    
    sizeTween:Play()
    posTween:Play()
end

-- 通知管理核心（优化内存管理）
local ActiveNotifications = {}
local function UpdateLayout()
    local totalHeight = 0
    for _, note in ipairs(ActiveNotifications) do
        if note.Visible then
            note.Position = UDim2.new(0, 0, 0, totalHeight)
            totalHeight += note.AbsoluteSize.Y + 10
        end
    end
end

-- 增强通知创建函数
return {
    Notify = function(config)
        -- 参数验证与默认值
        local theme = Themes[config.Theme] and config.Theme or "Cyber"
        local animation = AnimationPresets[config.Animation] or AnimationPresets.CyberSlide
        
        -- 创建通知主体
        local panel = CreateCyberPanel(theme)
        panel.Parent = Container
        
        -- 内容布局
        local content = Instance.new("Frame")
        content.Size = UDim2.new(1, -20, 1, -20)
        content.Position = UDim2.new(0, 10, 0, 10)
        content.BackgroundTransparency = 1
        content.Parent = panel
        
        -- 添加图标
        if config.Icon then
            local icon = Instance.new("ImageLabel")
            icon.Size = UDim2.fromOffset(28, 28)
            icon.Position = UDim2.new(0, 0, 0, 0)
            icon.Image = config.Icon
            icon.Parent = content
        end
        
        -- 文字内容
        local textContainer = Instance.new("Frame")
        textContainer.Size = UDim2.new(1, -40, 1, 0)
        textContainer.Position = UDim2.new(0, 40, 0, 0)
        textContainer.BackgroundTransparency = 1
        textContainer.Parent = content
        
        local title = Instance.new("TextLabel")
        title.Text = config.Title or "系统通知"
        title.Font = Enum.Font.SciFi
        title.TextSize = 18
        title.TextColor3 = Themes[theme].Text
        title.Size = UDim2.new(1, 0, 0, 28)
        title.Parent = textContainer
        
        local desc = Instance.new("TextLabel")
        desc.Text = config.Description or ""
        desc.Font = Enum.Font.Code
        desc.TextSize = 14
        desc.TextColor3 = Themes[theme].Text:lerp(Color3.new(1,1,1), 0.3)
        desc.Size = UDim2.new(1, 0, 1, -32)
        desc.Position = UDim2.new(0, 0, 0, 32)
        desc.TextWrapped = true
        desc.Parent = textContainer
        
        -- 动态计算高度
        local textSize = TextService:GetTextSize(
            desc.Text,
            14,
            desc.Font,
            Vector2.new(textContainer.AbsoluteSize.X, math.huge)
        )
        panel.ContentSize = textSize.Y + 60  -- 添加边距
        
        -- 注册点击事件
        if config.OnClick then
            panel.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    config.OnClick()
                    panel.Visible = false
                end
            end)
        end
        
        -- 执行入场动画
        AnimateEntry(panel, animation)
        table.insert(ActiveNotifications, panel)
        
        -- 自动关闭逻辑
        task.spawn(function()
            task.wait(config.Duration or 5)
            panel.Visible = false
            UpdateLayout()
            task.wait(1)
            panel:Destroy()
            table.remove(ActiveNotifications, table.find(ActiveNotifications, panel))
        end)
        
        -- 实时布局更新
        UpdateLayout()
    end
}
