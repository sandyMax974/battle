require 'player'

describe Player do
  let(:player_1) { Player.new('Sandy')}
  let(:player_2) { Player.new('Finn')}
  let(:game) { double('Game') }

  describe '#name' do
    it 'should have a name' do
      expect(player_1.name).to eq 'Sandy'
    end
  end

  describe '#hp' do
    it 'should have a default value' do
      expect(player_1.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces player HP' do
      allow(game).to receive(:attack).with(1)
      expect { player_2.receive_damage }.to change { player_2.hp }.by -10
    end
  end
end
