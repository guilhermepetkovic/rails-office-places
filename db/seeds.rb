# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user01 = User.new(
  email: "fccristino@hotmail.com",
  password: "12345678"
)
user01.save

place01 = Place.new(
  price: 100,
  address: "Rua capitao menezes",
  name: "Minha casa",
  description: "Sejam bem vindos",
  rating: 4.5,
  user_id: 1
)
place01.save
