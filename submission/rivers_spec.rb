require "minitest/autorun"
require "minitest/rg"

require_relative "../rivers.rb"
require_relative "../fish.rb"

class TestRivers < MiniTest::Test
  def setup()
    @river_1 = Rivers.new("Dee")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("George")
    @fish_3 = Fish.new("Klaus Heissler")
    @fish_4 = Fish.new("Muddy Mudskipper")
  end

  def test_river_name()
    assert_equal("Dee", @river_1.river_name())
  end    

  def test_population_numbers()
    assert_equal(0, @river_1.fish_count())
  end

  def test_add_all_fish_to_river
    @river_1.add_fish_to_river(@fish_1)
    @river_1.add_fish_to_river(@fish_2)
    @river_1.add_fish_to_river(@fish_3)
    @river_1.add_fish_to_river(@fish_4)
    assert_equal(4, @river_1.fish_count())
  end

end