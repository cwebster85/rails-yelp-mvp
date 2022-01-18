# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020 7420 9324", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020 7729 1888", category: "italian" }
portland = { name: "Portland", address: "113 Great Portland St, London W1W 6QQ", phone_number: "020 7436 3261", category: "french" }
angler = { name: "Angler", address: "South Place Hotel, 3 South Pl, London EC2M 2AF", phone_number: "020 3215 1260", category: "belgian" }
ampeli = { name: "Ampéli", address: "18 Charlotte St., London W1T 2LZ", phone_number: "020 3355 5370", category: "french" }


[dishoom, pizza_east, portland, angler, ampeli].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
