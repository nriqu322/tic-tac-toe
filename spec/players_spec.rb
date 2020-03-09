# spec/player_spec.rb
require './lib/players.rb'

RSpec.describe Players do
  let(:player) { Players.new('Oscar', 'X') }
  describe '#name' do
    it 'Player name' do
      expect(player.name).to eql('Oscar')
    end
  end
  describe '#sym' do
    it 'Player symbol' do
      expect(player.sym).to eql('X')
    end
  end
  describe '#score' do
    it 'Player score' do
      player.inc_score
      player.inc_score
      player.inc_score
      expect(player.score).to eql(3)
    end
  end
end
