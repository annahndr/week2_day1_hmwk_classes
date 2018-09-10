require("minitest/autorun")
require("minitest/rg")
require_relative("../sportsteam")

class TestSportsteam <Minitest::Test

  def setup
    @sportsteam = Sportsteam.new("GHA Rugby", ["Jamie", "Luca", "Jane"], "Andrew H")
  end

  def test_get_team_name
    assert_equal("GHA Rugby", @sportsteam.team)
  end

  def test_get_players
    assert_equal(["Jamie", "Luca", "Jane"], @sportsteam.players)
  end

  def test_get_coach
    assert_equal("Andrew H", @sportsteam.coach)
  end

  def test_set_coach
    @sportsteam.coach = "Marion"
    assert_equal("Marion", @sportsteam.coach)
  end

  def test_add_player
    @sportsteam.players << "Kim-Joy"
    assert_equal(["Jamie", "Luca", "Jane", "Kim-Joy"], @sportsteam.players)
  end

  def test_find_player
    assert_equal("Jamie", @sportsteam.find_player("Jamie"))
  end

#Create a method that takes in whether the team has won or lost and updates the points property for a win.

  def test_win_or_lose
    assert_equal(1, @sportsteam.win_or_lose("win"))
  end

end
