input = {}

function input:load()
    movespd = 500

    input.camera = {}
    input.camera.x = 0
    input.camera.y = 0

    input.mouse = {}
    input.mouse.down = false
    input.mouse.x = 0
    input.mouse.y = 0
    input.mouse.lock = false
    
    input.scale = 1
    input.rotation = 1 

    input.keys = {}
    input.keys = {
        up = 'w',
        down = 's',
        left = 'a', 
        right = 'd',
        rotate_left = 'q',
        rotate_right = 'e',
        rotate_block = 'space',
        screen_shot = 'p'
    }
    input.key = nil

end

function input:update(dt)
    -- Up Down
    if love.keyboard.isDown(input.keys.up) then
        input.camera.y = movespd * dt
    elseif love.keyboard.isDown(input.keys.down) then
        input.camera.y = movespd * -dt
    else
        input.camera.y = 0
    end

    -- Left Right
    if love.keyboard.isDown(input.keys.left) then
        input.camera.x = movespd * dt
    elseif love.keyboard.isDown(input.keys.right) then
        input.camera.x = movespd * -dt
    else
        input.camera.x = 0
    end

    -- Mouse
    input.mouse.down = love.mouse.isDown(1)
    input.mouse.x, input.mouse.y = love.mouse.getPosition()
end

function input:keypressed(key)
    input.key = key
end

function input:wheelmoved(y)
    input.scale = input.scale + y * 0.01
    if input.scale > 1 then
        input.scale = 1
    end
    if input.scale < 0.3 then
        input.scale = 0.3
    end
end