# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Photo.destroy_all    
User.destroy_all

users_array = ["steve", "jonas", "cristian"]

users = users_array.map do |username|
  user = User.create(username: username, email: "#{username}@exampple.com", password: "password123" )
  puts "Created user: #{user.username} — ID: #{user.id}, Errors: #{user.errors.full_messages}"
  user



end

 
photo_id_array = ["pFqrYbhIAXs", "6_9kjnfCOSY", 'agvvXjG40hI', '_d9gOMIhI1o', '613pTZEFf2U']


puts "Users array: #{users.inspect}"



photo_id_array.each do |photo_id|

  Photo.create(url: "#{photo_id}", user:users.sample)



end


puts "Seeding photos..."
