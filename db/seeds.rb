# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = Unit.create(name: "potty", cleaning_time: 50)
a = Address.create(name: "place 1", number: "1509", street: "W Thomas Street", city: "chicago", zipcode: 60642)
r = AddressesUnit.create(quantity: 5, address_id: a.id, unit_id: u.id)
AdminUser.create!(email: 'royal_flush@admin.com', password: 'rayray', password_confirmation: 'rayray') if Rails.env.development?