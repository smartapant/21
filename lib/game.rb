class Game
  attr_reader :winners
  def initialize (players)
    @players=players
    @over=false
  end
  def winner
    @winners = []
    number=21
    until @winners != [] and number > 0
      if @players.each {|player| player.points<=21}
      @players.each do |player|
        @winners<<player.name if player.points == number
        number-=1
      end
      else
        @players.each do |player|
          @winners<<player.name if player.points == number
          number+=1
        end
      end
    end
   # @winners.index(0) {|id,winner| @winners.delete_at(id); @winners<<"#{winner.name}, #{winner.points}"}
  end
end