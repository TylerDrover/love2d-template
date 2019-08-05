state = {}

state.id = "MENU"

function state:load()
    log.debug("Loading MENU...")
end

function state:unload()
    log.debug("Unoading MENU...")
end

function state:update(dt)

end

function state:draw()
    love.graphics.print('Menu', 10, 10)
end

return state