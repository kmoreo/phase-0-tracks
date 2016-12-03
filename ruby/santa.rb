class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."		
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

end

# Driver code

kris = Santa.new()
kris.speak
kris.eat_milk_and_cookies("funfetti")