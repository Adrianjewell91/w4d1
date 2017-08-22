# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)
User.create(username: Faker::Name.name)


Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 1)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 2)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 3)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 4)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 5)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 6)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 7)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 8)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 9)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 10)
Artwork.create(title: Faker::Zelda.location, image_url: 'love.com', artist_id: 11)
