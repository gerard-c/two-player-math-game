class Game
  attr_reader :player1, :player2
  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @first_turn = Turn.new(@player1, @player2, self)
    @first_turn.play
  end

    def new_turn?(active, inactive)
      if active.lives == 0
        puts "#{inactive.name} wins with a score of #{inactive.lives}/3"
        puts "--- GAME OVER ---"
        puts "Good bye!"
      else
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        next_turn = Turn.new(inactive, active, self)
        next_turn.play
      end
    end
end

# game => keeps track of if there is a winner or loser (initialize to nil), method to take in current player and print winner (if the current player lost) and their lives and end the game or start a new turn with the other player. Initialize player 1 and player 2 (Player.new(1), Player.new(2)), winner = nil
