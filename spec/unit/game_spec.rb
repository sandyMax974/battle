require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2)}
  let(:player_1) { instance_double('Player') }
  let(:player_2) { instance_double('Player') }

  it 'takes two players as arguments' do
    expect(Game).to respond_to(:new).with(2)
  end

  describe '#player_1' do
    it 'can access player_1' do
      expect(subject.player_1).to eq player_1
    end
  end
  describe '#player_2' do
    it 'can access player_2' do
      expect(subject.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'deals damage to the opponent' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end
