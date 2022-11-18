# frozen_string_literal: false

# Creates the display
class Display
  attr_reader :player1_moves, :player2_moves

  def initialize
    @player1_moves = []
    @player2_moves = []
    create_display
  end

  def create_display
    display = []
    base = [0,1,2,3,4,5,6,7]
    base.each do |i|
      (0..6).each do |j|
        
        
      end
    end
    p display
  end

  def update_display(move, player)
    player == 1 ? @player1_moves << move : @player2_moves << move
    create_display
  end
end

b = Display.new
b.create_display