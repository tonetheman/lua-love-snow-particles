

-- set the background color to off white
love.graphics.setBackgroundColor(0xee,0xe9,0xe9)

local snow_img = love.graphics.newImage("small_snow_flake_32.png")
local ps = love.graphics.newParticleSystem(snow_img, 10)
ps:setBufferSize(1000)
ps:setAreaSpread("normal",300,0)
ps:setLinearAcceleration(1,500,1,600)
-- ps:setRadialAcceleration(100,100)
ps:setSpeed(1,3)
ps:setEmissionRate(100)
ps:setDirection(.45)
ps:setParticleLifetime(1,3.5)



function love.update(dx)
	ps:update(dx)
end


function love.draw()
	love.graphics.clear()
	love.graphics.draw(ps,100,100)
end

