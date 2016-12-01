# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Prompt user for items
  # Put user input in pocket
  # Turn input into array
  # Convert items to keys of hash
  # set default quantity for values
  # print the list to the console [can you use one of your other methods here?]
# output: [HASH]

# Method to add an item to a list
# input: item name and optional quantity and existing grocery list
# steps:
  # push new item and value to existing list
# output: updated list

# Method to remove an item from the list
# input: item we want to remove and the list name
# steps:
  # check if item is in the list
  # delete or return error (if not on list)
# output: updated list

# Method to update the quantity of an item
# input: item, new quantity, existing list
# steps:
  # check if item is in the list
  # update key-value pair
# output: updated list

# Method to print a list and make it look pretty
# input: list
# steps: 
  # iterate over each key-value pair in hash and make pretty
# output: pretty list

def create_list(list)
  grocery_list = {}
  list.each do |item|
    grocery_list[item.to_sym] = 1
  end
  grocery_list
end

def add_list(item, quantity, ex_list)
  ex_list[item.to_sym] = quantity
  ex_list
end

def remove_list(item, ex_list)
  if ex_list.key? (item.to_sym)
    ex_list.delete(item.to_sym)
  else
    puts "Try again!"
  end
  ex_list
end

def change_list(item, quantity, ex_list)
  if ex_list.key? (item.to_sym)
    add_list(item, quantity, ex_list)
  else
    puts "Try again!"
  end
  ex_list
end

def print_list(ex_list)
  puts "-"*10
  
  ex_list.each do |item, quantity|
    puts "=> Item: #{item.capitalize}, Quantity: #{quantity}"
  end
end

# Driver Code

puts "Give me a list of items you'd like to purchase."
user_list = gets.chomp.split(' ')

l = create_list(user_list)

print_list(l)

add_list("bananas", 5, l)

print_list(l)

change_list("bananas", 18, l)

# remove_list("bananas", l)

print_list(l)