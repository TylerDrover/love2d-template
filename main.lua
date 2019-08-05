json =  require('libs.json')
log = require('utils.log')

require('src.states')

DEBUG = true

function love.load()
    log.info('DIR Path: '..love.filesystem.getSaveDirectory())

    if love.filesystem.getInfo('config') == nil then
        log.debug('Creating Config dir: '..love.filesystem.getSaveDirectory()..'/config')
        if love.filesystem.createDirectory('config') then
            log.debug('Config dir created')
        else
            log.error('Unable to create Config dir!')
        end
    end

    if love.filesystem.getInfo('saves') == nil then
        log.debug('Creating Saves dir: '..love.filesystem.getSaveDirectory()..'/screenshots')
        if love.filesystem.createDirectory('saves') then
            log.debug('Saves dir created')
        else
            log.error('Unable to create Save dir!')
        end
    end

    if love.filesystem.getInfo('screenshots') == nil then
        log.debug('Creating Screenshot dir: '..love.filesystem.getSaveDirectory()..'/screenshots')
        if love.filesystem.createDirectory('screenshots') then
            log.debug('Screenshot dir created')
        else
            log.error('Unable to create Screenshot dir!')
        end
    end
    
    states:load()
end

function love.unload()
    states:unload()
    log.debug('Forced Quit')
    love.event.quit()
end

function love.update(dt)
    states:update(dt)
end

function love.draw()
    states:draw()
end

function love.keypressed(key)
    -- Force Quit --
    if key == '`' then
       love.unload()
    end
    states:keypressed(key)
 end

 function love.wheelmoved(x,y)
    states:wheelmoved(y)
end