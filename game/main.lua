-- alt + l
-- compact main.lua to zip file and rename to .love extension
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
    loadHighScore()
    resetGame()
end

function resetGame()
    snake = {
        {x = 10, y = 10, l = 0},
        {x = 9, y = 10, l = 0},
        {x = 8, y = 10, l = 0},
    }
    direction = "right"
    nextDirection = "right"
    gameState = "playing"
    gameOverTimer = 0
    gridSize = 20
    apple = {}
    direction = "right"
    nextDirection = "right"
    gameState = "playing"
    blueSquare = {x = 8, y = 6}
    yellowSquare = {x = 24, y = 18}
    currentLevel = 0
    score = 0
    isHighestScore = false
    sounds = {}
    sounds.eat = love.audio.newSource("sounds/coin.wav", "static")
    sounds.die = love.audio.newSource("sounds/hurt.wav", "static")
    spawnApple()
end

function spawnApple()
    apple.x = love.math.random(1, love.graphics.getWidth() / gridSize - 1)
    apple.y = love.math.random(1, love.graphics.getHeight() / gridSize - 1)
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

    if (currentLevel == 0 and yellowSquare.x == head.x and yellowSquare.y == head.y) then
        newLevel = 1
        currentLevel = 1
        spawnApple()
    elseif (currentLevel == 1 and blueSquare.x == head.x and blueSquare.y == head.y) then
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
    if newHead.x < 0 or newHead.y < 0 or newHead.x >= love.graphics.getWidth() / gridSize or newHead.y >= love.graphics.getHeight() / gridSize then
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

function drawRectangle(obj)
    love.graphics.rectangle("fill", obj.x * gridSize, obj.y * gridSize, gridSize, gridSize)
end

function love.draw()
    if gameState == "playing" then
        -- Draw apple
        love.graphics.setColor(1, 0, 0)
        drawCircle(apple)

        -- Draw snake
        love.graphics.setColor(0, 1, 0)
        for _, segment in ipairs(snake) do
            if (segment.l == currentLevel) then
                drawCircle(segment)
            end
        end

        if currentLevel == 0 then
            love.graphics.setColor(1, 1, 0)
            drawRectangle(yellowSquare)
        elseif currentLevel == 1 then
            love.graphics.setColor(0, 0, 1)
            drawRectangle(blueSquare)
        end

        -- Draw score
        love.graphics.setColor(1, 1, 1)
        love.graphics.print("Score: " .. score, 10, 10)
        love.graphics.print("High Score: " .. highScore, 350, 10)
    elseif gameState == "scoreDisplay" then
        if isHighestScore then
            love.graphics.setColor(1, 1, 0)
            love.graphics.printf("Highest Score: " .. score, 0, love.graphics.getHeight() / 2 - 20, love.graphics.getWidth(), "center")
        else
            love.graphics.setColor(1, 1, 1)
            love.graphics.printf("Score: " .. score, 0, love.graphics.getHeight() / 2 - 20, love.graphics.getWidth(), "center")
        end
    elseif gameState == "gameover" then
        love.graphics.setColor(1, 0, 0)
        love.graphics.printf("Game Over\nPress Enter to Restart", 0, love.graphics.getHeight() / 2 - 20, love.graphics.getWidth(), "center")
    end
end

function love.keypressed(key)
    if key == controls.start and gameState == "gameover" then
        resetGame()
    end
end
