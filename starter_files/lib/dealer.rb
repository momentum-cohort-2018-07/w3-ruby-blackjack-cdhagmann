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

  def busted?
    hand_value > 21
  end

  def hand_value
    @hand.value
  end

  def shuffle(player)
    player.hand.clear
    @deck.shuffle
    @hand.clear
  end

end