puts "How many employees are being evaluated today?"
number = gets.chomp

number.to_i.times do

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

	puts "Please name all known allergies. Type \"done\" when complete."

  	vampire_allergies = FALSE
  
  	until vampire_allergies
    	puts "Allergy:"
    	response = gets.chomp

      		if response == "sunshine"
        		vampire_allergies = TRUE
      		end
      
    	break if response == "done"
	
	end

	current_year = 2016
	legit_age_true = (age_given.to_i == (current_year - birth_year.to_i))
	legit_age_false = !legit_age_true

	vampire = "EVALUATION: Results inconclusive."

	if legit_age_true && (likes_garlic_bread || wants_health_insurance)
		vampire = "EVALUATION: Probably not a vampire."
	end

	if legit_age_false && (hates_garlic_bread || waives_health_insurance)
		vampire = "EVALUATION: Probably a vampire."
	end

	if legit_age_false && hates_garlic_bread && waives_health_insurance
		vampire = "EVALUATION: Almost certainly a vampire."
	end

	if vampire_allergies
		vampire = "EVALUATION: Probably a vampire."
	end

	# Added allergy condition before name condition since name condition is
	# more certain. Though, in the end it doesn't really matter since we're 
	# all going to be great friends.
	  
	if full_name == "Drake Cula" || full_name == "Tu Fang"
		vampire = "EVALUATION: Definitely a vampire."
	end
	  
	puts vampire

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!"
