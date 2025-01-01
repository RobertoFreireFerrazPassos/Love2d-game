local function createMenuScene(sceneManager)
    return {
        menuImage = love.graphics.newImage('sprites/menu.png'),
        controls = require "src/utils/controls",
        enter = function(self)
        end,
        update = function(self, dt)
            if love.keyboard.isDown(self.controls.b) or love.keyboard.isDown(self.controls.start) then                
                sceneManager:switchTo("game")
            end
        end,
        draw = function(self)
            love.graphics.draw(self.menuImage,0,0)
        end,
    }
end

return createMenuScene