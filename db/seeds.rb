# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seed: Deleting existing records...'
addresses = [
  'Kreuzbergstraße 45, 10965 Berlin',
  'Alexanderplatz 7, 10178 Berlin',
  'Potsdamer Platz 1, 10785 Berlin',
  'Friedrichstraße 205, 10117 Berlin',
  'Kurfürstendamm 234, 10719 Berlin',
  'Brandenburger Tor, Pariser Platz, 10117 Berlin',
  'Schönhauser Allee 36, 10435 Berlin',
  'Warschauer Straße 33, 10243 Berlin',
  'Gendarmenmarkt, 10117 Berlin',
  'Schloss Charlottenburg, Spandauer Damm 10, 14059 Berlin',
  'Oranienburger Straße 96, 10178 Berlin',
  'Rosa-Luxemburg-Straße 2, 10178 Berlin',
  'Unter den Linden 77, 10117 Berlin',
  'Friedrichstraße 43-45, 10969 Berlin',
  'Hauptstraße 23, 10827 Berlin',
  'Schönhauser Allee 80, 10439 Berlin',
  'Karl-Liebknecht-Straße 9, 10178 Berlin',
  'Museum Island, 10178 Berlin',
  'Invalidenstraße 43, 10115 Berlin',
  'Tempelhofer Damm 1-7, 12101 Berlin',
  'Kreuzberg, 10997 Berlin',
  'Rosenthaler Platz, 10178 Berlin',
  'Wittenbergplatz, 10789 Berlin',
  'Schönhauser Allee Arcaden, 10439 Berlin',
  'Prenzlauer Allee 241, 10405 Berlin',
  'Sonnenallee 221, 12059 Berlin',
  'Grünberger Straße 13, 10243 Berlin',
  'Leipziger Platz 1, 10117 Berlin',
  'Berliner Allee 55, 13088 Berlin',
  'Kopenhagener Straße 46, 10437 Berlin',
  'Schönfließer Straße 8, 10439 Berlin'
]

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

user3 = User.create!(
  first_name: "Bob",
  last_name: "Ross",
  username: "BobbyRoss",
  email: "bob@email.com",
  password: 'password',
  role: 'contractor'
)

user4 = User.create!(
  first_name: "Max",
  last_name: "Mannesmann",
  username: "Maxi22",
  email: "max@email.com",
  password: 'password',
  role: 'contractor'
)

user5 = User.create!(
  first_name: "Mandi",
  last_name: "Winkler",
  username: "Mandi",
  email: "mandi@email.com",
  password: 'password',
  role: 'contractor'
)

user6 = User.create!(
  first_name: "Steffi",
  last_name: "Schmidt",
  username: "Steffi123",
  email: "steffi@email.com",
  password: 'password',
  role: 'contractor'
)

user7 = User.create!(
  first_name: "Diego",
  last_name: "Montana",
  username: "Diggi1",
  email: "diggi1@email.com",
  password: 'password',
  role: 'contractor'
)

user8 = User.create!(
  first_name: "Nicole",
  last_name: "Atkinson",
  username: "Nikki33",
  email: "nikki33@email.com",
  password: 'password',
  role: 'contractor'
)

skill1 = Skill.create!(
    name: "Fix your stuff",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
    category: "Construction",
    price: 200,
    address: addresses.sample,
    user_id: user1.id,
    photo_url: "https://images.unsplash.com/photo-1426927308491-6380b6a9936f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8d29vZHdvcmt8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60"
)

skill2 = Skill.create!(
  name: "Pet Sitter",
  description: "Caring for pets while you're sick or on holiday. 🦮🐇🐈🐟🦜🐢 ",
  category: "Pets",
  price: 100,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGV0c3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60"
)

