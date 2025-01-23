-- 终极通知系统 (整合优化版)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

-- 核心配置系统
local Config = {
    Theme = {
        Active = "Cyber",
        Presets = {
            Cyber = {
                Background = Color3.fromRGB(12, 4, 20),
                Text = Color3.fromRGB(0, 255, 255),
                Border = Color3.fromRGB(0, 200, 200),
                Glow = Color3.fromRGB(0, 80, 80)
            },
            NeonRed = {
                Background = Color3.fromRGB(40, 0, 0),
                Text = Color3.fromRGB(255, 50, 50),
                Border = Color3.fromRGB(255, 0, 0),
                Glow = Color3.fromRGB(80, 0, 0)
            }
        }
    },
    
    Animation = {
        Presets = {
            Spring = {
                Style = Enum.EasingStyle.Elastic,
                Direction = Enum.EasingDirection.Out,
                Time = 1.2
            },
            Slide = {
                Style = Enum.EasingStyle.Quint,
                Direction = Enum.EasingDirection.Out,
                Time = 0.8
            }
        }
    },
    
    Font = {
        Title = {
            Primary = Enum.Font.SciFi,
            Fallback = Enum.Font.GothamBold,
            Size = 18
        },
        Content = {
            Primary = Enum.Font.Code,
            Fallback = Enum.Font.Gotham,
            Size = 14
        }
    }
}

-- UI容器初始化
local NotifGui = Instance.new("ScreenGui")
NotifGui.Name = "UltimateNotifications"
NotifGui.ResetOnSpawn = false
NotifGui.DisplayOrder = 100
NotifGui.Parent = Player:WaitForChild("PlayerGui")

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.AnchorPoint = Vector2.new(0, 0.5)
Container.Position = UDim2.new(0, 20, 0.5, 0)
Container.Size = UDim2.new(0, 320, 0, 0)
Container.BackgroundTransparency = 1
Container.Parent = NotifGui

-- 智能组件生成系统
local Component = {
    CreateSafe = function(typeName, parent)
        local success, obj = pcall(Instance.new, typeName)
        if success then
            obj.Parent = parent
            return obj
        end
        return Instance.new("Frame")
    end,

    NotificationFrame = function(theme)
        local frame = Component.CreateSafe("Frame", Container)
        frame.BackgroundTransparency = 0.2
        frame.BackgroundColor3 = Config.Theme.Presets[theme].Background
        frame.Size = UDim2.new(1, 0, 0, 0)
        frame.Position = UDim2.new(-1, 0, 0, 0)
        
        -- 霓虹边框系统
        local stroke = Component.CreateSafe("UIStroke", frame)
        stroke.Thickness = 2
        stroke.Color = Config.Theme.Presets[theme].Border
        stroke.Transparency = 0.3
        
        local gradient = Component.CreateSafe("UIGradient", stroke)
        gradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Config.Theme.Presets[theme].Border),
            ColorSequenceKeypoint.new(1, Config.Theme.Presets[theme].Glow)
        }
        gradient.Rotation = 90
        
        return frame
    end,

    TextLabel = function(config)
        local label = Component.CreateSafe("TextLabel", config.Parent)
        label.Text = config.Text
        label.Font = config.Font
        label.TextSize = config.Size
        label.TextColor3 = config.Color
        label.TextWrapped = true
        label.AutomaticSize = Enum.AutomaticSize.Y
        label.Size = UDim2.new(1, config.OffsetX or -20, 0, config.MinHeight or 0)
        label.Position = config.Position or UDim2.new(0, 10, 0, 0)
        return label
    end
}

-- 动态布局系统
local Layout = {
    Active = {},
    
    Update = function()
        local totalHeight = 0
        for _, note in ipairs(Layout.Active) do
            if note and note.Parent then
                note.Position = UDim2.new(0, 0, 0, totalHeight)
                totalHeight += note.AbsoluteSize.Y + 10
            end
        end
        Container.Size = UDim2.new(0, 320, 0, totalHeight)
    end,

    AutoFix = function()
        RunService.Heartbeat:Connect(function()
            if tick() % 0.5 < 0.01 then
                Layout.Update()
            end
        end)
    end
}

-- 动画控制系统
local Animator = {
    Active = {},
    
    Play = function(target, config)
        local tween = TweenService:Create(
            target,
            TweenInfo.new(
                config.Time,
                config.Style,
                config.Direction
            ),
            {Size = UDim2.new(1, 0, 0, target.ContentSize)}
        )
        tween:Play()
        table.insert(Animator.Active, tween)
        return tween
    end,

    Cleanup = function()
        for i = #Animator.Active, 1, -1 do
            if Animator.Active[i].PlaybackState == Enum.PlaybackState.Completed then
                table.remove(Animator.Active, i)
            end
        end
    end
}

-- 核心通知逻辑
local Notification = {
    Notify = function(params)
        -- 参数安全处理
        local config = {
            Title = params.Title or "通知",
            Description = params.Description or "",
            Duration = math.clamp(params.Duration or 5, 2, 10),
            Theme = Config.Theme.Presets[params.Theme] and params.Theme or "Cyber",
            Icon = params.Icon,
            Animation = Config.Animation.Presets[params.Animation] and params.Animation or "Slide"
        }

        -- 创建通知主体
        local frame = Component.NotificationFrame(config.Theme)
        frame.ContentSize = 0
        
        -- 图标系统
        if config.Icon then
            local icon = Component.CreateSafe("ImageLabel", frame)
            icon.Size = UDim2.fromOffset(28, 28)
            icon.Position = UDim2.new(0, 10, 0, 10)
            icon.Image = config.Icon
        end

        -- 标题系统
        local title = Component.TextLabel({
            Text = config.Title,
            Font = Config.Font.Title.Primary,
            Size = Config.Font.Title.Size,
            Color = Config.Theme.Presets[config.Theme].Text,
            Parent = frame,
            Position = UDim2.new(0, config.Icon and 40 or 10, 0, 10),
            OffsetX = config.Icon and -40 or -20
        })

        -- 内容系统
        local desc = Component.TextLabel({
            Text = config.Description,
            Font = Config.Font.Content.Primary,
            Size = Config.Font.Content.Size,
            Color = Config.Theme.Presets[config.Theme].Text:lerp(Color3.new(1,1,1), 0.3),
            Parent = frame,
            Position = UDim2.new(0, 10, 0, title.AbsoluteSize.Y + 20)
        })

        -- 智能尺寸计算
        local textSize = TextService:GetTextSize(
            desc.Text,
            desc.TextSize,
            desc.Font,
            Vector2.new(300, math.huge)
        )
        frame.ContentSize = textSize.Y + title.AbsoluteSize.Y + 40

        -- 动画系统
        Animator.Play(frame, Config.Animation.Presets[config.Animation])
        table.insert(Layout.Active, frame)
        Layout.Update()

        -- 交互系统
        if params.OnClick then
            frame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    params.OnClick()
                    Animator.Play(frame, {Time = 0.3, Style = Enum.EasingStyle.Quad, Direction = Enum.EasingDirection.Out})
                end
            end)
        end

        -- 自动销毁系统
        task.delay(config.Duration, function()
            Animator.Play(frame, {Time = 0.5, Style = Enum.EasingStyle.Quad, Direction = Enum.EasingDirection.Out})
            task.wait(0.5)
            frame:Destroy()
            Layout.Active = {}
            Layout.Update()
        end)
    end
}

-- 初始化自动修复
Layout.AutoFix()

return Notification
