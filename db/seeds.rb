# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times { Picture.create!(visible: 'False', url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports'])) }
10.times { User.create!(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, username: Faker::Name.name) }
10.times { Card.create!(position: Faker::Number.number(digits: 2), text: Faker::Quote.famous_last_words) }


# p "Created #{Spice.count} spices"