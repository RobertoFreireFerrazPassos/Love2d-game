-- alt + l
-- compact all files in same level as file main.lua to zip file and rename to .love extension
-- Key mappings from controls/main.gptk
local controls = {
    back = "escape",
    start = "return",
    a = "z",
    b = "lshift",
    x = "space",
    y = "b",
    l1 = "l",
    l2 = "x",
    l3 = "\"",
    r1 = "r",
    r2 = "y",
    r3 = "\"",
    up = "w",
    down = "s",
    left = "a",
    right = "d",
    left_analog_up = "up",
    left_analog_down = "down",
    left_analog_left = "left",
    left_analog_right = "right",
    right_analog_up = "mouse_movement_up",
    right_analog_down = "mouse_movement_down",
    right_analog_left = "mouse_movement_left",
    right_analog_right = "mouse_movement_right"
}
scoreFile = "gamestate.lua"
ScoreToRemoveGates = 500

local function saveHighScore()
    local file = io.open(scoreFile, "w")

    if file then
        file:write(tostring(highScore))
        file:close()
    end
end

local function loadHighScore()
    local file = io.open(scoreFile, "r")

    if file then
        local content = file:read("*all") 
        highScore = tonumber(content) or 0
        file:close()
    end
end

function love.load()
    love.window.setMode(640, 480, { resizable = false })
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
    pixelFont = love.graphics.newFont("fonts/slkscreb.ttf", 16)
    love.graphics.setFont(pixelFont)
    loadHighScore()
    resetGame()
    crtShader = love.graphics.newShader("shaders/crt_shader.glsl")
end

function resetGame()
    snake = {
        {x = 10, y = 10, l = 0},
        {x = 9, y = 10, l = 0},
        {x = 8, y = 10, l = 0},
    }
    pause = false
    direction = "right"
    nextDirection = "right"
    gameState = "playing"
    gameOverTimer = 0
    gridSize = 20
    apple = {}
    direction = "right"
    nextDirection = "right"
    gameState = "playing"
    gate1 = {x = 8, y = 6}
    gate2 = {x = 24, y = 18}
    currentLevel = 0
    box = {}
    box.x = 0
    box.y = 1
    box.w = love.graphics.getWidth() / gridSize
    box.h = love.graphics.getHeight() / gridSize
    score = 0
    isHighestScore = false
    sounds = {}
    sounds.eat = love.audio.newSource("sounds/coin.wav", "static")
    sounds.die = love.audio.newSource("sounds/hurt.wav", "static")
    sounds.pause = love.audio.newSource("sounds/pause.wav", "static")
    spawnApple()
end

