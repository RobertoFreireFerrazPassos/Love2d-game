local gameScene = {
    enter = function(self)
        print("Entered Game Scene")
    end,
    update = function(self, dt)
        -- Update logic for game scene
    end,
    draw = function(self)
        love.graphics.print("Game Scene", 10, 10)
    end
}

return gameScene