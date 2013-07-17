require 'bundler/setup'
require 'gosu'
require './lib/menu'
require './lib/player'


class GameWindow < Gosu::Window
  def initialize
    super 1280, 1024, false
    @game_state = :menu
    quit = lambda { self.close }
    play = lambda { @game_state = :play}
    @main_menu = Menu.new(self, "assets/menu.png", [play, quit])
    @cursor = Gosu::Image.new(self, 'assets/cursor.png')
    self.caption = "Game Jam!"
    @player_1 = Player.new("Player 1", "assets/char1.png", 100, 100, self)
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
  		@cursor.draw self.mouse_x, self.mouse_y, 5
  	when :play
  		@player_1.draw
  	end
  end

  def button_down (id)
  	case id
  	when Gosu::MsLeft
  		@main_menu.clicked
  	when Gosu::KbEscape
  		@game_state = :menu
  	when Gosu::KbRight
  		@player_1.go_right
  	when Gosu::KbLeft
  		@player_1.go_left
  	when Gosu::KbUp
  		@player_1.go_up
  	when Gosu::KbDown
  		@player_1.go_down
  	end

  end
end

window = GameWindow.new
window.show
