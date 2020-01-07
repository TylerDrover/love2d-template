local font = 'assets/fonts/Raleway-Medium.ttf'
local fontb = 'assets/fonts/Raleway-Bold.ttf'

fonts  = {}

function fonts.load()
    fonts.large    = love.graphics.newFont(font, 30)
    fonts.med      = love.graphics.newFont(font, 20)
    fonts.small    = love.graphics.newFont(font, 10)
    fonts.large:setFilter( "nearest", "nearest" )
    fonts.med:setFilter( "nearest", "nearest" )
    fonts.small:setFilter( "nearest", "nearest" )

    --Bold
    fonts.large_bold    = love.graphics.newFont(fontb, 30)
    fonts.med_bold      = love.graphics.newFont(fontb, 20)
    fonts.small_bold    = love.graphics.newFont(fontb, 10)
    fonts.large_bold:setFilter( "nearest", "nearest" )
    fonts.med_bold:setFilter( "nearest", "nearest" )
    fonts.small_bold:setFilter( "nearest", "nearest" )
end

return fonts