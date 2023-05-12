# frozen_string_literal: true
require_relative '../lib/game'

describe Game do
  let(:game) { Board.new }

  describe "#place_token" do
    it "place the player's token in the board" do
      game.place_token(4, 'O')
      game.place_token(1, 'O')
      game.place_token(2, 'X')

      expect(game.grid[0][4]).to eq('O')
      expect(game.grid[0][1]).to eq('O')
      expect(game.grid[0][2]).to eq('X')
    end

    it 'places a token if the move is valid' do
      game.grid[0][0] = 'X'
      game.grid[1][0] = 'X'

      game.place_token(2, 'X')
      expect(game.grid[0][2]).to eq('X')
    end

    it 'returns error if the move is invalid' do
      game.grid[0][0] = 'X'
      game.grid[1][0] = 'X'
      game.grid[2][0] = 'X'
      game.grid[3][0] = 'X'
      game.grid[4][0] = 'X'
      game.grid[5][0] = 'X'

      allow(STDOUT).to receive(:puts)
      game.place_token(0, 'X')
      expect { game.place_token(0, 'X') }.to output("The move is invalid, try again.\n").to_stdout
    end
  end
end