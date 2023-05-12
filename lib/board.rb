# The Board of the Game
class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(6) { Array.new(7, ' ') }
  end

  def valid_move?(column_index)
    column = grid.map { |row| row[column_index] }
    column.each_with_index do |row_cell, r_index|
      return r_index if row_cell == ' '
    end
    false
  end

  def render_board
    
  end
end
