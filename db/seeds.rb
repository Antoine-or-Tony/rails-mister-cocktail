# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seed is starting"
Ingredient.destroy_all
Cocktail.destroy_all

a = Ingredient.create(name: "lemon")
b = Ingredient.create(name: "ice")
c = Ingredient.create(name: "mint leaves")

x = Cocktail.create(name: "Easy Cocktail")
Cocktail.create(name: "Paris")
Cocktail.create(name: "Lemon Spice")

Dose.create!(description: "easy ", ingredient_id: a.id, cocktail_id: x.id)
puts "ingredients: #{Ingredient.count} cocktail: #{Cocktail.count} dose: #{Dose.count}"
