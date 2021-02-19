class Game

  def attack(player)
    player.receive_damage
  end

  def self.instance
    @game ||= Game.new
  end

end
