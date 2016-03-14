# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
food_items = [
	'Phở', 'Bún Bò Huế', 'Bánh Canh', 'Bún Thịt Nướng', 'Bánh Canh Giò Heo','Cơm Gà Xối Mỡ'
]
sections = [
	'Breakfast','Lunch','Dinner','Drinks'
]
sections.each do |section|
	food_items.each do |item|
	  Food.create!( 
	  	:name => item,
	    :description => Faker::Lorem.paragraph,
	    :price => rand(100000..1000000),
	    :section => section,
	    :img_url => "http://loremflickr.com/320/240/#{item}"
	)
	end
end