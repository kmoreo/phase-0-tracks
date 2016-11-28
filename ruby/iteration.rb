# 5.3 Iteration (In-person pairing with Maureen Riley & Cody Fuller on 11/22/2016)

# Release 0: Explore Blocks

# Write Your Own Method That Takes a Block
def favorite_animals
	puts "Animals are awesome."
	yield("kitties", "puppies", "velociraptors")
end

favorite_animals { |a, b, c| puts "My favorite animals are #{a}, #{b}, and #{c}!"}


def calculate
	puts "Let's do some arithmetic!"
	yield(5, 10, 25, 100)
end

# Various ways to run block through calculate method:
calculate do |x,y,z,a|
	product = x * y
	quotient = a / z
	puts "The product of #{x} times #{y} is #{product}."
	puts "The quotient of #{a} divided by #{z} is #{quotient}"
end

calculate { |x,y,z,a| sum = x + y; puts "The sum of #{x} plus #{y} is #{sum}."}

calculate { |x,y,z,a| puts "The difference of #{a} minus #{z} is #{a - z}."}


# Release 1: Use each, map, and map!

# Declare an array 
pizza_toppings = ["olives", "peppers", "giardiniera", "onions"]

# Iterate through the array with .each
pizza_toppings.each { |topping| puts "I like #{topping} on my pizza." }

# Iterate through the array with .map
puts "Original data:"
p pizza_toppings

fancy_pizza_toppings = pizza_toppings.map do |topping|
	puts topping
	"fancy " + topping
end

puts "After .map:"
p pizza_toppings
p fancy_pizza_toppings

# Iterate through the array with .map!
puts "Original data:"
p pizza_toppings

pizza_toppings.map! do |topping|
	puts topping
	"fancy " + topping
end

puts "After .map!:"
p pizza_toppings


# Declare a hash 
fruits_to_colors = {
	:apples => "red or green", 
	:bananas => "yellow", 
	:grapes => "purple or green",
	:kiwis => "brown and green"
}

# Iterate through the hash with .each
fruits_to_colors.each {|fruit_name, fruit_color| puts "#{fruit_name} are usually #{fruit_color}."}

# Iterate through the hash with .map
puts "Original data:"
p fruits_to_colors

fancy_fruits_to_colors = Hash[fruits_to_colors.map do |fruit_name, fruit_color| 
	[("fancy_" + fruit_name.to_s).to_sym, fruit_color]
end]

puts "After .map:"
p fruits_to_colors
p fancy_fruits_to_colors


# Release 2: Use the Documentation

vowels = ["a", "e", "i", "o", "u", "y"]

city_population = {
	new_york: 8.5,
	los_Angeles: 3.9,
	chicago: 2.7,
	houston: 2.2,
	philadelphia: 1.5
}

# 1. Delete an item that meets a certain condition
vowels.delete_if {|vowel| vowel == "y"}

city_population.delete_if {|city, population| population < 2}

# 2. Filter for items that satisfy a certain condition
vowels.keep_if {|vowel| vowel < "u"}

city_population.keep_if {|city, population| population > 2.5}

# 3. Use a different method that filters for items that satisfy a certain condition
vowels.select! {|vowel| vowel > "e"}

largest_cities = city_population.select {|city, population| population > 3}


# re-establishing full versions of array and hash
vowels = ["a", "e", "i", "o", "u", "y"]

city_population = {
	new_york: 8.5,
	los_Angeles: 3.9,
	chicago: 2.7,
	houston: 2.2,
	philadelphia: 1.5
}

# 4. Remove items from a data structure until the condition in the block evaluates to false
vowels.reject! {|vowel| vowel <= "o"}

city_population.reject! {|city, population| population > 3}
