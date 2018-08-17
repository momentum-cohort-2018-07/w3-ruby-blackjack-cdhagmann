require_relative "deck"
require_relative "hand"


class Dealer

  attr_reader :hand, :deck

  def initialize
    @deck = Deck.new
    @hand = Hand.new
  end

  def deal(player)
    2.times { hit(player) }
  end

  def hit(player)
    player.hand.add(@deck.draw)
  end 

  def take_turn
    deal(self)
    
    while hand_value < 17 do
      puts "The Dealer hits."
      hit(self)
    end
    
    if busted?
      puts "The Dealer busts."
    else
      print "The Dealer stands."
    end
  end 

  def busted?
    hand_value > 21
  end

  def hand_value
    @hand.value
  end

  def shuffle
    @deck.shuffle
    @hand.clear
  end

end
