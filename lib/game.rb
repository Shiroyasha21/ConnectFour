require_relative 'board'

class Game

  def place_token(place, symbol)
    index = valid_move?(place)

    if index.is_a?(Integer)
      grid[index][place] = symbol
    else
      puts 'The move is invalid, try again.'
    end
  end
  
end