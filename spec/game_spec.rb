require 'rpsgame'

describe Game do

  subject { described_class.new("scissors") }

  describe '#pc_weapon' do
    it 'selects a weapon for the pc' do
      srand(4)
      expect(subject.pc_weapon).to eq "scissors"
    end
  end

  describe 'results' do
    it 'calculates the results' do
      srand(4)
      game = Game.new("paper")
      expect { game.results }.to change { game.player_wins }.to true
    end
  end

  describe 'results' do
    it 'calculates the results' do 
      srand(4)
      game = Game.new("rock")
      subject.results
      expect(game.player_wins).to eq false
    end
  end

end