local font = 'assets/fonts/Raleway-Medium.ttf'
local fontb = 'assets/fonts/Raleway-Bold.ttf'

fonts = {
    large    = love.graphics.newFont(font, 36)
    medlarge = love.graphics.newFont(font, 28)
    med      = love.graphics.newFont(font, 24)
    smallmed = love.graphics.newFont(font, 18)
    small    = love.graphics.newFont(font, 12)

    --Bold
    large_b    = love.graphics.newFont(fontb, 36)
    medlarge_b = love.graphics.newFont(fontb, 28)
    med_b      = love.graphics.newFont(fontb, 24)
    smallmed_b = love.graphics.newFont(fontb, 18)
    small_b    = love.graphics.newFont(fontb, 12)

    large:setFilter( "nearest", "nearest" )
    medlarge:setFilter( "nearest", "nearest" )
    med:setFilter( "nearest", "nearest" )
    smallmed:setFilter( "nearest", "nearest" )
    small:setFilter( "nearest", "nearest" )

    large_b:setFilter( "nearest", "nearest" )
    medlarge_b:setFilter( "nearest", "nearest" )
    med_b:setFilter( "nearest", "nearest" )
    smallmed_b:setFilter( "nearest", "nearest" )
    small_b:setFilter( "nearest", "nearest" )
}