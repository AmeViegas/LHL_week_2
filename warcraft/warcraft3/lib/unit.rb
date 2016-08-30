class Unit
  attr_reader :health_points, :attack_power

  def initialize(hp,ap)
    @health_points = hp
    @attack_power = ap
  end

  def attack!(enemy)
    enemy.damage(self.attack_power)
  end

  def damage(damage_amt)
    @health_points -= damage_amt
  end

end
