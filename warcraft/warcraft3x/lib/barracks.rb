class Barracks
  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    self.gold > 135 && self.food > 2
  end

  def train_footman
    return unless can_train_footman?
    self.gold -= 135
    self.food -= 2
    @footman = Footman.new
  end

  def can_train_peasant?
    self.gold > 90 && self.food > 5
  end
  def train_peasant
    return unless can_train_peasant?
    self.gold -= 90
    self.food -= 5
    @peasant = Peasant.new
  end

end
