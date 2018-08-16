class Hand
	def initialize
		@hand = []
	end

	def value
		value = 0
    ace_count = 0
		@hand.sort.each do | card |
			if card.rank == :A
				ace_count += 1
				value += 1
			else
				value += card.value
			end
		end
    if value < 11 && ace_count > 0
      value += 10
    end
		value
	end

	def add(card)
		@hand << card
	end

  def to_s
    hand_string = []
    @hand.each do |card|
      hand_string << card.to_s
    end
    hand_string.join(", ")
  end

  def inspect
    "Hand(#{self.to_s}, value: #{self.value})"
  end

  def busted?
    value > 21
  end

  def clear
    @hand = []
  end

  def length
    @hand.length
  end

end
