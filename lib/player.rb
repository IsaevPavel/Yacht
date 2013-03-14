class Player
  attr_reader :name, :points, :player_turn
  def initialize(name)
    @name=name
    @points=0
    @player_turn=0
  end
  def turn
    @player_turn+=1
  end
  def add_points(turn_points)
    @points+=turn_points
  end
end

