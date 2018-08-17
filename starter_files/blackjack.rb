require_relative "lib/dealer"
require_relative "lib/player"

class BlackjackGame
  attr_accessor :dealer, :player

  def initialize
    @dealer = Dealer.new
    @player = Player.new
  end

  def dealer_turn
    @dealer.deal(@dealer)
    
    while @dealer.hand_value < 17 do
      puts "The Dealer hits."
      @dealer.hit(@dealer)
    end
    
    if @dealer.busted?
      puts "The Dealer busts."
    else
      print "The Dealer stands."
    end
  end 

  def player_turn
    @dealer.deal(@player)
    while !@player.busted?
      puts "You have a #{@player.hand} in your hand. Your total is #{@player.hand_value}."
      if @player.hit?
        @dealer.hit(@player)
        puts "Youn now have a #{@player.hand} in your hand. Your total is #{@player.hand_value}."
      else
        puts "You stand. Your total is #{@player.hand_value}."
      end
      if @player.busted?
        puts "You busted!"
      end
    end
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
