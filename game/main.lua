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

local gameOverTimer = 0
local gridSize = 20
local snake = {}
local apple = {}
local direction = "right"
local nextDirection = "right"
local gameState = "playing"
local blueSquare = {x = 8, y = 6}
local yellowSquare = {x = 24, y = 18}
local currentLevel = 0
local score = 0

function love.load()
    love.window.setMode(640, 480, { resizable = false })
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
    
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
    score = 0

    spawnApple()
end

function spawnApple()
    apple.x = love.math.random(1, love.graphics.getWidth() / gridSize - 1)
    apple.y = love.math.random(1, love.graphics.getHeight() / gridSize - 1)
end

function love.update(dt)
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

    if love.timer.getTime() % 0.2 < dt then
        moveSnake()
    end
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
        gameState = "scoreDisplay"
        gameOverTimer = 2 -- 2 seconds delay
        return
    end

    -- Check collision with self
    for _, segment in ipairs(snake) do
        if newHead.x == segment.x and newHead.y == segment.y and newHead.l == segment.l then
            gameState = "scoreDisplay"
            gameOverTimer = 2 -- 2 seconds delay
            return
        end
    end

    -- Move snake
    table.insert(snake, 1, newHead)

    -- Check if apple is eaten
    if newHead.x == apple.x and newHead.y == apple.y then
        score = score + 1
        spawnApple()
    else
        table.remove(snake) -- Remove tail
    end
end

function love.draw()
    if gameState == "playing" then
        -- Draw apple
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle("fill", apple.x * gridSize, apple.y * gridSize, gridSize, gridSize)

        -- Draw snake
        love.graphics.setColor(0, 1, 0)
        for _, segment in ipairs(snake) do
            if (segment.l == currentLevel) then
                love.graphics.rectangle("fill", segment.x * gridSize, segment.y * gridSize, gridSize, gridSize)
            end
        end

        if currentLevel == 0 then
            love.graphics.setColor(1, 1, 0)
            love.graphics.rectangle("fill", yellowSquare.x * gridSize, yellowSquare.y * gridSize, gridSize, gridSize)
        elseif currentLevel == 1 then
            love.graphics.setColor(0, 0, 1)
            love.graphics.rectangle("fill", blueSquare.x * gridSize, blueSquare.y * gridSize, gridSize, gridSize)
        end

        -- Draw score
        love.graphics.setColor(1, 1, 1)
        love.graphics.print("Score: " .. score, 10, 10)
    elseif gameState == "scoreDisplay" then
        love.graphics.setColor(1, 1, 1)
        love.graphics.printf("Score: " .. score, 0, love.graphics.getHeight() / 2 - 20, love.graphics.getWidth(), "center")
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
