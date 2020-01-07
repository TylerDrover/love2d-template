local path = 'src.game.'
local spritesheet_img = 'assets/spritesheets/spritesheet.png'
local spritesheet_json = 'assets/spritesheets/spritesheet.json'

require(path..'world.world')
require(path..'player.player')

state = {}

state.id = 'GAME'
state.runnning = false

function state:load()
    log.debug('Loading GAME...')

    world:load()
    player:load()

    state.running = true
end

function state:unload()
    log.debug('Unloading GAME...')
    state.running = false
end

function state:update(dt)
    world:update(dt)
    player:update(dt)
end

function state:draw()
    world:draw()
    player:draw()

    love.graphics.setFont(fonts.small)
    local stats = love.graphics.getStats()
    log.screen('Current FPS: '..tostring(love.timer.getFPS( ))..'\nMem: '..math.ceil(stats.texturememory/1000)..'kb', 20, 20, 150, 2)
end

return state