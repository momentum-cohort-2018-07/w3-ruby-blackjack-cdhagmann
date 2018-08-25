class Player

  attr_reader :hand
  attr_accessor :bank

  def initialize
    @hand = Hand.new
    @bank = 100
  end
 
  def hit?
    while true
      print "Do you want to (h)it or (s)tand? "
      answer = gets.chomp.downcase
      if answer[0] == "h"
        return true
      elsif answer[0] == "s"
        return false
      end
      puts "That is not a valid answer!"
    end
  end

  def busted?
    hand_value > 21
  end

  def hand_value
    @hand.value
  end

end
=begin
You have $90 and bet $10.
You have an A and a 7 in your hand. Your total is 18.
Do you want to (h)it or (s)tand? H

You hit. You now have an A, 7, and 9 in your hand. Your total is 17.
Do you want to (h)it or (s)tand? H

You hit. You now have an A, 7, 9, and 5 in your hand. Your total is 22.
You bust!
=end