-- alt + l
-- compact all files in same level as file main.lua to zip file and rename to .love extension
local SceneManager = require "src/scenes/SceneManager"
local introScene = require "src/scenes/introscene"
local menuScene = require "src/scenes/menuscene"
local gameScene = require "src/scenes/gamescene"
local sceneManager = SceneManager:new()

sceneManager:registerScene("intro", introScene)
sceneManager:registerScene("menu", menuScene)
sceneManager:registerScene("game", gameScene)

function love.load()
    sceneManager:switchTo("game")
end

function love.update(dt)
    sceneManager:update(dt)
end

function love.draw()
    sceneManager:draw()
end

function love.keypressed(key)
    sceneManager:keypressed(key)
end

function love.keyreleased(key)
    sceneManager:keyreleased(key)
end