local introScene = {
    enter = function(self)
        print("Entered Intro Scene")
    end,
    update = function(self, dt)
        -- Update logic for intro scene
    end,
    draw = function(self)
        love.graphics.print("Intro Scene", 10, 10)
    end,
    keypressed = function(self, key)
        if key == "return" then
            sceneManager:switchTo("menu")
        end
    end
}

return introScene