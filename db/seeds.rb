# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seed: Deleting existing records...'
addresses = ["Provinzstraße 35, 13409 Berlin", "Osloer Str. 18-19, 13359 Berlin", "Lydia-Rabinowitsch-Straße 13, Berlin", "Spittelmarkt 11-12, 10117 Berlin", "Friedrichstraße 231, 10969 Berlin"]
Skill.destroy_all
User.destroy_all

puts 'Seed: Seeding...'

user1 = User.create!(
  first_name: "Yo",
  last_name: "Kane",
  username: "Yo",
  email: "yo@email.com",
  password: 'password',
  role: 'renter'
)

user2 = User.create!(
  first_name: "Mary",
  last_name: "Lu",
  username: "Mary",
  email: "mary@email.com",
  password: 'password',
  role: 'contractor'
)

skill1 = Skill.create!(
    name: "Fix your stuff",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
    category: "woodwork",
    price: 200,
    address: addresses.sample,
    user_id: user1.id
)

skill2 = Skill.create!(
  name: "Pet sitting",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  category: "pets",
  price: 100,
  address: addresses.sample,
  user_id: user2.id
)

Booking.create!(
  user_id: user1.id,
  booking_date: DateTime.strptime("08/01/2018 11:00", "%m/%d/%Y %H:%M"), # Date.now
  skill_id: skill2.id
)
Booking.create!(
  user_id: user2.id,
  booking_date: DateTime.strptime("08/01/2018 11:00", "%m/%d/%Y %H:%M"), # Date.now
  skill_id: skill1.id
)
puts 'Seed: Finished seeding!'
# require 'faker'
# addresses = ["Provinzstraße 35, 13409 Berlin", "Osloer Str. 18-19, 13359 Berlin", "Lydia-Rabinowitsch-Straße 13, Berlin", "Spittelmarkt 11-12, 10117 Berlin", "Friedrichstraße 231, 10969 Berlin"]
# Skill.destroy_all
# User.destroy_all

# 10.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     username: Faker::Internet.username,
#     email: Faker::Internet.email,
#     password: 'password',
#     role: ['renter', 'contractor', 'unicorn'].sample
#     # Add more user attributes as needed
#   )
#   skill = Skill.create!(
#     name: Faker::Company.profession,
#     description: Faker::Company.buzzword,
#     category: Faker::Commerce.department,
#     price: Faker::Number.decimal(l_digits: 2),
#     address: addresses.sample,    #address: Faker::Address.full_address,
#     user_id: user.id
#   )
#  end

# electrician = Skill.create{skill_name: "Electrician", description: "Residential/commercial repairs and installation of lighting and appliances. ⚡️💡⚡️", category_id: , price: 200}
# pet_sitter =  Skill.create{skill_name: "Pet Sitter", description: "Caring for pets while you're sick or on holiday. 🦮🐇🐈🐟🦜🐢", category_id: , price: 50}
# house_keeping = Skill.create{skill_name: "House Keeping", description: "Making your flat sparkling new!", category_id: , price: 100}
# tech_support = Skill.create{skill_name: "Technical Support", description: "Will solve your computer problems: The easy way 💻, or the hard way 🔨!", category_id: , price: 100}
# motivational_speaker = Skill.create{skill_name: "Motivational Speaker", description: "Provides the motivation you need! You got this! 🙌", category_id: , price: 1000}
# actor = Skill.create{skill_name: "Professional Actor/Actress", description: "Have a cancellation for your big filming day? Find the perfect fit for your film spontan! 🎤", category_id: , price: 1000}
# mover = Skill.create{skill_name: "Moving Services", description: "Domestic/Regional moving services for a seemless transition to your new home or office", category_id: , price: 200}
# bodyguard = Skill.create{skill_name: "Bodyguard", description: "Not your standard security service: protects you from attacks 24/7! 👮‍♂️", category_id: , price: 500}
# personal_trainer = Skill.create{skill_name: "Personal Trainer", description: "Helps you get in shape and provides motivation and accountability. 💪", category_id: , price: 200}
# musician = Skill.create{skill_name: "Musician", description: "Find the right performer for your song or production", category_id: , price: 100}
# travel_agent = Skill.create{skill_name: "Travel Agent", description: "Knows the ins and outs of traveling and provides the best recommendations for your holiday. ⛱️", category_id: , price: 100}
# photographer = Skill.create{skill_name: "Photographer", description: "Beauty is within the eye of the beholder. 📸", category_id: , price: 100}
# personal_chef = Skill.create{skill_name: "Personal Chef", description: "Make your 'Netflix and Chill' a bit more romantic! 👩‍🍳🤌💋", category_id: , price: 500}
# personal_ta = Skill.create{skill_name: "TA", description: "Solve your coding troubles on the fly! 🧠👩‍💻", category_id: , price: 200}
# magician = Skill.create{skill_name: "Magician", description: "Abracadabra! 🪄 Make your problems disappear! 🧙‍♂️ ", category_id: , price: 100}
# temp_friend = Skill.create{skill_name: "Pretend Friend", description: "Proves to the world that you have support, provides you cover for rejecting a date, helps you get out of awkward conversations at company parties. Has your back! 👊", category_id: , price: 1000}
# accountant = Skill.create{skill_name: "Accountant", description: "Book keeping for all your professional and personal needs. 📒", category_id: , price: 1000}
# carpenter = Skill.create{skill_name: "Carpenter", description: "Furnish your apartment with a higher standard than IKEA. Custom furniture and home design. 🛠️", category_id: , price: 200}
# translator = Skill.create{skill_name: "Personal Translator", description: "Accompanies you and takes some of the stress out of your international travels. 🗣️", category_id: , price: 200}
# financial_advisor = Skill.create{skill_name: "Financial Advisor", description: "No more YouTube! Get financial advice from real professionals. 💶 ", category_id: , price: 1000}
