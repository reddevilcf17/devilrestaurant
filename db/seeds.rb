# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sections = Section.create([{name: 'Breakfast'}, {name: 'Lunch'}, {name: 'Dinner'}, {name: 'Drinks'}])

FoodItem.create(
[
	{name:'Bakery', description:'Eat with eggs', price:'20000', section: sections.first,
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Noodle', description:'Pho, Hu tieu', price:'25000', section: sections.first,
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Fried Rice', description:'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', price:'20000', section: sections.first,
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Hamburger', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', price:'50000', section: sections.first,
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Salad', description:'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', price:'50000', section: sections.first,
		image_url:'http://loremflickr.com/320/240/canhchua'
	}
]

)

FoodItem.create(
[
	{name:'Rice cooked', description:'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ', price:'20000', section: sections[1],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Noodle', description:'Pho, Hu tieu', price:'25000', section: sections[1],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Fried Rice', description:'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', price:'20000', section: sections[1],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Beef Steak', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', price:'70000', section: sections[1],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Fish', description:'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', price:'20000', section: sections[1],
		image_url:'http://loremflickr.com/320/240/canhchua'
	}
]

)

FoodItem.create(
[
	{name:'Rice cooked', description:'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ', price:'20000', section: sections[2],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Bacon', description:'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. ', price:'25000', section: sections[2],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Fried Rice', description:'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', price:'20000', section: sections[2],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Tuna', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', price:'30000', section: sections[2],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Salad', description:'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', price:'10000', section: sections[2],
		image_url:'http://loremflickr.com/320/240/canhchua'
	}
]

)

FoodItem.create(
[
	{name:'Soda', description:'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ', price:'20000', section: sections[3],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Coca Cola', description:'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. ', price:'15000', section: sections[3],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Pepsi', description:'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', price:'15000', section: sections[3],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'Lemon Tea', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', price:'10000', section: sections[3],
		image_url:'http://loremflickr.com/320/240/canhchua'
	},
	{name:'RedBull', description:'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', price:'10000', section: sections[3],
		image_url:'http://loremflickr.com/320/240/canhchua'
	}
]

)