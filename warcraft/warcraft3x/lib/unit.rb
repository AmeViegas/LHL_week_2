class Unit
  attr_accessor :attack_power
  attr_reader :health_points
  # def initialize(health = 60, attack_power = 10)
  def initialize(health, attack_power)
    @health_points = health
    @attack_power = attack_power
  end

  # def attack!(enemy_footman)
  #   enemy_footman.damage(@attack_power)
  # end
  #
  # def damage(damage_given)
  #   @health_points -= damage_given
  # end

end
