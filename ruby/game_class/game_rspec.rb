# our game should ...
# accept a letter as a guess and store it in a variable
# check to see if letter is in secret word
# => if yes, return underscores with letter revealed
# => if no, return underscores with no letter revealed
# increment guess count if guess is not duplicative
# compare guess count to max guesses, break if equal, continue if not
# reveal congratulatory or taunting message


require_relative 'game'

describe WordGuess do
	let(:game) { WordGuess.new("apple") }

	it "accepts a letter as input and stores letter as a guess" do
		expect(game.input_letter("p")).to eq "p"

	end

	it "prints feedback showing that guessed letter is in word" do
		expect(game.compare_feedback("p")).to eq "_pp__"
	end

	it "compares the number of current guesses to max number of guesses" do
		@guess_count != @max_guesses
		expect(game.game_break).to eq false 
	end

 end