skill3 = Skill.create!(
  name: "Plumber",
  description: "Will fix your plumbing issues, fast and snappy! 🪠",
  category: "Construction",
  price: 150,
  address: addresses.sample,
  user_id: user2.id,
  photo_url: 'https://cdn.pixabay.com/photo/2017/07/28/00/43/plumber-2547329_1280.jpg'
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
  description: "Abracadabra! 🪄 I am a magician and I will make your problems disappear! Totally legit! 🧙‍♂️ ",
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
  category: "Construction",
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

skill11 = Skill.create!(
  name: "Electrician",
  description: "Residential/commercial repairs and installation of lighting and appliances. ⚡️💡⚡️",
  category: "Construction",
  price: 200,
  address: addresses.sample,
  user_id: user3.id,
  photo_url: 'https://cdn.pixabay.com/photo/2015/12/07/10/49/electrician-1080554_1280.jpg'
)

skill12 = Skill.create!(
  name: "House Keeping",
  description: "Making your flat sparkling new!",
  category: "Home",
  price: 100,
  address: addresses.sample,
  user_id: user4.id,
  photo_url: 'https://cdn.pixabay.com/photo/2017/09/29/15/38/cleanliness-2799459_1280.jpg'
)

skill13 = Skill.create!(
  name: "Tech Support",
  description: "Will solve your computer problems: The easy way 💻, or the hard way 🔨!",
  category: "Tech",
  price: 100,
  address: addresses.sample,
  user_id: user4.id,
  photo_url: 'https://cdn.pixabay.com/photo/2021/02/03/13/58/worker-5978076_1280.jpg'
)

skill14 = Skill.create!(
  name: "Motivational Speaker",
  description: "Provides the motivation you need! You got this! 🙌",
  category: "Life",
  price: 100,
  address: addresses.sample,
  user_id: user4.id,
  photo_url: 'https://cdn.pixabay.com/photo/2018/02/18/20/16/male-3163398_1280.jpg'
)

skill15 = Skill.create!(
  name: "Support Dog",
  description: "I'm a dog! Will cuddle and beg for treats for free! 🐶 ",
  category: "Fun",
  price: 300,
  address: addresses.sample,
  user_id: user4.id,
  photo_url: 'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_1280.jpg'
)

skill16 = Skill.create!(
  name: "Actress",
  description: "Have a cancellation for your big filming day? Find the perfect fit for your film spontan! 🎤",
  category: "Performing Arts",
  price: 300,
  address: addresses.sample,
  user_id: user4.id,
  photo_url: 'https://cdn.pixabay.com/photo/2013/02/17/03/30/chicago-82395_1280.jpg'
)

skill17 = Skill.create!(
  name: "Moving Services",
  description: "Domestic/Regional moving services for a seemless transition to your new home or office 🚛",
  category: "Life",
  price: 200,
  address: addresses.sample,
  user_id: user5.id,
  photo_url: 'https://cdn.pixabay.com/photo/2010/12/16/20/56/van-3676_1280.jpg'
)

skill18 = Skill.create!(
  name: "Bodyguard",
  description: "Not your standard security service: protects you from attacks 24/7! 👮‍♂️",
  category: "Security",
  price: 500,
  address: addresses.sample,
  user_id: user5.id,
  photo_url: 'https://cdn.pixabay.com/photo/2015/07/31/15/01/security-869216_1280.jpg'
)

skill19 = Skill.create!(
  name: "Personal Trainer",
  description: "Helps you get in shape and provides motivation and accountability. 💪",
  category: "Fitness",
  price: 200,
  address: addresses.sample,
  user_id: user5.id,
  photo_url: 'https://cdn.pixabay.com/photo/2016/03/24/19/06/personal-1277392_1280.jpg'
)

skill20 = Skill.create!(
  name: "Studio Musician",
  description: "Find the right performer for your song or production 🎸🎙️🎹",
  category: "Performing Arts",
  price: 100,
  address: addresses.sample,
  user_id: user6.id,
  photo_url: 'https://cdn.pixabay.com/photo/2015/05/07/11/02/guitar-756326_1280.jpg'
)

skill21 = Skill.create!(
  name: "Travel Agent",
  description: "Knows the ins and outs of traveling and provides the best recommendations for your holiday. ⛱️",
  category: "Travel",
  price: 100,
  address: addresses.sample,
  user_id: user6.id,
  photo_url: 'https://cdn.pixabay.com/photo/2015/05/07/11/02/guitar-756326_1280.jpg'
)

skill22 = Skill.create!(
  name: "Photographer",
  description: "Beauty is within the eye of the beholder. 📸",
  category: "Creative Arts",
  price: 100,
  address: addresses.sample,
  user_id: user6.id,
  photo_url: 'https://cdn.pixabay.com/photo/2014/07/31/22/50/photographer-407068_1280.jpg'
)

skill23 = Skill.create!(
  name: "Personal Chef",
  description: "Make your 'Netflix and Chill' a bit more romantic! 👩‍🍳🤌💋",
  category: "Life",
  price: 200,
  address: addresses.sample,
  user_id: user6.id,
  photo_url: 'https://cdn.pixabay.com/photo/2016/11/29/08/24/bakery-1868396_1280.jpg'
)

skill24 = Skill.create!(
  name: "Temp Friend",
  description: "Proves to the world that you have support, provides you cover for rejecting a date, helps you get out of awkward conversations at company parties. Has your back! 👊",
  category: "Fun",
  price: 200,
  address: addresses.sample,
  user_id: user6.id,
  photo_url: 'https://cdn.pixabay.com/photo/2017/08/02/00/49/people-2569234_1280.jpg'
)

skill25 = Skill.create!(
  name: "Accountant",
  description: "Book keeping for all your professional and personal needs. 📒",
  category: "Finance",
  price: 250,
  address: addresses.sample,
  user_id: user6.id,
  photo_url: 'https://cdn.pixabay.com/photo/2014/07/06/13/55/calculator-385506_1280.jpg'
)

skill26 = Skill.create!(
  name: "Carpenter",
  description: "Furnish your apartment with a higher standard than IKEA. Custom furniture and home design. 🛠️",
  category: "Construction",
  price: 200,
  address: addresses.sample,
  user_id: user7.id,
  photo_url: 'https://cdn.pixabay.com/photo/2016/02/06/18/08/tools-1183374_1280.jpg'
)

skill27 = Skill.create!(
  name: "Carpenter",
  description: "Furnish your apartment with a higher standard than IKEA. Custom furniture and home design. 🛠️",
  category: "Construction",
  price: 200,
  address: addresses.sample,
  user_id: user7.id,
  photo_url: 'https://cdn.pixabay.com/photo/2016/02/06/18/08/tools-1183374_1280.jpg'
)

skill28 = Skill.create!(
  name: "Personal Translator",
  description: "Accompanies you and takes some of the stress out of your international travels. 🗣️",
  category: "Travel",
  price: 350,
  address: addresses.sample,
  user_id: user7.id,
  photo_url: 'https://cdn.pixabay.com/photo/2022/10/24/05/46/star-wars-7542690_1280.jpg'
)

skill29 = Skill.create!(
  name: "Financial Advisor",
  description: "No more YouTube! Get financial advice from real professionals. 💶",
  category: "Finance",
  price: 500,
  address: addresses.sample,
  user_id: user8.id,
  photo_url: 'https://cdn.pixabay.com/photo/2019/04/29/07/04/software-development-4165307_1280.jpg'
)

skill30 = Skill.create!(
  name: "Professional Bullshitter",
  description: "Gives you the coaching you need to bullshit your way through life! 🤡",
  category: "Life",
  price: 2000,
  address: addresses.sample,
  user_id: user8.id,
  photo_url: 'https://cdn.pixabay.com/photo/2020/05/26/09/44/mockup-5222446_1280.jpg'
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

# categories to add: Tech, Home, Construction, Life, Creative Arts, performing arts, Security, travel

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


#


# temp_friend = Skill.create{skill_name: "Pretend Friend", description: "Proves to the world that you have support, provides you cover for rejecting a date, helps you get out of awkward conversations at company parties. Has your back! 👊", category_id: , price: 1000}
# accountant = Skill.create{skill_name: "Accountant", description: "Book keeping for all your professional and personal needs. 📒", category_id: , price: 1000}
# carpenter = Skill.create{skill_name: "Carpenter", description: "Furnish your apartment with a higher standard than IKEA. Custom furniture and home design. 🛠️", category_id: , price: 200}
# translator = Skill.create{skill_name: "Personal Translator", description: "Accompanies you and takes some of the stress out of your international travels. 🗣️", category_id: , price: 200}
# financial_advisor = Skill.create{skill_name: "Financial Advisor", description: "No more YouTube! Get financial advice from real professionals. 💶 ", category_id: , price: 1000}
