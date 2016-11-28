kitchen_cabinet = {
	shelf_1: {
		name: "Plates & Bowls",
		plates: {
			white_porcelain: 10,
			black_porcelain: 10
		},
		everyday_bowls: [
			"Cereal bowls",
			"Soup bowls",
			"Ramekins"
		],
		nested_mixing_bowls: [
			"2 quart",
			"4 quart",
			"8 quart"
		]
	},
	shelf_2: {
		name: "Mugs & Glasses",
		coffee_mugs: {
			ok_for_company: 2,
			not_ok_for_company: 6
		},
		drinking_glasses: [
			"Rainbow-colored acrylic tea glasses",
			"Rocks glasses",
			"Hammered copper collins glasses",
			"Margarita glasses"
		]
	},
	shelf_3: {
		name: "Rarely Used Stuff",
		soup_tureen: {
			main: "Artisanal Stoneware Tureen",
			top: "Glazed Stoneware Lid",
			other: "10-inch Serving Ladle"
		},
		tea_serving_pot: {
			main: "Turquiose porcelain pot",
			top: "Small steel lid",
			other: "Steel mesh tea infuser insert"
		},
		decorative_serving_plates: [
			"12-inch Oval Snowman Platter",
			"12-inch Oval French Goose Platter",
			"8-inch Square Olive Tray"
		]
	}
}

p kitchen_cabinet[:shelf_1][:name]
p kitchen_cabinet[:shelf_1][:everyday_bowls][1]
p kitchen_cabinet[:shelf_2][:coffee_mugs][:not_ok_for_company]
p kitchen_cabinet[:shelf_2][:drinking_glasses][2]
p kitchen_cabinet[:shelf_3][:soup_tureen][:other]
p kitchen_cabinet[:shelf_2][:drinking_glasses][1] = "Whiskey glasses"
p kitchen_cabinet[:shelf_3][:decorative_serving_plates].push("Awesome Cat in Christmas Sweater Platter")
