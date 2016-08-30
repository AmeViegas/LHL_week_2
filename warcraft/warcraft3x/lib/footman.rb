# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  # over ride unit b/c of test 1
  def initialize
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy_footman)
    enemy_footman.damage(@attack_power)
  end

  def damage(damage_given)
    @health_points -= damage_given
  end
end
