#spec/tic-tac-toe.rb
require './lib/board.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  describe "#check_symbol_victory" do
    it 'row 1 victory' do
      board.player_move("1","1","X")
      board.player_move("1","2","X")
      board.player_move("1","3","X")  
      expect(board.check_symbol_victory("X")).to eql(true)
    end  
    it 'row 2 victory' do
      board.player_move("2","1","X")
      board.player_move("2","2","X")
      board.player_move("2","3","X")  
      expect(board.check_symbol_victory("X")).to eql(true)
    end  
    it 'row 3 victory' do
      board.player_move("3","1","X")
      board.player_move("3","2","X")
      board.player_move("3","3","X")  
      expect(board.check_symbol_victory("X")).to eql(true)
    end  
  end
  describe "#isfull?" do
    it 'check if board full' do
      board.player_move("1","1","X")
      board.player_move("1","2","X")
      board.player_move("1","3","X")  
      board.player_move("2","1","X")
      board.player_move("2","2","X")
      board.player_move("2","3","X")  
      board.player_move("3","1","X")
      board.player_move("3","2","X")
      board.player_move("3","3","X")  
      expect(board.isfull?).to eql(true)
    end        
  end
  describe "#space_occupied?(row, col)" do
    it 'check if board full' do
      board.player_move("1","2","X")
      expect(board.space_occupied?("2", "1")).to eql(true)
    end        
  end
end