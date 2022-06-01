# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# user01 = User.new(
#   email: "fccristino@hotmail.com",
#   password: "12345678"
# )
# user01.save
Place.destroy_all
User.destroy_all

9.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10)
  )
  user.save
  place = Place.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    price: Faker::Number.between(from: 50, to: 200),
    user: user,
    rating: Faker::Number.within(range: 1..5),
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
    )
  place.save
end

# user.save
# place01 = Place.new(
#   price: 100,
#   address: "Rua capitao menezes",
#   name: "Minha casa",
#   description: "Sejam bem vindos",
#   rating: 4.5,
#   user_id: 1
# )
# place01.save

# 9.times do
#   place = Place.new(
#     name: Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     price: Faker::Number.between(from: 50, to: 200),
#     user: @user
#   )
#   place.save
# end
