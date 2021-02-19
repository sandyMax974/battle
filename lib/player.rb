class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60
  def initialize(name = 'player', hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end

  # def attack(player)
  #   player.receive_damage
  # end

end
