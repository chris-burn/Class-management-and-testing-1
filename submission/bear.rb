class Bear
  def initialize(name)
    @name = name
    @stomach = []
  end

  def roar
    return "ROAR!"
  end

  def bear_name()
    return @name
  end

  def food_count()
    return @stomach.length()
  end

  def add_fish_to_stomach(food)
    @stomach << food
  end

end