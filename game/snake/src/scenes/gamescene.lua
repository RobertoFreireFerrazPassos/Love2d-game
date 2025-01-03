FileIO = require "src/utils/file"
fileIO = FileIO:new("gamestate.lua")

local game = {
    scoreToRemoveGates = 500,
    controls = require "src/utils/controls",
    highScore = 0,
    load = function(self)
        local content = fileIO:load()
        self.highScore = tonumber(content) or 0
        self:resetGame()
        self.crtShader = love.graphics.newShader("shaders/crt_shader.glsl")
    end,
    resetGame = function(self)
        self.snake = {
            {x = 10, y = 10, l = 0},
            {x = 9, y = 10, l = 0},
            {x = 8, y = 10, l = 0},
        }
        self.pause = false
        self.direction = "right"
        self.nextDirection = "right"
        self.gameState = "playing"
        self.gameOverTimer = 0
        self.gridSize = 20
        self.apple = {}
        self.direction = "right"
        self.nextDirection = "right"
        self.gameState = "playing"
        self.gate1 = {x = 8, y = 6}
        self.gate2 = {x = 24, y = 18}
        self.currentLevel = 0
        self.box = {}
        self.box.x = 0
        self.box.y = 1
        self.box.w = love.graphics.getWidth() / self.gridSize
        self.box.h = love.graphics.getHeight() / self.gridSize
        self.score = 0
        self.isHighestScore = false
        self.sounds = {}
        self.sounds.eat = love.audio.newSource("sounds/coin.wav", "static")
        self.sounds.die = love.audio.newSource("sounds/hurt.wav", "static")
        self.sounds.pause = love.audio.newSource("sounds/pause.wav", "static")
        self:spawnApple()
    end,
    spawnApple = function(self)
        local validPositions = {}
        for x = self.box.x, self.box.w - 1 do
            for y = self.box.y, self.box.h - 1 do
                local valid = true

                if ((self.gate1.x == x and self.gate1.y == y) or (self.gate2.x == x and self.gate2.y == y)) then
                    valid = false
                end

                for _, segment in ipairs(self.snake) do
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
        self.apple.x = validPositions[randIndex].x
        self.apple.y = validPositions[randIndex].y
    end,
    update = function(self,dt)
        local timeToUpdate = 0.2

        if self.gameState == "scoreDisplay" then
            self.gameOverTimer = self.gameOverTimer - dt
            if self.gameOverTimer <= 0 then
                self.gameState = "gameover"
            end
            return
        elseif self.gameState ~= "playing" then
            return
        end

        if self.pause then
            return
        end

        if self.score > self.scoreToRemoveGates then
            -- place outside of game area
            self.gate1 = {x = 100, y = 100}
            self.gate2 = {x = 100, y = 100}
        end

        if (love.keyboard.isDown(self.controls.up) or love.keyboard.isDown(self.controls.left_analog_up)) and self.direction ~= "down" then
            self.nextDirection = "up"
        elseif (love.keyboard.isDown(self.controls.down) or love.keyboard.isDown(self.controls.left_analog_down)) and self.direction ~= "up" then
            self.nextDirection = "down"
        elseif (love.keyboard.isDown(self.controls.left) or love.keyboard.isDown(self.controls.left_analog_left)) and self.direction ~= "right" then
            self.nextDirection = "left"
        elseif (love.keyboard.isDown(self.controls.right) or love.keyboard.isDown(self.controls.left_analog_right)) and self.direction ~= "left" then
            self.nextDirection = "right"
        end

        if love.keyboard.isDown(self.controls.b) then
            timeToUpdate = 0.1
        end

        if love.timer.getTime() % timeToUpdate < dt then
            self:moveSnake()
        end
    end,
    endGame = function(self)
        self.sounds.die:play()
        if self.score > self.highScore then
            self.isHighestScore = true
            self.highScore = self.score
            fileIO:save(self.highScore)
        end
        self.gameState = "scoreDisplay"
        self.gameOverTimer = 2 -- delay
    end,
    moveSnake = function(self)
        self.direction = self.nextDirection
        local head = self.snake[1]
        local newLevel = head.l

        if (self.currentLevel == 0 and self.gate2.x == head.x and self.gate2.y == head.y) then
            newLevel = 1
            self.currentLevel = 1
            self:spawnApple()
        elseif (self.currentLevel == 1 and self.gate1.x == head.x and self.gate1.y == head.y) then
            newLevel = 0
            self.currentLevel = 0
            self:spawnApple()
        end

        local newHead = {x = head.x, y = head.y, l = newLevel}

        if self.direction == "up" then
            newHead.y = newHead.y - 1
        elseif self.direction == "down" then
            newHead.y = newHead.y + 1
        elseif self.direction == "left" then
            newHead.x = newHead.x - 1
        elseif self.direction == "right" then
            newHead.x = newHead.x + 1
        end

        -- Check collision with walls
        if newHead.x < self.box.x or newHead.y < self.box.y or newHead.x >= self.box.w or newHead.y >= self.box.h then
            self:endGame()
            return
        end

        -- Check collision with self
        for _, segment in ipairs(self.snake) do
            if newHead.x == segment.x and newHead.y == segment.y and newHead.l == segment.l then
                self:endGame()
                return
            end
        end

        -- Move snake
        table.insert(self.snake, 1, newHead)

        -- Check if apple is eaten
        if newHead.x == self.apple.x and newHead.y == self.apple.y then
            self.score = self.score + 1        
            self.sounds.eat:play()
            self:spawnApple()
        else
            table.remove(self.snake) -- Remove tail
        end
    end,
    drawCircle = function(self,obj)
        love.graphics.circle("fill", obj.x * self.gridSize + self.gridSize / 2, obj.y * self.gridSize + self.gridSize / 2, self.gridSize / 2)
    end,    
    drawSquare = function(self,obj)
        love.graphics.rectangle("fill", obj.x * self.gridSize, obj.y * self.gridSize, self.gridSize, self.gridSize)
    end,    
    printCenter = function(self,text)
        love.graphics.printf(text, 0, (self.box.h * self.gridSize)/ 2 - 20, self.box.w * self.gridSize, "center")
    end,
    drawApple = function(self)
        if self.apple.x == nil or self.apple.y == nil then
            return
        end
    
        love.graphics.setColor(1, 0, 0)
        self:drawCircle(self.apple)
    end,    
    drawSnake = function(self)
        love.graphics.setColor(0, 1, 0)
        for _, segment in ipairs(self.snake) do
            if (segment.l == self.currentLevel) then
                self:drawCircle(segment)
            end
        end
    end,    
    drawGates = function(self)
        love.graphics.setColor(1, 1, 0)
        if self.currentLevel == 0 then
            self:drawSquare(self.gate2)
        elseif self.currentLevel == 1 then
            self:drawSquare(self.gate1)
        end
    end,    
    drawHUD = function(self)
        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("fill", 0, 0, self.box.w * self.gridSize, self.gridSize)
        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Score: " .. self.score, 10, 2)    
        love.graphics.print("High Score: " .. self.highScore, 400, 2)
        if self.pause then
            love.graphics.setColor(1, 0, 0)
            love.graphics.print("PAUSE", 280, 2)
        end
    end,
    draw = function(self)
        if self.gameState == "playing" then
            love.graphics.setShader(self.crtShader)
            self:drawApple()
            self:drawSnake()        
            self:drawGates()
            love.graphics.setShader()
            self:drawHUD()        
        elseif self.gameState == "scoreDisplay" then
            if self.isHighestScore then
                love.graphics.setColor(1, 1, 0)
                self:printCenter("Highest Score: " .. self.score)
            else
                love.graphics.setColor(1, 1, 1)
                self:printCenter("Score: " .. self.score)
            end
        elseif self.gameState == "gameover" then
            love.graphics.setColor(1, 0, 0)
            self:printCenter("Game Over\nPress Start to Restart")
        end
    end,    
    keypressed = function(self,key)
        if key == self.controls.start and self.gameState == "gameover" then
            self:resetGame()
        else if self.gameState == "playing" and key == self.controls.start then
                self.pause = not self.pause
                self.sounds.pause:play()
            end
        end
    end
}

local function createGameScene(sceneManager)
    return {
        game = game,
        enter = function(self)
            game:load()
        end,
        update = function(self, dt)
            game:update(dt)
        end,
        draw = function(self)
            game:draw()
        end,
        keypressed = function(self, key)
            game:keypressed(key)
        end
    }
end

return createGameScene