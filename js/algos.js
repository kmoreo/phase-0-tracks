// 7.3 Solo Challenge: Algorithm Practice

// Release 0: Find the Longest Phrase
// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
	// Start with an array of strings
	// Determine the length of the array
	// Set a variable to keep track of string lengths; initialize at 0
	// Iterate through the array one index at a time
	// For each index determine the length of the word or phrase at that index
		// compare the length of the string at i to length variable, if i is greater, set length variable to the length of that string
	// Print the word or phrase with the most characters to the console

function findLongest(array) {
	var longestLength = 0;
	var longestWord = "";
	for (var i = 0; i < array.length; i++) {
	    if (array[i].length > longestLength) {
	    	longestLength = array[i].length;
	    	longestWord = array[i];
	    }
	}
	console.log("The longest word is " + longestWord + " with a length of " + longestLength + ".");
}

// Release 1: Find a Key-Value Match
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
	
function findMatch(obj1, obj2) {
	var match = false;
	for ( var key in obj1) {
		if (obj1[key] == obj2[key]) {
			match = true;
			break;
		}
	}
	return match;
}



findLongest(["box", "pizza", "champagne", "treasure", "cake"]);
findLongest(["chicago", "peoria", "evanston", "springfield"]);
findLongest(["wellington", "candle", "treat", "potato"]);


findMatch({name: "Pete", age: 36}, {name: "Rob", age: 36});
findMatch({species: "dog", color: "black", weight: 36}, {species: "cat", color: "black", weight: 11});
findMatch({item: "chair", style: "barstool"}, {item: "shelving rack", color: "chrome"});
