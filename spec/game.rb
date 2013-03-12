require '../lib/cards'
require '../lib/player'
require '../lib/turn'
require '../lib/game'

puts players=[Player.new('p1'),Player.new('p2')]
puts game=Game.new(players)

puts players[0].add_points(20)
puts players[1].add_points(19)

puts game.winner
puts game.winners