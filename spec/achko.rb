require '../lib/cards'
require '../lib/player'
require '../lib/turn'
require '../lib/game'

cards=Cards.new
player=Player.new("smb")
choice=nil
until choice == 'hold'
p "#{cards.give(player,5)} is #{player.points}"
p "#{cards.cards}"
  choice=gets.chomp
  end

