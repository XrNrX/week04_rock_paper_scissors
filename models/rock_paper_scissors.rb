class RockPaperScissors

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def game_rules()
    if @player1 == @player2
      return "Lets try again"
    elsif
      @player1 == "rock" && @player2 == "scissors" || @player2 == "rock" && @player1 == "scissors"
      return "Rock wins!"
    elsif
      @player1 == "rock" && @player2 == "paper" || @player2 == "rock" && @player1 == "paper"
      return "Paper wins!"
    elsif
      @player1 == "scissors" && @player2 == "paper" || @player2 == "scissors" && @player1 == "paper"
      return "Scissors win!"
    end

  end
end
