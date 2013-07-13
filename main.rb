require 'bundler/setup'
require 'gosu'
require './lib/menu'


class GameWindow < Gosu::Window
  def initialize
    super 1280, 1024, false
    @game_state = :menu
    @main_menu = Menu.new(self)
    @main_menu.add_item("Play")
    @main_menu.add_item("Quit")
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
  	if @game_state == :menu
  		@main_menu.draw
  	end
  end
end

window = GameWindow.new
window.show