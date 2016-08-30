class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    self.food > 1 && self.gold > 134
  end

  def train_footman
    return unless can_train_footman?
    # will return back unless there is funds. rem. key word unless

    self.gold -= 135
    self.food -= 2
    Footman.new
  end

  def can_train_peasant?
    self.food > 4 && self.gold > 89
  end

  def train_peasant
    return unless can_train_peasant?
    self.gold -= 90
    self.food -= 5
    Peasant.new
  end

end
