class RockPaperScissors

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def game()
    if @hand1 == @hand2
      return "draw"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return "rock wins!"
    elsif @hand1 == "paper" && @hand2 == "rock"
      return "paper wins!"
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return "scissors wins!"
    else return "#{@hand2} wins!"
    end
  end

end
