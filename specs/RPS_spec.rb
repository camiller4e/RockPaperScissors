require 'minitest/autorun'
require_relative '../models/RPS'

class TestRockPaperScissors < Minitest::Test

  def test_rock_wins
    @rockpaperscissors = RockPaperScissors.new("rock", "scissors")
    assert_equal("rock wins!", @rockpaperscissors.game)
  end

  def test_scissors_wins
    @rockpaperscissors = RockPaperScissors.new("scissors", "paper")
    assert_equal("scissors wins!", @rockpaperscissors.game)
  end

  def test_paper_wins
    @rockpaperscissors = RockPaperScissors.new("paper", "rock")
    assert_equal("paper wins!", @rockpaperscissors.game)
  end

  def test_draw
    @rockpaperscissors = RockPaperScissors.new("paper", "paper")
    assert_equal("draw", @rockpaperscissors.game)
  end

  def test_incorrect_entry
    @rockpaperscissors = RockPaperScissors.new("frog", "bin")
    assert_equal("this is rock paper scissors, not rock paper random object AWAY WI YE", @rockpaperscissors.game)
  end

  def test_else_hand2_wins
    @rockpaperscissors = RockPaperScissors.new("paper", "scissors")
    assert_equal("scissors wins!", @rockpaperscissors.game)
  end

end
