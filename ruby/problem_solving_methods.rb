# 5.6 Solving Problems with Data Structures

# Release 0: Implement a Simple Search

# Method 1
def search_array (array, integer)
	array.length.times do |index|
	    if array[index] == integer
	      return index
	    end
	end
	nil
end

# Method 2
def search_array(array, integer)
	index = 0
	while index < array.length
		if array[index] == integer
			return index
		end
		index += 1
	end
	nil
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)


# Release 1: Calculate Fibonacci Numbers

def fibonacci (integer)
	fib_arr = [0, 1]
	(integer-2).times do |index|
		result = fib_arr[index+1] + fib_arr[index]
		fib_arr << result
	end
	
p fib_arr
end

fibs = fibonacci(100)

# Driver code: assign fibonacci(100) to a variable and compare last
# index to huge number:
p fibs[-1] == 218922995834555169026


# Release 2: Sort an Array -- Bubble Sort

# Bubble sort basically just takes 2 elements of an array and compares
# them to determine which one is bigger, and if the one at the current
# index is greatert than the one at [index + 1], then the two numbers 
# are swapped. Then the same happens for each iteration through the array,
# comparing two numbers, and swapping as necessary. Once the next to last 
# index of the array has been examined and there are no further swaps to be
# # made the method exits and we're left with a beautiful, sorted array.

# Visualizing an array helps. I can imagine plucking two numbers out of an
# array to be analyzed and either left as is or swapped, and then being 
# reinserted into the array. At first I thought a bunch of variables would 
# be needed, but I don't think that will be necessary for this particular method.

# This particular release has not left me feeling terribly frustrated, though
# for some reason the first release was a real stumper. I was getting very 
# angry and my frustration was kind of like a brick wall -- it was late and I had 
# a hard time setting my irritation aside so I could focus on the task. Getting 
# some food definitely helped. Pizza heals all.

# Bubble Sort Pseudocode!

# Start with an array (numbers) of n length;
# Beginning at the far left (index 0) and evaluate the number in that index and 
# in [index + 1];
# Compare and determine if numbers[index] is greater than numbers[index + 1]:
# 	if true, then reverse the positions,
# 	if false, leave the numbers as is and move on to the next index;
# Iterate through the array n-1 times (not n times, since once you have compared
# the penultimate and final items, moving to the last index will generate an error
# since there will be no [index + 1] element);

# (after running my initial method I was left with a mostly unsorted array, and
# then I realized I needed to have the method loop over and over until all bits
# were sorted)

# Loop through again from left to right to evaluate numbers again, and switch 
# postitions of numbers, as needed;

# (after running my second version I realized I didn't have a condition to break the
# loop, oops.)

# Exit the loop once no additional position switches are made; boolean seems simplest.
# Return newly sorted array.

def bubble_sort (array)
  loop do
  	switched = false

  	(array.length - 1).times do |index|
  		if array[index] > array[index + 1]
  			array[index], array[index + 1] = array[index + 1], array[index]
  			switched = true
  		end
    end
  break if not switched
  
  end
  p array
end

numbers = [10, 5, 6, 2, 4, 1]

bubble_sort(numbers)
