state = {}

state.id = "SPLASH"

local timer 

function state:load()
    log.debug("Loading SPLASH...")
    timer = 1
end

function state:unload()
    log.debug("Unoading SPLASH...")
end

function state:update(dt)
    if timer < 0 then
        pushState(game)
    end
    timer = timer - dt
end

function state:draw()
    love.graphics.print('Splash', 10, 10)
end

return state