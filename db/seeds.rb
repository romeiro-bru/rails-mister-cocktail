# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Creating Ingredients"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "watermelon juice")
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating Cocktails"

cocktails = Cocktail.create(
   name: 'Mojito',
   photo: 'url /app/assets/images/moijto.jpeg'
  )

cocktails = Cocktail.create(
  name: 'Caipirinha',
  photo: 'url (/app/assets/images/caipirinha.jpeg)'
  )

cocktails = Cocktail.create(
  name: 'Watermelon Cocktail',
  photo: '(assets/watermelon.jpeg)'
  )

cocktails = Cocktail.create(
  name: 'Blue Beach',
  photo: '(assets/bluepink.jpeg)'
  )

cocktails = Cocktail.create(
  name: 'Passionfruit Cocktail',
  photo: '(assets/passionfruit.jpeg)'
  )

cocktails = Cocktail.create(
  name: 'Blackberry Cocktail',
  photo: '(assets/purple.jpeg)'
  )
