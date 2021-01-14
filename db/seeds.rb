# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'Date'

puts "Cleaning DB"
Task.destroy_all
User.destroy_all
Comment.destroy_all

martin = User.create(
  email: "martin@test.com",
  password: "mdpmdp"
)

poulpe1 = User.create(
  email: "poulpe1@test.com",
  password: "mdpmdp"
)

poulpe2 = User.create(
  email: "poulpe2@test.com",
  password: "mdpmdp"
)

PRIORITY = [1, 2, 3, 4, 5]
USERS = User.all

20.times do 
  Task.create(
    description: Faker::Books::Dune.quote,
    deadline: 
  )