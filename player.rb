class Player
  attr_reader :name, :lives
  def initialize(player_number)
    @name = "Player #{player_number}"
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end