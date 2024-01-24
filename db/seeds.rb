# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "11111111", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "11111111", category: "italian"}
petit = {name: "Petit", address: "8 Mainstrasse, Berlin", phone_number: "11111111", category: "french"}
sushi =  {name: "Sushi", address: "1DR Rua St. Antonio, Lisbon", phone_number: "11111111", category: "japanese"}
mr_lu =  {name: "Mr Lu", address: "Beijing", phone_number: "11111111", category: "chinese"}

[dishoom, pizza_east, petit, sushi, mr_lu].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
