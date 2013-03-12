require '../lib/cards'
require '../lib/player'
require '../lib/turn'
require '../lib/game'

puts players=[Player.new('p1'),Player.new('p2')]
puts game=Game.new(players)

puts players[0].add_points(25)
puts players[1].add_points(26)

puts game.winner
puts game.winners