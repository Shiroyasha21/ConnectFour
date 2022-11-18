# frozen_string_literal: true

require_relative '../lib/display'

describe display do
  subject(:display) { Display.new }

  describe '#update_display' do
    context 'when player1 makes a move' do
      it 'stores player1 move' do
        move = '3'
        player = 1
        player_moves = display.player1_moves
        expect { display.update_display(move, player) }.to change { player_moves.length }.by(1)
      end
    end

    context 'when player2 makes a move' do
      it 'stores player2 move' do
        move = '2'
        player = 2
        player_moves = display.player2_moves
        expect { display.update_display(move, player) }.to change { player_moves.length }.by(1)
      end
    end
  end
end
