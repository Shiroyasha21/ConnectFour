# frozen_string_literal: true

# Player class with moves and details
class Player
  attr_accessor :name, :symbol, :player_moves

  def initialize
    @name = name
    @symbol = symbol
    @player_moves = []
  end

  def move(move)
    @player_moves.push(move)
  end
end
