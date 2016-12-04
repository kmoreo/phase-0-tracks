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

def create_list(list, quantities)
  grocery_list = {}
  full_array = list.zip(quantities)

  full_array.each do |item,quantity|
    grocery_list[item.to_sym] = quantity
  end

  p grocery_list
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
item_list = []
quantity_list = []

input_over = false

until input_over
  puts "List an item you'd like to add to your grocery list."
  puts "Type 'done' to stop"
  item_input = gets.chomp
  if item_input == 'done'
    input_over = true
    break 
  else
    puts "How much #{item_input} do you want?"
    quantity_input = gets.chomp
  end

  item_list << item_input
  quantity_list << quantity_input
end

list = create_list(item_list, quantity_list)

print_list(list)

# add_list("bananas", 5, list)

# print_list(list)

# change_list("bananas", 18, list)

# # remove_list("bananas", l)

# print_list(list)
