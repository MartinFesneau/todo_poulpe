# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'

puts "Cleaning DB"
Task.destroy_all
User.destroy_all
Comment.destroy_all

martin = User.create(
  email: "martin@test.com",
  password: "mdpmdp"
)

poulpe = User.create(
  email: "poulpe@test.com",
  password: "mdpmdp"
)

poulpe2 = User.create(
  email: "poulpe2@test.com",
  password: "mdpmdp"
)

PRIORITY = [1, 2, 3]
USERS = User.all

30.times do 
  Task.create(
    description: Faker::Movie.title,
    deadline: Date.today + rand(30),
    priority: PRIORITY.sample,
    user_id: USERS.sample.id
  )
end

TASKS = Task.all

40.times do 
  Comment.create(
    content: Faker::Movies::StarWars.quote,
    task_id: TASKS.sample.id
  )
end

puts "Seed finished"
puts "Created #{User.count} users"
puts "Created #{Task.count} tasks"
puts "Created #{Comment.count} comments"
