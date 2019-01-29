require("minitest/autorun")
require("minitest/rg")
require_relative("../models/rock_paper_scissors")

class TestRockPaperScissors < MiniTest::Test

  def setup

    @run1 = RockPaperScissors.new("rock", "rock")
    @run2 = RockPaperScissors.new("rock", "scissors")
    @run3 = RockPaperScissors.new("rock", "paper")
    @run4 = RockPaperScissors.new("scissors", "paper")

  end

  def test_draw()
    assert_equal("Lets try again", @run1.game_rules)
  end

  def test_rock_wins()
    assert_equal("Rock wins!", @run2.game_rules)
  end

  def test_paper_wins()
    assert_equal("Paper wins!", @run3.game_rules)
  end

  def test_scissors_win()
    assert_equal("Scissors win!", @run4.game_rules)
  end

end
