class Menu
	def initialize(window)
		@font = Gosu::Font.new(window, Gosu::default_font_name, 20)
		@items = Array.new
		@text_x, @text_y = window.width / 3,0
	end

	def draw()
		@items.each do | text |
			@font.draw(text, @text_x, @text_y += 100, 3, 1.0, 1.0, 0xffffff00)
		end
		@text_y = 0
	end

	def add_item(text)
		@items.push text
	end

	def update()
		#someday!
	end

end