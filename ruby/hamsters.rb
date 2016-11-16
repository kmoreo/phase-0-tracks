puts "Hamster's name?"
hamster_name = gets.chomp

puts "How loud is the hamster on a scale from 1-10."
noise_volume = gets.chomp
noise_volume = noise_volume.to_i

puts "Hamster's fur color?"
fur_color = gets.chomp

puts "Candidate for adoption? (true/false)"
adoptable = gets.chomp

if adoptable.to_s == "true"
	true
elsif adoptable.to_s == "false"
	false
end

puts "Hamster age?"
estimated_age = gets.chomp

if estimated_age == ""
	estimated_age = nil
else
	estimated_age = estimated_age.to_i
end

puts "New Hamster Data:"
puts "Name: #{hamster_name}" 
puts "Noise Level: #{noise_volume}"
puts "Fur Color: #{fur_color}"
puts "Adoptable: #{adoptable}"
puts "Age: #{estimated_age}"

p estimated_age