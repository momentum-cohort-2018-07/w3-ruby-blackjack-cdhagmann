require_relative "card"

class Dealer

	attr_reader :hand, :deck

	def initialize
		@deck = Deck.new
    @hand = Hand.new
	end

  def deal(player)
    2.times { self.hit(player) }
  end

	def hit(player)
		player.hand.add(@deck.draw)
	end 

	def take_turn
    self.deal(self)
		while @hand.value < 17 do
			puts "The Dealer hits."
			self.hit(self)
		end
		if self.hand_value > 21
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