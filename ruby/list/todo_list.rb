class TodoList

def initialize(chore)
	@list = chore
end

def get_items
	@list
end

def add_item(chore)
	@list << chore
end

def delete_item(chore)
	@list.delete(chore)
end

def get_item(i)
	@list.fetch(i)
end


end
