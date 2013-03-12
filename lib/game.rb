class Game
  attr_reader :winners
  def initialize (players)
    @players=players
    @over=false
    @winners = []
  end

  def winner
    number = 21
    pretendents = @players.select {|player| player.points<=21}
    if pretendents.length == 0
      while @winners == []
        @players.each do |player|
          @winners<<player.name if player.points == number
        end
        number += 1
      end
    else
     while @winners == [] and number > 0
      if @players.each {|player| player.points<=21}
      @players.each do |player|
        @winners<<player.name if player.points == number
        end
      number-=1
      end
     end
    end
  end

end