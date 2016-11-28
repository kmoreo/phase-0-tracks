# 5.5 Solo Challenge: Alias Generator

# Release 0: Attempt a Tricky Algorithm

# Input string to be modified.
# original_name = "Felicia Torres"

loop do
	
	break if input == "done"

	puts "Please enter the name you wish have aliased:"
	original_name = gets.chomp


	# Split string using .split(" ")
	# Swap the first and last name using .reverse!
	# Save to new variable
	modified_name = original_name.downcase.split(" ").reverse!

	p original_name
	p modified_name

	## Deal with each string individually, and modify letters according to criteria:
		# Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'; u->a
		# Change all of the consonants to the next consonant in the alphabet; z->b

	vowel = ["a", "e", "i", "o", "u"]
	consonant = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

	# for each string (name) in array, starting at index 0 match letter to vowel or consonant, and then
	# shift to next vowel or consonant in vowel and consonant arrays.

	spy_name_array = modified_name.map do |name|
	  index = 0

	spy_name = ""

	  while index < name.length
	    if name[index] == " " || name[index] == "-" 
	      spy_name << name[index]
	    elsif vowel.include? name[index]
	      letter = name[index]
	      vowel_index = vowel.index(letter)
	      next_vowel_index = (vowel_index + 1) % vowel.length
	      next_vowel = vowel[next_vowel_index]
	      spy_name << next_vowel
	    elsif consonant.include? name[index]
	      letter = name[index]
	      consonant_index = consonant.index(letter)
	      next_consonant_index = (consonant_index + 1) % consonant.length
	      next_consonant = consonant[next_consonant_index]
	      spy_name << next_consonant
	    end
	    
	    index += 1
	  end
	  
	  spy_name
	  
	end

	p spy_name_array

	## After modification
	  # Capitalize first letter of each name
		# Join names in array to form string (aliased name)
	spy_name_array.each do |name|
	  p name.capitalize!
	end

	p spy_name_array
	p spiffy_alias = spy_name_array.join(" ")

end

# Release 1: Provide a User Interface => see lines 10-13, plus loop.
