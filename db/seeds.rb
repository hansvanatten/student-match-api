# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Match.delete_all
Day.delete_all
User.delete_all

# Days
day1 = Day.create!(title: "2017-02-24", starts_at:"2017-02-24 00:00:00", ends_at:"2017-02-24 23:59:59")
day2 = Day.create!(title: "2017-02-25", starts_at:"2017-02-25 00:00:00", ends_at:"2017-02-25 23:59:59")

admin = User.create!(name: "Admin", email: "admin@mail.com", password: "qwer1234", admin: true)
superman = User.create!(name: "Superman", email: "superman@mail.com", password: "qwer1234", admin: false)
batman = User.create!(name: "Batman", email: "batman@mail.com", password: "qwer1234", admin: true)
trex = User.create!(name: "Trex", email: "trex@mail.com", password: "qwer1234", admin: false)
mosasaurus = User.create!(name: "Mosasaurus", email: "mosasaurus@mail.com", password: "qwer1234", admin: false)

match1 = Match.create!(day: day1, users: [superman, trex])
match2 = Match.create!(day: day1, users: [batman, mosasaurus])
match3 = Match.create!(day: day2, users: [superman, batman])
match4 = Match.create!(day: day2, users: [trex, mosasaurus])
