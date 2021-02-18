class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def get_damage
    @hp -= 10
  end

  def attack(player)
    player.get_damage
  end

end
