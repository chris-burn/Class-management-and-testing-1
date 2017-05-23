require "minitest/autorun"
require "minitest/rg"

require_relative "../fish"

class TestFish < MiniTest::Test
  def setup()
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("George")
    @fish_3 = Fish.new("Klaus Heissler")
    @fish_4 = Fish.new("Muddy Mudskipper")
  end

  def test_fish_name()
    assert_equal("Nemo", @fish_1.fish_name())
  end  
end