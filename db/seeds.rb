# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


appetizers = Dish.create(name: "Appetizers")
main_course = Dish.create(name: "Main Course")
desserts = Dish.create(name: "Desserts")
drinks = Dish.create(name: "Drinks")

item13 = Item.create(name: "Cafe", price: 2, callories: 100, dish_id: drinks.id)
item14 = Item.create(name: "Tea", price: 2, callories: 100, dish_id: drinks.id)
item15 = Item.create(name: "helado", price: 3, callories: 200, dish_id: desserts.id)
item16 = Item.create(name: "CocaCola", price: 3, callories: 400, dish_id: drinks.id)

#los pollos hermanos
item1 = Item.create(name: "papitas", price: 8, callories: 600, dish: appetizers)
item2 = Item.create(name: "Half Chicken", price: 10, callories: 800, dish: main_course)
item3 = Item.create(name: "Pollo frito", price: 8, callories: 900, dish: main_course)
item4 = Item.create(name: "Mr. White", price: 1, callories: 100, dish: drinks)
Restaurant.create(name: "Los Pollos Hermanos", address: "Albuquerque 1234", items: [item1, item2, item3, item4, item16])

# The Krusty Krab
item6 = Item.create(name: "Cangreburger", price: 6, callories: 600, dish: main_course)
item7 = Item.create(name: "Kelp Shake", price: 3, callories: 400, dish: drinks)
Restaurant.create(name: "The Krusty Krab", address: "Bikini Bottom 1234", items: [item6, item7, item14])

# The Three Broomsticks
item8 = Item.create(name: "Casuela", price: 15, callories: 1200, dish: main_course)
item9 = Item.create(name: "Pumpkin Juice", price: 4, callories: 200, dish: drinks)
item10 = Item.create(name: "Chocolate Cauldrons", price: 8, callories: 600, dish: desserts)
Restaurant.create(name: "The Three Broomsticks", address: "Hogsmeade 1234", items: [item8, item9, item10, item16, item13])


# papa johns
item11 = Item.create(name: "Pizza con piña", price: 10, callories: 800, dish: main_course)
item12 = Item.create(name: "Pizza peperoni", price: 10, callories: 1000, dish: main_course)
Restaurant.create(name: "Papa Johns", address: "san damian con las condes", items: [item11, item12, item15, item16])


# Central Perk
item5 = Item.create(name: "sanguche", price: 5, callories: 500, dish: main_course)
item17 = Item.create(name: "empanaditas" , price: 5, callories: 500, dish: appetizers)
Restaurant.create(name: "Central Perk", address: "New York 1234", items: [item5, item17, item13, item14])










