local function configureGame(sceneManager)
    love.window.setMode(640, 480, { resizable = false })
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
    pixelFont = love.graphics.newFont("fonts/slkscreb.ttf", 16)
    love.graphics.setFont(pixelFont)
end

return configureGame

