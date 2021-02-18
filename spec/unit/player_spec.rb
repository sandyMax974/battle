require 'player'

describe Player do
  let(:player_1) { Player.new('Sandy')}
  let(:player_2) { Player.new('Finn')}

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

  describe '#attack' do
    it 'attacks other player HP' do
      expect(player_2).to receive(:get_damage)
      player_1.attack(player_2)
    end
    it 'reduces the other player HP' do
      expect { player_1.attack(player_2) }.to change { player_2.hp }.by -10
    end
  end

end
