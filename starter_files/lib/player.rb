class Player

  attr_reader :hand
  attr_accessor :bank

  def initialize
    @hand = Hand.new
    @bank = 100
  end

  def take_turn
     while @hand.value < 17 do
        if @hand.length > 2
          puts "The Dealer hits."
        end
        self.deal(self)
     end
     puts "The Dealer stands."
  end 

  def busted?
    hand_value > 21
  end

  def hand_value
    @hand.value
  end

  def hand_value
    @hand.value
  end

end