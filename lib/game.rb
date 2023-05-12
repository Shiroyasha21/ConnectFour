require_relative 'board'

class Game
  attr_reader :grid

  def initialize
    @new_game = Board.new
    @grid = @new_game.grid
  end

  def place_token(place, symbol)
    index = @new_game.valid_move?(place)

    if index.is_a?(Integer)
      @new_game.grid[index][place] = symbol
      @new_game.render_board
    else
      puts 'The move is invalid, try again.'
    end
  end
end

