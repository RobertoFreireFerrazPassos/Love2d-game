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

function love.load()
    camera = require 'libraries/camera'
    cam = camera()

    anim8 = require 'libraries/anim8'
    love.graphics.setDefaultFilter("nearest", "nearest")

    sti = require 'libraries/sti'
    gameMap = sti('maps/testMap.lua')

    player = {}
    player.x = 400
    player.y = 200
    player.speed = 5
    player.spriteSheet = love.graphics.newImage('sprites/player-sheet.png')
    player.grid = anim8.newGrid( 12, 18, player.spriteSheet:getWidth(), player.spriteSheet:getHeight() )

    player.animations = {}
    player.animations.down = anim8.newAnimation( player.grid('1-4', 1), 0.2 )
    player.animations.left = anim8.newAnimation( player.grid('1-4', 2), 0.2 )
    player.animations.right = anim8.newAnimation( player.grid('1-4', 3), 0.2 )
    player.animations.up = anim8.newAnimation( player.grid('1-4', 4), 0.2 )

    player.anim = player.animations.left

    sounds = {}
    sounds.blip = love.audio.newSource("sounds/sound.wav", "static");
    sounds.music = love.audio.newSource("sounds/music.wav", "stream");
    sounds.music:play()

    -- Set the window resolution
    love.window.setMode(640, 480, { resizable = false })

    -- Set a background color
    love.graphics.setBackgroundColor(0.2, 0.2, 0.2) -- Dark gray
end

function love.update(dt)
    local isMoving = false

    if (love.keyboard.isDown(controls.right) or love.keyboard.isDown(controls.left_analog_right)) then
        player.x = player.x + player.speed
        player.anim = player.animations.right        
        sounds.blip:play()
        isMoving = true
    end

    if (love.keyboard.isDown(controls.left) or love.keyboard.isDown(controls.left_analog_left)) then
        player.x = player.x - player.speed
        player.anim = player.animations.left
        isMoving = true
    end

    if (love.keyboard.isDown(controls.down) or love.keyboard.isDown(controls.left_analog_down)) then
        player.y = player.y + player.speed
        player.anim = player.animations.down
        isMoving = true
    end

    if (love.keyboard.isDown(controls.up) or love.keyboard.isDown(controls.left_analog_up)) then
        player.y = player.y - player.speed
        player.anim = player.animations.up
        isMoving = true
    end

    if isMoving == false then
        player.anim:gotoFrame(2)
    end

    player.anim:update(dt)

    -- Update camera position
    cam:lookAt(player.x, player.y)

    -- This section prevents the camera from viewing outside the background
    -- First, get width/height of the game window
    local w = love.graphics.getWidth()
    local h = love.graphics.getHeight()

    -- Left border
    if cam.x < w/2 then
        cam.x = w/2
    end

    -- Right border
    if cam.y < h/2 then
        cam.y = h/2
    end

    -- Get width/height of background
    local mapW = gameMap.width * gameMap.tilewidth
    local mapH = gameMap.height * gameMap.tileheight

    -- Right border
    if cam.x > (mapW - w/2) then
        cam.x = (mapW - w/2)
    end
    -- Bottom border
    if cam.y > (mapH - h/2) then
        cam.y = (mapH - h/2)
    end
end

function love.draw()
    cam:attach()
        gameMap:drawLayer(gameMap.layers["Ground"])
        gameMap:drawLayer(gameMap.layers["Trees"])
        player.anim:draw(player.spriteSheet, player.x, player.y, nil, 6, nil, 6, 9)
    cam:detach()
end