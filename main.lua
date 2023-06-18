push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

player1_x = 70
player1_y = 100 

player2_x = 320
player2_y = 100

line_x = 216
line_y = 30

function love.load()
	
	medium_font = love.graphics.newFont('8bit_font.ttf', 8)
	love.graphics.setDefaultFilter('nearest', 'nearest')
	
	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = false,
		vsync = true
	})
	
	love.graphics.setFont(medium_font)

end


function love.update()
		
      if love.keyboard.isDown('w') then
              player1_y = player1_y - 10
      elseif  love.keyboard.isDown('s') then
	      player1_y = player1_y + 10
      end
		
      if love.keyboard.isDown('d') then
	      player1_x = player1_x + 10
      elseif  love.keyboard.isDown('a') then
	      player1_x = player1_x - 10
      end
		
		
		
		
      if love.keyboard.isDown('up') then
	      player2_y = player2_y - 10
      elseif  love.keyboard.isDown('down') then
	      player2_y = player2_y + 10
      end
		
      if love.keyboard.isDown('right') then
	      player2_x = player2_x + 10
      elseif  love.keyboard.isDown('left') then
	      player2_x = player2_x - 10
      end

end


function love.draw()
	push:start()
        love.graphics.clear(0/255, 0/255, 45/255, 255/255)

        love.graphics.printf(
		'Game',
		0,
		10,
		VIRTUAL_WIDTH,
		'center')
                
        love.graphics.rectangle('fill', player1_x, player1_y, 20,20)
        love.graphics.rectangle('fill', player2_x, player2_y, 20,20)
        love.graphics.rectangle('fill', line_x, line_y, 5, 243)

        push:finish()
end
       