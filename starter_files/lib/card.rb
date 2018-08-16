class Card
	include Comparable
	attr_reader :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

  def to_s
    "#{@rank}"
  end

  def inspect
    "Card(#{@rank} of #{@suit})"
  end

	def value
		if [10, :J, :Q, :K].include?(@rank)
			10
		elsif @rank == :A
			11
		else
			@rank
		end  
	end
  
	def <=>(another_card)
		if self.value < another_card.value
			-1
		elsif self.value > another_card.value
			1
		else
			0
		end
	end
end