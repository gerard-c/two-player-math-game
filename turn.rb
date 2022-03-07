class Turn
  def initialize(active, inactive, game)
    @active_player = active
    @inactive_player = inactive
    @n1 = rand(1..20)
    @n2 = rand(1..20) 
    @answer = @n1 + @n2
    @game = game 
  end


  def play
    puts "----- NEW TURN -----"

    puts "#{@active_player.name}: What does #{@n1} plus #{@n2} equal?"

    print "> "

    choice = $stdin.gets.chomp

    # if the answer is right -> print a sentence(correct) and generate new question 
    if choice.to_i == @answer
      puts "#{@active_player.name}: YES! You are correct!"
    # if the answer wrong -> call Class Player.lose_life and print a sentence(no)
    else
      puts "#{@active_player.name}: Seriously? No!"
      @active_player.lose_life
    end
    @game.new_turn?(@active_player, @inactive_player)
  end
end



# What does {n} plus {n} equal?
# YES! You are correct!
# Seriously? No!
# Lose - Good Bye!