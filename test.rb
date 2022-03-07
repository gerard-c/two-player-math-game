class Player
  attr_reader :player_name
  def initialize(player_number)
    @player_name = "Player #{player_number}"
  end
end

class Game
  attr_reader :player1, :player2
  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def new_turn?(current_player)
    if 
  end
end

game = Game.new

puts game.player1.player_name, game.player2.player_name