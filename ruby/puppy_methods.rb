# Release 0: Add Behavior to a Class
class Puppy
 
	# Release 1: Declare an Initialize Method
	def initialize
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(number)
		puts "Woof! " * number
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(integer)
		puts integer * 7
	end

	def butler
		puts "*cleans floor with tail*"
	end

end
   
## Driver Code ##
riley = Puppy.new
riley.fetch("ball")
riley.speak(3)
riley.roll_over
riley.dog_years(3)
riley.butler

# Release 2: Write Your Own Class

class Chef

    def initialize
        puts "Initializing Chef Sequence..."
    end

    def chop(num)
        puts "chop! " * num
    end

    def cook
        puts "*sets kitchen on fire*"
    end

end

array = Array.new
50.times do |i|
    i = Chef.new
    array << i
end

array.each do |apprentice| 
    apprentice.chop(3)
    apprentice.cook
end
