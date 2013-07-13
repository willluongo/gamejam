class Player
	def initialize(player_name, image, start_x, start_y, window, z = 3, movement_speed = 10)
		@player_name = player_name
		@y = start_y
		@x = start_x
		@z = z
		@movement_speed = movement_speed
		@frames = Gosu::Image::load_tiles(window, image, 100, 100, false)
		@direction = :up
	end

	def update
	end

	def draw
		case @direction
		when :up
			@frames[1].draw(@x, @y, @z)
		when :down
			@frames[0].draw(@x, @y, @z)
		when :left
			@frames[2].draw(@x, @y, @z)
		when :right
			@frames[3].draw(@x, @y, @z)
		end
	end
	def go_right
		@x += @movement_speed
		@direction = :right
	end
	def go_left
		@x -= @movement_speed
		@direction = :left
	end
	def go_up
		@y -= @movement_speed
		@direction = :up
	end
	def go_down
		@y += @movement_speed
		@direction = :down
	end


end