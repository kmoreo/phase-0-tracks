class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "Mmm! That was a good #{cookie} cookie!"
	end

	def print_stats
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeers: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end

end

# Driver code

# kris = Santa.new
# kris.speak
# kris.eat_milk_and_cookies("funfetti")

santas = []

example_genders = ["male", "female", "bigender", "transgender male", "cis female", "non-gender", "flexible", "N/A"]

example_ethnicities = ["black", "latina", "white", "jewish", "none", "armenian", "Mystical Creature (unicorn)", "N/A"]

cookies = ["sugar", "chocolate chip", "snickerdoodle", "ginger snap", "pfeffernusse", "biscotti", "shortbread", "rum ball"]

example_genders.length.times do |i|
	puts "New Santa Sign-up!"
	santas << Santa.new(example_genders[i], example_ethnicities[i])
	puts "Welcome Santa No. #{i+1}!"
	santas[i].speak
	santas[i].print_stats
	santas[i].eat_milk_and_cookies(cookies.sample)
	puts "-"*10
end



