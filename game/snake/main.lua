-- alt + l
-- compact all files in same level as file main.lua to zip file and rename to .love extension
local configureGame = require "src/config/gameconfiguration"
configureGame()

local SceneManager = require "src/scenes/scenemanager"
local createIntroScene = require "src/scenes/introscene"
local createMenuScene = require "src/scenes/menuscene"
local createGameScene = require "src/scenes/gamescene"
local sceneManager = SceneManager:new()

local introScene = createIntroScene(sceneManager)
local menuScene = createMenuScene(sceneManager)
local gameScene = createGameScene(sceneManager)
sceneManager:registerScene("intro", introScene)
sceneManager:registerScene("menu", menuScene)
sceneManager:registerScene("game", gameScene)

function love.load()
    sceneManager:switchTo("intro")
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