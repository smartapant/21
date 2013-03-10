class Game
  def initialize (players)
    @players=players
    @over=false
  end
  def winner
    winner = []
    players.select do |player|
      if player.points == 21
        winner<<player
      end
    end
  end
  end