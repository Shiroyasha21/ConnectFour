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

  describe "#valid_move?" do
    it "returns true for a valid move in an empty column" do
      expect(game.valid_move?(4)).to be_an_instance_of(Integer)
    end

    it 'returns the correct integer for a valid move in a column with holes' do
      game.grid[0][0] = 'X'
      game.grid[1][0] = 'X'

      expect(game.valid_move?(0)).to eq(2)
    end

    it "returns false if the move is in a full column" do
      game.grid[0][0] = 'X'
      game.grid[1][0] = 'X'
      game.grid[2][0] = 'X'
      game.grid[3][0] = 'X'
      game.grid[4][0] = 'X'
      game.grid[5][0] = 'X'

      expect(game.valid_move?(0)).to be false
    end
  end

  describe "#render" do
    it "render the current state of the board without tokens" do
      game.grid[0][0] = 'X'
      game.grid[0][1] = 'O'

      expected_output = <<~OUTPUT
        | · | · | · | · | · | · | · |
        | · | · | · | · | · | · | · |
        | · | · | · | · | · | · | · |
        | · | · | · | · | · | · | · |
        | · | · | · | · | · | · | · |
        | \e[31m●\e[0m | \e[34m●\e[0m | · | · | · | · | · |
        -----------------------------
        | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
      OUTPUT

      expect { game.render_board }.to output(expected_output).to_stdout
    end
  end
end