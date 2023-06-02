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
    category: "Woodwork",
    price: 200,
    address: addresses.sample,
    user_id: user1.id,
    photo_url: "https://images.unsplash.com/photo-1426927308491-6380b6a9936f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8d29vZHdvcmt8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60"
)

skill2 = Skill.create!(
  name: "Pet sitting",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  category: "Pets",
  price: 100,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGV0c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60"
)
skill3 = Skill.create!(
  name: "Pet sitting",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  category: "Pets",
  price: 100,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://images.unsplash.com/photo-1583511655826-05700d52f4d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGV0c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60'
)
skill4 = Skill.create!(
  name: "Gym Buddy",
  description: "Build mass with Lary!",
  category: "Fitness",
  price: 100,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Zml0bmVzc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
)
skill5 = Skill.create!(
  name: "Pump it up!",
  description: "How to feel more confident on the dancefloor!",
  category: "Fitness",
  price: 90,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://images.unsplash.com/photo-1520367445093-50dc08a59d9d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGRhbmNpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
)
skill6 = Skill.create!(
  name: "Code till you die!",
  description: "Solve your coding troubles on the fly! 🧠👩‍💻",
  category: "Upskilling",
  price: 90,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://plus.unsplash.com/premium_photo-1678565869434-c81195861939?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGNvZGluZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'
)
skill7 = Skill.create!(
  name: "Magic me crazy",
  description: "Abracadabra! 🪄 Make your problems disappear! 🧙‍♂️ ",
  category: "Fun",
  price: 90,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://plus.unsplash.com/premium_photo-1664392433947-1d9902b52f80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFnaWNpYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
)

skill8 = Skill.create!(
  name: "Even better Pettsitter",
  description: "Great pets great people great ideas!",
  category: "Pets",
  price: 90,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://images.unsplash.com/photo-1555685812-4b943f1cb0eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBldHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
)
skill9 = Skill.create!(
  name: "Let em help with the Ikea mess",
  description: "Cheap and great service!",
  category: "Woodwork",
  price: 90,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://images.unsplash.com/photo-1502343019212-cc6a09783255?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHdvb2R3b3JrfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
)
skill10 = Skill.create!(
  name: "Run Run Run",
  description: "Run and walk with me! Easy paths to feel great!",
  category: "Fitness",
  price: 90,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://images.unsplash.com/photo-1530143311094-34d807799e8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHJ1bm5pbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
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
