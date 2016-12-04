# module Shout
#   def self.yell_angrily(words)
#     words.capitalize + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     "OMG, " + words.upcase + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily("you stink")

# p Shout.yell_happily("you rock")


module Shout
	def yell_angrily(words)
    puts words.capitalize + "!!!" + " :("
  end

  def yell_happily(words)
    puts "Hooray, " + words.upcase + "!!!" + " :)"
  end
end

class AnnoyingKid
	include Shout
end

class Auctioneer
	include Shout
end

kid = AnnoyingKid.new
kid.yell_angrily("you stink")
kid.yell_happily("I love unicorns")

auctioneer = Auctioneer.new
auctioneer.yell_angrily("sir, you need to leave")
auctioneer.yell_happily("you've won the entire estate")




	