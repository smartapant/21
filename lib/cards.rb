class Cards
  attr_reader :cards

  def initialize
    @cards=[2,4,6,8,10]*4 #was too lazy to work with hashes, so thats is a working model of the cards
    @cards_number=@cards.length
  end

  def give(player,number)
    number.times do
      n=rand(0..(@cards_number-1))
      player.add_points(@cards[n])
      @cards.delete_at(n)
     @cards_number-=1
    end
  end
end