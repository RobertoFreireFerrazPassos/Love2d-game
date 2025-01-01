local intro = {
    introImage = love.graphics.newImage('sprites/intro.png'),
    timer = 0,
    delay = 2,
    update = function(self, dt)
        self.timer = self.timer + dt
    end,
    isFinished = function(self)
        return self.timer >= self.delay
    end,
    draw = function(self)
        love.graphics.draw(self.introImage,0,0)
    end
}

local function createIntroScene(sceneManager)
    return {
        intro = intro,
        enter = function(self)
        end,
        update = function(self, dt)
            intro:update(dt)
            if intro:isFinished() then
                sceneManager:switchTo("menu")
            end
        end,
        draw = function(self)
            intro:draw()
        end,
        keypressed = function(self, key)
        end
    }
end

return createIntroScene