function spawnApple()
    local validPositions = {}
    for x = box.x, box.w - 1 do
        for y = box.y, box.h - 1 do
            local valid = true

            if ((gate1.x == x and gate1.y == y) or (gate2.x == x and gate2.y == y)) then
                valid = false
            end

            for _, segment in ipairs(snake) do
                if segment.x == x and segment.y == y then
                    valid = false
                    break
                end
            end
            if valid then
                table.insert(validPositions, {x = x, y = y})
            end
        end
    end

    if #validPositions == 0 then
        return
    end

    local randIndex = love.math.random(1, #validPositions)
    apple.x = validPositions[randIndex].x
    apple.y = validPositions[randIndex].y
end

function love.update(dt)
    local timeToUpdate = 0.2

    if gameState == "scoreDisplay" then
        gameOverTimer = gameOverTimer - dt
        if gameOverTimer <= 0 then
            gameState = "gameover"
        end
        return
    elseif gameState ~= "playing" then
        return
    end

    if pause then
        return
    end

    if score > ScoreToRemoveGates then
        -- place outside of game area
        gate1 = {x = 100, y = 100}
        gate2 = {x = 100, y = 100}
    end

    if (love.keyboard.isDown(controls.up) or love.keyboard.isDown(controls.left_analog_up)) and direction ~= "down" then
        nextDirection = "up"
    elseif (love.keyboard.isDown(controls.down) or love.keyboard.isDown(controls.left_analog_down)) and direction ~= "up" then
        nextDirection = "down"
    elseif (love.keyboard.isDown(controls.left) or love.keyboard.isDown(controls.left_analog_left)) and direction ~= "right" then
        nextDirection = "left"
    elseif (love.keyboard.isDown(controls.right) or love.keyboard.isDown(controls.left_analog_right)) and direction ~= "left" then
        nextDirection = "right"
    end

    if love.keyboard.isDown(controls.b) then
        timeToUpdate = 0.1
    end

    if love.timer.getTime() % timeToUpdate < dt then
        moveSnake()
    end
end

function endGame()
    sounds.die:play()
    if score > highScore then
        isHighestScore = true
        highScore = score
        saveHighScore()
    end
    gameState = "scoreDisplay"
    gameOverTimer = 2 -- 2 seconds delay
end

function moveSnake()
    direction = nextDirection
    local head = snake[1]
    local newLevel = head.l

    if (currentLevel == 0 and gate2.x == head.x and gate2.y == head.y) then
        newLevel = 1
        currentLevel = 1
        spawnApple()
    elseif (currentLevel == 1 and gate1.x == head.x and gate1.y == head.y) then
        newLevel = 0
        currentLevel = 0
        spawnApple()
    end

    local newHead = {x = head.x, y = head.y, l = newLevel}

    if direction == "up" then
        newHead.y = newHead.y - 1
    elseif direction == "down" then
        newHead.y = newHead.y + 1
    elseif direction == "left" then
        newHead.x = newHead.x - 1
    elseif direction == "right" then
        newHead.x = newHead.x + 1
    end

    -- Check collision with walls
    if newHead.x < box.x or newHead.y < box.y or newHead.x >= box.w or newHead.y >= box.h then
        endGame()
        return
    end

    -- Check collision with self
    for _, segment in ipairs(snake) do
        if newHead.x == segment.x and newHead.y == segment.y and newHead.l == segment.l then
            endGame()
            return
        end
    end

    -- Move snake
    table.insert(snake, 1, newHead)

    -- Check if apple is eaten
    if newHead.x == apple.x and newHead.y == apple.y then
        score = score + 1        
        sounds.eat:play()
        spawnApple()
    else
        table.remove(snake) -- Remove tail
    end
end

function drawCircle(obj)
    love.graphics.circle("fill", obj.x * gridSize + gridSize / 2, obj.y * gridSize + gridSize / 2, gridSize / 2)
end

function drawSquare(obj)
    love.graphics.rectangle("fill", obj.x * gridSize, obj.y * gridSize, gridSize, gridSize)
end

function printCenter(text)
    love.graphics.printf(text, 0, (box.h * gridSize)/ 2 - 20, box.w * gridSize, "center")
end

function drawApple()
    if apple.x == nil or apple.y == nil then
        return
    end

    love.graphics.setColor(1, 0, 0)
    drawCircle(apple)
end

function drawSnake()
    love.graphics.setColor(0, 1, 0)
    for _, segment in ipairs(snake) do
        if (segment.l == currentLevel) then
            drawCircle(segment)
        end
    end
end

function drawGates()
    love.graphics.setColor(1, 1, 0)
    if currentLevel == 0 then
        drawSquare(gate2)
    elseif currentLevel == 1 then
        drawSquare(gate1)
    end
end

function drawHUD()
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 0, 0, box.w * gridSize, gridSize)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("Score: " .. score, 10, 2)    
    love.graphics.print("High Score: " .. highScore, 400, 2)
    if pause then
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("PAUSE", 280, 2)
    end
end

function love.draw()
    if gameState == "playing" then
        love.graphics.setShader(crtShader)
        drawApple()
        drawSnake()        
        drawGates()
        love.graphics.setShader()
        drawHUD()        
    elseif gameState == "scoreDisplay" then
        if isHighestScore then
            love.graphics.setColor(1, 1, 0)
            printCenter("Highest Score: " .. score)
        else
            love.graphics.setColor(1, 1, 1)
            printCenter("Score: " .. score)
        end
    elseif gameState == "gameover" then
        love.graphics.setColor(1, 0, 0)
        printCenter("Game Over\nPress Start to Restart")
    end
end

function love.keypressed(key)
    if key == controls.start and gameState == "gameover" then
        resetGame()
    else if gameState == "playing" and key == controls.start then
            pause = not pause
            sounds.pause:play()
        end
    end
end