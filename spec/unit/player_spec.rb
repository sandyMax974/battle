require 'player'

describe Player do
  it 'should have a name' do
    player = Player.new('sandy')
    expect(player.name).to eq 'sandy'
  end
end
