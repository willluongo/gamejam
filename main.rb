require 'bundler/setup'
require 'gosu'
require './lib/menu'


class GameWindow < Gosu::Window
  def initialize
    super 1280, 1024, false
    @game_state = :menu
    quit = lambda { self.close }
    play = lambda { @game_state = :play}
    @main_menu = Menu.new(self, "assets/menu.png", [play, quit])
    @cursor = Gosu::Image.new(self, 'assets/cursor.png')
    self.caption = "Game Jam!"
  end
  
  def update
  	#game logic goes here
  	case @game_state
  	when :menu
  		@main_menu.update
  	end
  end
  
  def draw
  	# rendering stuff goes here
  	case @game_state
  	when :menu
  		@main_menu.draw
  	end
  	@cursor.draw self.mouse_x, self.mouse_y, 5
  end

  def button_down (id)
  	case id
  	when Gosu::MsLeft
  		@main_menu.clicked
  	when Gosu::KbEscape
  		@game_state = :menu
  	end

  end
end

window = GameWindow.new
window.show