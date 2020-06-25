class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end
    
  def planet_names()
    return @planets.map { |planet| planet.name }
  end

  def get_planet_by_name(planet_name)
    return @planets.find { |planet| planet.name == planet_name}
  end

  def get_largest_planet()
    planets_diameters = @planets.map { |planet| planet.diameter }
    @planets.find { |planet| planet.diameter == planets_diameters.max}
  end

  def get_smallest_planet()
    planets_diameters = @planets.map { |planet| planet.diameter }
    @planets.find { |planet| planet.diameter == planets_diameters.min}
  end

  def get_planets_with_no_moons()
    @planets.select { |planet| planet.number_of_moons == 0 }
  end

  def get_planets_with_more_moons(expected_moons)
    planets = @planets.select { |planet| planet.number_of_moons > expected_moons} 
    return planets.map { |planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    planets = @planets.select { |planet| planet.distance_from_sun < distance}
    return planets.count
  end
end
