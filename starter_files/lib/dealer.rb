require_relative "deck"
require_relative "hand"
require_relative "card"

class Dealer

	attr_reader :hand, :deck

	def initialize
		@deck = Deck.new
    @hand = Hand.new
    2.times { self.deal(self) }
	end

	def deal(player)
		player.hand.add(@deck.draw)
	end 

	def take_turn
		while @hand.value < 17 do
			puts "The Dealer hits."
			self.deal(self)
		end
		if self.hand_value > 21
			puts "The Dealer busts."
		else
			prints "The Dealer stands."
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
