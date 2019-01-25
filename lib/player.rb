class Player

  attr_reader :name
  attr_accessor :hit_points

  DEFAULT_POINTS = 60

  def initialize(name, hit_points = DEFAULT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.hit
  end

  def hit
    @hit_points -= 10
  end

end
