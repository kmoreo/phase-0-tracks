# GROCERY LIST MAKER

require 'sqlite3'

db = SQLite3::Database.new("groceries.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS groceries(
    id INTEGER PRIMARY KEY,
    item_name VARCHAR(255),
    item_quantity INT,
    aisle_id INT,
    note VARCHAR(255)
  )
SQL

db.execute(create_table)

def create_list(db, item_name, item_quantity, aisle_id, note)
  db.execute("INSERT INTO groceries (item_name, item_quantity, aisle_id, note) VALUES (?, ?, ?, ?)", [item_name, item_quantity, aisle_id, note])
end

def grocery_list(db)
	db.execute("SELECT * FROM groceries")
end


def print_list(db)
	grocery_list(db).each do |grocery|
		puts "#{grocery['id']}. Item: #{grocery['item_name']}; Quantity: #{grocery['item_quantity']}; Aisle: #{grocery['aisle_id']}; Note: #{grocery['note']}"
	end
end


# USER INTERFACE/DRIVER CODE

puts "*Grocery Addition Assistant*"

loop do
	puts "Type 'a' to add an item, 'd' to delete an item, 'u' to update an item, or 'q' to quit."
	response = gets.chomp

	break if response == "q"

	if response == "a"
		loop do
			puts "Add an item (type 'q' to quit):"
			item_name = gets.chomp

			break if item_name == "q"

			puts "Quantity?"
			item_quantity = gets.chomp

			puts "Store aisle?"
			aisle_id = gets.chomp

			puts "Notes"
			note = gets.chomp

			create_list(db, item_name, item_quantity, aisle_id, note)
		end
	elsif response == 'd'
		print_list(db)
		puts "Delete which item number?"
		delete_item = gets.chomp
		db.execute("DELETE FROM groceries WHERE id = #{delete_item}")
	else
		print_list(db)
		puts "Update which item number?"
		item_number = gets.chomp
		puts "Type 'name', 'quantity', 'aisle', or 'note' to update that section."
		update_response = gets.chomp
			if update_response == "name"
				column_name = "item_name"
			elsif update_response == "quantity"
				column_name = "item_quantity"
			elsif update_response == "aisle"
				column_name = "aisle_id"
			else
				column_name = "note"
			end					
		puts "Input the new value:"
		new_value = gets.chomp
		db.execute("UPDATE groceries SET #{column_name} = ? WHERE id = ?", [new_value, item_number])
	end
end

puts "Here is your list:"
print_list(db)
