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
      @players.select do |player|
        @winners<<player if player.points == number
        number-=1
      end
    end
  end
end