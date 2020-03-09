# spec/board_spec.rb
require_relative '../lib/board.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  describe '#check_symbol_victory' do
    it 'col 1 victory' do
      board.player_move('1', '1', 'X')
      board.player_move('1', '2', 'X')
      board.player_move('1', '3', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'col 2 victory' do
      board.player_move('2', '1', 'X')
      board.player_move('2', '2', 'X')
      board.player_move('2', '3', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'col 3 victory' do
      board.player_move('3', '1', 'X')
      board.player_move('3', '2', 'X')
      board.player_move('3', '3', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'col non victory' do
      board.player_move('3', '1', 'X')
      board.player_move('1', '2', 'X')
      board.player_move('3', '3', 'X')
      expect(board.check_symbol_victory('X')).to eql(false)
    end
    it 'row 1 victory' do
      board.player_move('1', '1', 'X')
      board.player_move('2', '1', 'X')
      board.player_move('3', '1', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'row 2 victory' do
      board.player_move('1', '2', 'X')
      board.player_move('2', '2', 'X')
      board.player_move('3', '2', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'row 3 victory' do
      board.player_move('1', '3', 'X')
      board.player_move('2', '3', 'X')
      board.player_move('3', '3', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'row non victory' do
      board.player_move('1', '1', 'X')
      board.player_move('2', '3', 'X')
      board.player_move('3', '1', 'X')
      expect(board.check_symbol_victory('X')).to eql(false)
    end
    it 'diagonal 1 victory' do
      board.player_move('1', '1', 'X')
      board.player_move('2', '2', 'X')
      board.player_move('3', '3', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'diagonal 2 victory' do
      board.player_move('1', '3', 'X')
      board.player_move('2', '2', 'X')
      board.player_move('3', '1', 'X')
      expect(board.check_symbol_victory('X')).to eql(true)
    end
    it 'diagonal non victory' do
      board.player_move('1', '3', 'X')
      board.player_move('2', '2', 'X')
      board.player_move('3', '3', 'X')
      expect(board.check_symbol_victory('X')).to eql(false)
    end
  end
  describe '#isfull?' do
    it 'check if board full' do
      board.player_move('1', '1', 'X')
      board.player_move('1', '2', 'X')
      board.player_move('1', '3', 'X')
      board.player_move('2', '1', 'X')
      board.player_move('2', '2', 'X')
      board.player_move('2', '3', 'X')
      board.player_move('3', '1', 'X')
      board.player_move('3', '2', 'X')
      board.player_move('3', '3', 'X')
      expect(board.isfull?).to eql(true)
    end
    it 'check if board not full' do
      board.player_move('1', '1', 'X')
      board.player_move('1', '2', 'X')
      board.player_move('1', '3', 'X')
      board.player_move('2', '1', 'X')
      board.player_move('2', '2', 'X')
      board.player_move('2', '3', 'X')
      board.player_move('3', '1', 'X')
      board.player_move('3', '2', 'X')
      expect(board.isfull?).to eql(false)
    end
  end
  describe '#space_occupied?(row, col)' do
    it 'check if space occupied' do
      board.player_move('1', '2', 'X')
      expect(board.space_occupied?('2', '1')).to eql(true)
    end
    it 'check if space empty' do
      board.player_move('1', '2', 'X')
      expect(board.space_occupied?('3', '1')).to eql(false)
    end
  end
  describe '#display' do
    it 'check initial display' do
      board.player_move('1', '1', 'O')
      board.player_move('2', '1', 'X')
      board.player_move('3', '1', 'O')
      board.player_move('2', '2', 'X')
      # rubocop : disable Layout/TrailingWhitespace
      display_result = %(  c1  c2  c3
r1 O | X | O
  ---+---+---
r2   | X |  
  ---+---+---
r3   |   |  

)
      # rubocop : enable Layout/TrailingWhitespace
      expect(board.display).to eql(display_result)
    end
  end
end
