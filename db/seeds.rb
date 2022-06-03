# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Place.destroy_all
User.destroy_all
Booking.destroy_all

# 9.times do
#   user = User.new(
#     email: Faker::Internet.email,
#     password: Faker::Alphanumeric.alphanumeric(number: 10)
#   )
#   user.save
#   place = Place.new(
#     name: Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     price: Faker::Number.between(from: 50, to: 200).to_i,
#     user: user,
#     rating: Faker::Number.within(range: 1..5),
#     description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
#     )
#   place.save
# end
