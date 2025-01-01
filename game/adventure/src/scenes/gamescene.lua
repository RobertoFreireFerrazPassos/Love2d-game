local game = {
    load = function(self)
    end,
    update = function(self,dt)
    end,
    draw = function(self)
    end,    
    keypressed = function(self,key)
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