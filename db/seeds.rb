# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create some pizzas
cheese_pizza = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pepperoni_pizza = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
mushroom_pizza = Pizza.create(name: "Mushroom", ingredients: "Dough, Tomato Sauce, Cheese, Mushroom")

# Create some restaurants
sottocasa = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
pizzarte = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")
marios = Restaurant.create(name: "Mario's", address: "9 E 17th St, New York, NY 10003")



# Create some restaurant pizzas
RestaurantPizza.create(price: 10, pizza_id: 7, restaurant_id: 70)
RestaurantPizza.create(price: 12, pizza_id: 8, restaurant_id: 38)
RestaurantPizza.create(price: 8, pizza_id: 4, restaurant_id: 90)
