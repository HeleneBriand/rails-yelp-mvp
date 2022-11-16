# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "02 40 60 12 23"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "02 40 60 12 27"}
pasta_josé =  {name: "Pasta José", address: "11 esp du Pharo, 13007 Marseille", category: "japanese", phone_number: "02 40 60 12 26"}
best_restaurant = {name: "Best Restaurant", address: "123 rue de Sèze, 69006 Lyon", category: "japanese", phone_number: "02 40 60 12 25"}
chinese_resto = {name: "Chinese Resto", address: "49 rue St Sauveur, 75002 Paris", category: "chinese", phone_number: "02 40 60 12 24"}

[dishoom, pizza_east, pasta_josé, best_restaurant, chinese_resto ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
