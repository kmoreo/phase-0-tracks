# Ask user for basic client information:
# => 	name, age, address, number of young children, rooms decorated, 
# => 	current decor theme, allergies, loves, hates, next contact date.
# Convert answers to strings/integers/booleans where necessary.

User_1 = {}

puts "Name:"
User_1[:name] = gets.chomp

puts "Age:"
input = gets.chomp
User_1[:age] = input.to_i

puts "Address:"
User_1[:address] = gets.chomp

puts "Any young children under the age of 12? (yes/no)"
input = gets.chomp
if input.downcase == "yes"
	User_1[:has_young_children] = TRUE
	puts "Number of young children:"
	input = gets.chomp
	User_1[:number_young_children] = input.to_i
else
	User_1[:has_young_children] = FALSE
	User_1[:number_young_children] = 0
end

puts "List of rooms decorated. (Type \"done\" when complete.)"
rooms = []
loop do 
	puts "Room name:"
	input = gets.chomp
	break if input == "done"
	rooms << input
end
User_1[:rooms_decorated] = rooms

puts "Current decor theme, if any:"
User_1[:decor_theme] = gets.chomp

puts "Any allergies? (yes/no)"
input = gets.chomp
allergies_arr = []
if input.downcase == "yes"
	while input != "done"
		puts "Allergy: (Type \"done\" when complete.)"
		input = gets.chomp
		break if input == "done"
		allergies_arr << input
	end
else
	allergies_arr << "none"
end
User_1[:allergies] = allergies_arr

puts "Things client loves. (Type \"done\" when complete.)"
client_loves_arr = []
loop do 
	puts "Client loves:"
	input = gets.chomp
	break if input == "done"
	client_loves_arr << input
end
User_1[:client_loves] = client_loves_arr

puts "Things client hates. (Type \"done\" when complete.)"
client_hates_arr = []
loop do 
	puts "Client hates:"
	input = gets.chomp
	break if input == "done"
	client_hates_arr << input
end
User_1[:client_hates] = client_hates_arr

puts "Next scheduled date to contact client:"
User_1[:contact_date] = gets.chomp

# Print hash to designer/user.

p User_1

# Ask if designer/user needs to make any updates => (enter key name to make change)
# Accept input to make requested updates or skip.
# Print updated hash and exit.

puts "Do you wish to update any information?"
input = gets.chomp

if input.downcase == "no"
	p User_1
elsif input.downcase == "yes"
	puts User_1.keys
	puts "Please enter the hash key you wish to update:"
	input = gets.chomp
	updated_key = input.to_sym
	puts "Please enter the updated information:"
	updated_value = gets.chomp
	User_1[updated_key] = updated_value
	p User_1
end
