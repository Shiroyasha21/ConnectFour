# frozen_string_literal: true
require_relative '../lib/board'

describe Board do
  let(:game) { Board.new }
  describe "#initializing the board" do
    it "creates a board with the correct dimensions" do
      expect(game.grid.length).to eq(6)
      expect(game.grid[0].length).to eq(7)
    end
  end

  describe "#render" do
    it "render the current state of the board" do
      game.place_token(0, 'X')
      game.place_token(3, 'X')
      game.place_token(5, 'X')

      expected_output = <<~BOARD
        | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
        |---------------------------|
        | X | O |   | X |   |   |   |
        |---------------------------|
        |   |   |   |   |   |   |   |
        |---------------------------|
        |   |   |   |   |   |   |   |
        |---------------------------|
        |   |   |   |   |   |   |   |
        |---------------------------|
        |   |   |   |   |   |   |   |
      BOARD

      expect { game.render }.to output(expected_output).to_stdout
    end
  end
end