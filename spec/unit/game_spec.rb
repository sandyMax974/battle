require 'game'

describe Game do
  let(:player_1) { instance_double('Player') }
  let(:player_2) { instance_double('Player') }

  describe '#attack' do
    it 'deals damage to the opponent' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end
