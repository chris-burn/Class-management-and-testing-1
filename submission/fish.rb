class Fish
  
  def initialize(name)
    @name = name
    @population = []
  end

  def fish_name()
    return @name
  end

  def population_numbers()
    return @population.length()
  end

end