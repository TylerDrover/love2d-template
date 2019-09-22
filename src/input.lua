input = {}

function input:load()
    input.camera = {}
    input.camera.x = 0
    input.camera.y = 0

    input.mouse = {}
    input.mouse.x = 0
    input.mouse.y = 0
end

function input:update(dt)
    -- Mouse
    input.mouse.x, input.mouse.y = love.mouse.getPosition()
end

function input:keypressed(key)
    
end

function input:wheelmoved(y)

end