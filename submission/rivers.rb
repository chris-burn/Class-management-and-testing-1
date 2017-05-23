class Rivers
  
  def initialize(name)
    @name = name
    @population = []
  end

  def river_name()
    return @name
  end 

  def fish_count()
    return @population.length()
  end

  def add_fish_to_river(fish)
    @population << fish
  end

  def remove_fish_from_river(fish_to_remove)
    for fish in @population
      if fish == fish_to_remove
        @population.delete(fish_to_remove)
      end
    end
  end

end