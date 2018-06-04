class RockPaperScissors

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def game()
    options = ["rock", "paper", "scissors"]
    if @hand1 == @hand2
      return "draw"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return "rock wins!"
    elsif @hand1 == "paper" && @hand2 == "rock"
      return "paper wins!"
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return "scissors wins!"
    elsif !options.include?(@hand1) || !options.include?(@hand2)
      return "this is rock paper scissors, not rock paper random object AWAY WI YE"
    else return "#{@hand2} wins!"
    end
  end

end
