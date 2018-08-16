require_relative "lib/dealer"
require_relative "lib/player"

class BlackjackGame
  def initialize
    @dealer = Dealer.new
    @player = Player.new
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
