class Game
  attr_reader :player_turn, :over
  def initialize player
    @player = player
    @player_turn=0
    @over=false
  end
  def over?
    if @player.player_turn==13
      @over=true
    end
  end
end