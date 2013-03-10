class Turn
  def initialize(player)
    @over=false
    @player=player
  end

  def over?
    @over
  end

  def over!
    @over=true
    puts "#{@player.name} got #{@player.points} points. Turn is over"
  end
end
