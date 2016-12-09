// 7.1 Release 4: Write a JavaScript Program

// a function that takes a string as a parameter and reverses it.

// input string to be reversed.
// declare empty array for newly ordered letters (strings are immutable in JS).
// for each letter in the string, starting at last index:
	// take the letter at that index and append to array;
	// after all letters have been iterated over, combine the contents of the array into a single word.


function reverse(word) {
  var a = [];
  for (i = word.length - 1; i >=0; i-=1) {
	  a.push(word[i]);
  }
  return a.join("");
}

// // Driver Code

newWord = reverse("cake");
newWord2 = reverse("superduper");

if (1==1) {
	console.log(newWord + ', ' + newWord2);
}
