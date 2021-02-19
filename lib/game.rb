require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @players = [player_1, player_2]
    # @player_1 = player_1
    # @player_2 = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  # def self.instance
  #   @game ||= Game.new
  # end

end
