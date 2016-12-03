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

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at=(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking[-1] = reindeer_name
		puts "#{reindeer_name}, you're grounded! *angrily points to the end of the line*"
		p @reindeer_ranking
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
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

# example_genders.length.times do |i|
# 	puts "New Santa Sign-up!"
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# 	puts "Welcome Santa No. #{i+1}!"
# 	santas[i].speak
# 	santas[i].print_stats
# 	santas[i].eat_milk_and_cookies(cookies.sample)
# 	puts santas[i].celebrate_birthday
# 	puts "-"*10
# end

kris = Santa.new("male", "jewish")

kris.speak
kris.eat_milk_and_cookies(cookies.sample)
p kris.age
p kris.ethnicity
kris.print_stats
kris.celebrate_birthday
kris.get_mad_at = "Vixen"
kris.gender = "female"
p kris.age
p kris.ethnicity
kris.print_stats


