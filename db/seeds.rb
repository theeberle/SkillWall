# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 'password',
    role: ['renter', 'contractor', 'unicorn'].sample
    # Add more user attributes as needed
  )
  skill = Skill.create!(
    name: Faker::Lorem.word,
    description: Faker::Lorem.sentence,
    category: user.role,
    price: Faker::Number.decimal(l_digits: 2),
    address: Faker::Address.full_address,
    user_id: user.id
  )
end
