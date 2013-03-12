require './lib/cards.rb'
require './lib/player.rb'
require './lib/game.rb'
require './lib/turn.rb'


puts "let's start a game Achko"
players = [Player.new("p1"), Player.new("p2")]
cards=Cards.new
game=Game.new(players)

players.each do |player|
  puts "your turn,#{player.name}"
  turn=Turn.new(player)
  cards.give(player,2)
  until turn.over?
    puts "You have #{player.points}.Card or hold?"
    player_choice=gets.chomp
    if player_choice=="hold"
      turn.over!
    else cards.give(player,1)
    end
  end
end
game.winner
puts "#{(game.winners)*', '} - our winner(s)"