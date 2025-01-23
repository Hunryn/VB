-- 文件: 通知ui.lua
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")

local Rainbow = {
    Colors = {
        Color3.fromRGB(255, 0, 0),    -- 红
        Color3.fromRGB(255, 165, 0),  -- 橙
        Color3.fromRGB(255, 255, 0),  -- 黄
        Color3.fromRGB(0, 255, 0),    -- 绿
        Color3.fromRGB(0, 127, 255),  -- 蓝
        Color3.fromRGB(75, 0, 130),   -- 靛
        Color3.fromRGB(238, 130, 238) -- 紫
    },
    Speed = 0.5
}

local Config = {
    FontEffects = {
        CharColorChange = true,      -- 字符独立变色
        WaveAmplitude = 3,           -- 文字波动幅度
        RotationSpeed = 2            -- 旋转速度(度/秒)
    },
    
    BorderEffects = {
        SparkleDensity = 20,         -- 闪烁粒子密度
        FlowSpeed = 1.5,             -- 流光速度
        Thickness = 4                -- 边框厚度
    }
}

local function CreateRainbowText(text, isTitle)
    local container = Instance.new("Frame")
    container.BackgroundTransparency = 1
    container.Size = UDim2.new(1, 0, 0, 20)
    
    local chars = {}
    for i = 1, #text do
        local charLabel = Instance.new("TextLabel")
        charLabel.Text = text:sub(i,i)
        charLabel.Font = isTitle and Enum.Font.GothamBold or Enum.Font.Gotham
        charLabel.TextSize = isTitle and 16 or 14
        charLabel.Size = UDim2.new(0, 10, 0, 20)
        charLabel.Position = UDim2.new(0, (i-1)*12, 0, 0)
        charLabel.BackgroundTransparency = 1
        charLabel.Parent = container
        
        -- 字符颜色动画
        task.spawn(function()
            local phase = math.random()
            while charLabel.Parent do
                local colorIndex = math.floor((phase * #Rainbow.Colors)) % #Rainbow.Colors + 1
                charLabel.TextColor3 = Rainbow.Colors[colorIndex]
                phase = (phase + Rainbow.Speed * 0.01) % 1
                task.wait(0.1)
            end
        end)
        
        -- 浮动效果
        task.spawn(function()
            local baseY = 0
            while charLabel.Parent do
                TweenService:Create(charLabel, TweenInfo.new(1, Enum.EasingStyle.Sine), {
                    Position = UDim2.new(charLabel.Position.X.Scale, charLabel.Position.X.Offset,
                                      0, baseY + math.sin(os.clock()*2)*Config.FontEffects.WaveAmplitude)
                }):Play()
                task.wait(0.5)
            end
        end)
        
        table.insert(chars, charLabel)
    end
    return container
end

local function CreateSparklingBorder(parent)
    local border = Instance.new("Frame")
    border.Size = UDim2.fromScale(1, 1)
    border.BackgroundTransparency = 1
    border.ClipsDescendants = true
    
    -- 动态流光层
    local flow = Instance.new("Frame")
    flow.Size = UDim2.fromScale(2, 1)
    flow.BackgroundColor3 = Color3.new(1,1,1)
    flow.BackgroundTransparency = 0.8
    flow.Parent = border
    
    -- 流光渐变
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(Rainbow.Colors)
    gradient.Rotation = 90
    gradient.Parent = flow
    
    -- 流光动画
    task.spawn(function()
        while border.Parent do
            TweenService:Create(flow, TweenInfo.new(2, Enum.EasingStyle.Linear), {
                Position = UDim2.new(-1, 0, 0, 0)
            }):Play()
            task.wait(2)
            flow.Position = UDim2.new(0, 0, 0, 0)
        end
    end)
    
    -- 闪烁粒子
    for _ = 1, Config.BorderEffects.SparkleDensity do
        task.spawn(function()
            local spark = Instance.new("Frame")
            spark.Size = UDim2.fromOffset(4,4)
            spark.BackgroundColor3 = Rainbow.Colors[math.random(#Rainbow.Colors)]
            spark.AnchorPoint = Vector2.new(0.5,0.5)
            spark.Position = UDim2.new(math.random(), 0, math.random(), 0)
            spark.Parent = border
            
            -- 粒子动画
            while spark.Parent do
                TweenService:Create(spark, TweenInfo.new(0.5), {
                    BackgroundTransparency = math.random(0.3,0.7),
                    Rotation = math.random(360)
                }):Play()
                task.wait(math.random(1,3))
            end
        end)
    end
    
    return border
end

-- 修改后的Notify函数
return {
    Notify = function(options)
        local frame = Instance.new("Frame")
        frame.BackgroundTransparency = 1
        frame.Size = UDim2.new(0, 300, 0, 0)
        frame.Parent = script.Parent.Container
        
        -- 添加彩虹边框
        local border = CreateSparklingBorder(frame)
        border.Size = UDim2.fromScale(1.1,1.1)
        border.Position = UDim2.fromScale(-0.05,-0.05)
        
        -- 创建动态文字
        local textContainer = Instance.new("Frame")
        textContainer.Size = UDim2.new(1, -20, 0, 0)
        textContainer.Position = UDim2.fromOffset(10,5)
        textContainer.BackgroundTransparency = 1
        textContainer.Parent = frame
        
        if options.Title then
            local title = CreateRainbowText(options.Title, true)
            title.Parent = textContainer
            textContainer.Size = UDim2.new(1, -20, 0, 30)
        end
        
        if options.Description then
            local desc = CreateRainbowText(options.Description, false)
            desc.Position = UDim2.fromOffset(0,30)
            desc.Parent = textContainer
            textContainer.Size += UDim2.new(0,0,0,30)
        end
        
        -- 入场动画
        frame.Position = UDim2.new(-1, 0, 0.5, 0)
        TweenService:Create(frame, TweenInfo.new(0.8), {
            Position = UDim2.new(0, 20, 0.5, 0),
            Rotation = math.random(-3,3)
        }):Play()
        
        -- 持续旋转
        task.spawn(function()
            while frame.Parent do
                frame.Rotation += Config.FontEffects.RotationSpeed
                task.wait(0.1)
            end
        end)
        
        -- 自动移除
        task.delay(options.Duration or 5, function()
            TweenService:Create(frame, TweenInfo.new(0.5), {
                BackgroundTransparency = 1,
                Position = UDim2.new(1,0,0.5,0)
            }):Play()
            task.wait(0.6)
            frame:Destroy()
        end)
    end
}
