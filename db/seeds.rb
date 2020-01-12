# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all

puts "Creating Ingredients"

Ingredient.create(name: "Ice")
Ingredient.create(name: "Water")
Ingredient.create(name: "Sparkling water")
Ingredient.create(name: "Salt")
Ingredient.create(name: "Pepper")
Ingredient.create(name: "Vanilla")
Ingredient.create(name: "Vanilla ice cream")
Ingredient.create(name: "Honey")
Ingredient.create(name: "Syrup")
Ingredient.create(name: "Maple syrup")
Ingredient.create(name: "Sugar")
Ingredient.create(name: "Cinnamon sugar")
Ingredient.create(name: "Milk")
Ingredient.create(name: "Cream")
Ingredient.create(name: "Condensed milk")

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Lime")
Ingredient.create(name: "Orange")
Ingredient.create(name: "Orange skin")
Ingredient.create(name: "Orange twist")
Ingredient.create(name: "Melon")
Ingredient.create(name: "Kiwi")
Ingredient.create(name: "Fig")
Ingredient.create(name: "Star fruit")
Ingredient.create(name: "Dragon fruit")
Ingredient.create(name: "Passion fruit")
Ingredient.create(name: "Grapefruit")
Ingredient.create(name: "Litchi")
Ingredient.create(name: "Cherry")
Ingredient.create(name: "Cranberry")
Ingredient.create(name: "Strawberry")
Ingredient.create(name: "Blackberry")
Ingredient.create(name: "Raspberry")
Ingredient.create(name: "Blueberry")
Ingredient.create(name: "Pomegranate")
Ingredient.create(name: "Berries")
Ingredient.create(name: "Mixed fruits")

Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Celery")
Ingredient.create(name: "Basil")
Ingredient.create(name: "Rosemary")
Ingredient.create(name: "Watermelon juice")
Ingredient.create(name: "Grapefruit juice")
Ingredient.create(name: "Pineapple juice")
Ingredient.create(name: "Orange juice")
Ingredient.create(name: "Lemon juice")
Ingredient.create(name: "Peach juice")
Ingredient.create(name: "Apple juice")
Ingredient.create(name: "Strawberry juice")
Ingredient.create(name: "Cranberry juice")
Ingredient.create(name: "Passion fruit juice")
Ingredient.create(name: "Tomato juice")
Ingredient.create(name: "Fruit juice")
Ingredient.create(name: "Apricot nectar")

Ingredient.create(name: "Vodka")
Ingredient.create(name: "Cachaça")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Pisco")
Ingredient.create(name: "Sake")
Ingredient.create(name: "Soju")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Dark rum")
Ingredient.create(name: "Scotch")
Ingredient.create(name: "Whiskey")
Ingredient.create(name: "Bacardi")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Vermouth")
Ingredient.create(name: "Cognac")
Ingredient.create(name: "Brandy")
Ingredient.create(name: "Triple sec")
Ingredient.create(name: "Wine")
Ingredient.create(name: "White wine")
Ingredient.create(name: "Sparkling wine")
Ingredient.create(name: "Champagne")
Ingredient.create(name: "Peach schnapps")
Ingredient.create(name: "Cherry liqueur")
Ingredient.create(name: "Melon liquor")
Ingredient.create(name: "Cocoa liquor")
Ingredient.create(name: "Irish cream")
Ingredient.create(name: "Orange-flavored liqueur")
Ingredient.create(name: "Jabuticaba liquor")
Ingredient.create(name: "Mint liquor")
Ingredient.create(name: "Dry vermouth")
Ingredient.create(name: "Blue curazon")
Ingredient.create(name: "Coffee")
Ingredient.create(name: "Sprite")
Ingredient.create(name: "Ginger ale")
Ingredient.create(name: "Coke")
Ingredient.create(name: "Tea")

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating Cocktails"

cocktails = Cocktail.create(
 name: 'Caipirinha',
 photo: './assets/caipirinha.jpeg'
)

cocktails = Cocktail.create(
 name: 'Watermelon Cocktail',
 photo: './assets/watermelon.jpeg'
)

cocktails = Cocktail.create(
  name: 'Blue Beach',
  photo: './assets/bluepink.jpeg'
)

cocktails = Cocktail.create(
  name: 'Passionfruit Cocktail',
  photo: './assets/passionfruit.jpeg'
)

cocktails = Cocktail.create(
  name: 'Blackberry Cocktail',
  photo: './assets/purple.jpeg'
)

cocktails = Cocktail.create(
  name: 'Lemon and lime',
  photo: './assets/lemon-lime.jpeg'
)
