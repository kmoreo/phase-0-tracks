# User 1 inputs a secret word.
# Number of guesses is set to 2x word length.
# User 2 enters a guess of a letter.
# Program checks to see if guessed letter is in the secret word.
# If the letter guessed has been guessed previously, the guess count does not increment.
# If the letter guessed has not been guess previously, the guess count increments by 1.
# If the letter is in the word, the letter is printed to the screen in its appropriate place.
# If the letter is not in the word, the appropriate number of blank spaces is printed to the screen with no letter revealed.
# Repeat with guessing until max number of guesses is reached, or word is guessed, whichever comes first.
# Print congratulatory/taunting message based on outcome.

class WordGuess

	attr_reader :guess_count, :max_guesses, :guessed_letters
	attr_accessor :game_over, :word_is_guessed

	def initialize(word)
		@word = word
		@guess_count = 0
		@max_guesses = word.length * 2
		@guessed_letters = ""
		@guessed_word = "_" * word.length
		@game_over = false
		@word_is_guessed = false
	end

	def input_letter(letter)
		unless @guessed_letters.include? letter
			@guessed_letters << letter
			@guess_count += 1
		end
		@guessed_letters
	end

	def compare_feedback(letter)
		inclusion = @word.include?(letter)
		if inclusion
			@word.length.times do |i|
				if @word[i] == letter
					@guessed_word[i] = letter
				end
			end
		end
		p @guessed_word
	end

	def game_break
		if @guess_count == @max_guesses
			@game_over = true
		elsif @guessed_word == @word
			@game_over = true
			@word_is_guessed = true
		end
		@game_over
	end

end

# Driver code

puts "Welcome to the Word Guessing Game!"
puts "Player 1: Please enter a word to be guessed:"
word = gets.chomp
game = WordGuess.new(word)

puts "Player 2: Try to guess the word!"
until game.game_over
	puts "Please enter a letter:"
	letter = gets.chomp

	game.input_letter(letter)
	puts "You have guessed these letters: #{game.guessed_letters}"
	game.compare_feedback(letter)
	puts "Guesses left: #{game.max_guesses - game.guess_count}."
	game.game_break
end	

if game.word_is_guessed == true
  	puts "Congratulations! You're the word-guessing master! You won in #{game.guess_count} guesses!"
else
	puts "Yeah, you're not so great at this. You should call your mother."
end
