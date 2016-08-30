class Peasant < Footman
    # over ride footman b/c of test 1
    def initialize
      @health_points = 35
      @attack_power = 0
    end
end
