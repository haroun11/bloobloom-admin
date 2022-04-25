# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Currency.destroy_all
Currency.create(id: 1, currency: "USD")
Currency.create(id: 2, currency: "GBP")
Currency.create(id: 3, currency: "EUR")
Currency.create(id: 4, currency: "JOD")
Currency.create(id: 5, currency: "JPY")

