# frozen_string_literal: true
require_relative '../lib/player'

describe Player do
  let(:player) { Player.new }

  describe '#initialize' do
    it "take the player's name" do
      player.name = 'Zeke'
      expect(player.name).to eq('Zeke')
    end

    it "take the player's symbol" do
      player.symbol = 'X'
      expect(player.symbol).to eq('X')
    end
  end

  describe '#move' do
    it 'register the move' do
      player.move(5)
      player.move(3)
      expect(player.player_moves).to eq([5,3])
    end
  end

end