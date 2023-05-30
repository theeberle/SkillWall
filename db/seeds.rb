# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create([{ first_name: "Bob" }, { last_name: "Ross" }, {username: "BobR" }, {email: "bob.ross@gmail.com" }, {role: "contractor" }])
users = User.create([{ first_name: "Michael" }, { last_name: "Schumacher" }, {username: "MichaelS" }, {email: "michael.schumacher@gmail.com" }, {role: "rentor" }])
users = User.create([{ first_name: "Agathe" }, { last_name: "Chopin" }, {username: "AgatheS" }, {email: "agathe.chopin@gmail.com" }, {role: "unicorn" }])
users = User.create([{ first_name: "Elisa" }, { last_name: "Meyer" }, {username: "ElisaM" }, {email: "Elisa.Meyer@gmail.com" }, {role: "unicorn" }])
