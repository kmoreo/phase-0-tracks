puts "What is your full name?"
full_name = gets.chomp

puts "How old are you?"
age_given = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread_answer = gets.chomp

if garlic_bread_answer.downcase == "yes"
	likes_garlic_bread = TRUE
else 
  	likes_garlic_bread = FALSE
end
hates_garlic_bread = !likes_garlic_bread

puts "Would you like to enroll in the company’s health insurance?"
health_insurance_answer = gets.chomp

if health_insurance_answer.downcase == "yes"
	wants_health_insurance = TRUE
else
	wants_health_insurance = FALSE
end
waives_health_insurance = !wants_health_insurance

current_year = 2016
legit_age_true = (age_given.to_i == (current_year - birth_year.to_i))
legit_age_false = !legit_age_true


if legit_age_true && (likes_garlic_bread || wants_health_insurance)
	puts "EVALUATION: Probably not a vampire."
end

if legit_age_false &&  (hates_garlic_bread || waives_health_insurance)
	puts "EVALUATION: Probably a vampire."
end

if legit_age_false &&  (hates_garlic_bread && waives_health_insurance)
	puts "EVALUATION: Almost certainly a vampire."
end
