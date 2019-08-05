states = {}

splash = require('src.splash.state')
menu = require('src.menu.state')
game = require('src.game.state')
require('src.input')

local state

function states:load()
    log.debug('Loading States...')
    mouse = true

    state = splash
    input:load()
    state:load()
end

function states:unload()
    state:unload()
end

function states:update(dt)
    input:update(dt)
    state:update(dt)
end

function states:draw()
    state:draw()
end

function states:keypressed(key)
    input:keypressed(key)
end

function states:wheelmoved(y)
    input:wheelmoved(y)
end

function pushState(s)
    state:unload()
    log.debug('State\t '..state.id..' -> '..s.id)
    
    state = s
    if not state.running then
        state:load()
    end
end