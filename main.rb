require 'gosu'
require 'bundler/setup'


class GameWindow < Gosu::Window
  def initialize
    super 1280, 1024, false
    self.caption = "Game Jam!"
  end
  
  def update
  end
  
  def draw
  end
end

window = GameWindow.new
window.show