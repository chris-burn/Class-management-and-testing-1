require "minitest/autorun"
require "minitest/rg"

require_relative "../bear"
require_relative "../fish"
require_relative "../rivers"

class TestBear < MiniTest::Test
  def setup()
    @bear_1 = Bear.new("Little John")
    @bear_2 = Bear.new("Mor'du")
    @river_1 = Rivers.new("Dee")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("George")
    @fish_3 = Fish.new("Klaus Heissler")
    @fish_4 = Fish.new("Muddy Mudskipper")
  end

  def test_roar
    assert_equal("ROAR!", @bear_1.roar())
  end

  def test_bear_name()
    assert_equal("Little John", @bear_1.bear_name())
  end  

  def test_food_count()
    assert_equal(0, @bear_1.food_count())
  end

  def test_add_fish_to_stomach_from_river()
    @river_1.add_fish_to_river(@fish_1)
    @river_1.add_fish_to_river(@fish_2)
    assert_equal(2, @river_1.fish_count())
    @bear_1.add_fish_to_stomach(@fish_1)
    @river_1.remove_fish_from_river(@fish_1)
    @bear_1.add_fish_to_stomach(@fish_2)
    @river_1.remove_fish_from_river(@fish_2)
    assert_equal(2, @bear_1.food_count())
    assert_equal(0, @river_1.fish_count())
  end
end