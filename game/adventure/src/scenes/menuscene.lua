local menuScene = {
    enter = function(self)
        print("Entered Menu Scene")
    end,
    update = function(self, dt)
        -- Update logic for menu scene
    end,
    draw = function(self)
        love.graphics.print("Menu Scene", 10, 10)
    end,
    keypressed = function(self, key)
        if key == "space" then
            sceneManager:switchTo("game")
        end
    end
}

return menuScene