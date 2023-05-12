# The Board of the Game
class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(6) { Array.new(7, ' ') }
    render_board
  end

  def valid_move?(column_index)
    column = grid.map { |row| row[column_index] }
    column.each_with_index do |row_cell, r_index|
      return r_index if row_cell == ' '
    end
    false
  end

  def render_board
    grid.reverse_each do |row|
      print_row(row)
    end
    puts '-----------------------------'
    puts '| 0 | 1 | 2 | 3 | 4 | 5 | 6 |'
  end

  private

  def print_row(row)
    row.each do |cell|
      print "| #{token_representation(cell)} "
    end
    puts "|"
  end

  def token_representation(token)
    case token
    when 'X'
      "\e[31m●\e[0m" # Red filled circle for Player 1's token
    when 'O'
      "\e[34m●\e[0m" # Blue filled circle for Player 2's token
    else
      '·' # Use a dot for an empty cell
    end
  end
end

