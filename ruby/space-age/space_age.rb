class SpaceAge
  private

  attr_reader :seconds

  def earth_year_in_seconds
    31557600
  end

  def orbital_period_in_earth_years
    {
      "mercury" => 0.2408467,
      "venus" => 0.61519726,
      "earth" => 1.0,
      "mars" => 1.8808158,
      "jupiter" => 11.862615,
      "saturn" => 29.447498,
      "uranus" => 84.016846,
      "neptune" => 164.79132
    }
  end

  def age_on(planet)
    seconds / orbital_period_in_earth_years[planet] / earth_year_in_seconds
  end

  public

  def initialize(seconds)
    @seconds = seconds
  end

  def on_mercury
    age_on("mercury")
  end

  def on_venus
    age_on("venus")
  end

  def on_earth
    age_on("earth")
  end

  def on_mars
    age_on("mars")
  end

  def on_jupiter
    age_on("jupiter")
  end

  def on_saturn
    age_on("saturn")
  end

  def on_uranus
    age_on("uranus")
  end

  def on_neptune
    age_on("neptune")
  end
end
