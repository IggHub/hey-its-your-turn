# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'random_data'

50.times do
  Schedule.create!(
    title: RandomData.random_sentence,
    due_at: RandomData.random_due_at
  )
end

schedules = Schedule.all

30.times do
  Worker.create!(
    name: RandomData.random_word,
    email: RandomData.random_word + "@" + RandomData.random_word + ".com",
    phone: RandomData.random_phone
  )
end


puts "done seeding"
puts "#{Schedule.count} schedules created"
puts "#{Worker.count} workers created"
