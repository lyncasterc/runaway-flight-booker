# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lga = Airport.find_or_create_by(name: 'Laguardia Airport', airport_code: 'LGA')
sfo = Airport.find_or_create_by(name: 'San Francisco International Airport', airport_code: 'SFO')
flight_1 = Flight.find_or_create_by(start_id: lga.id, finish_id: sfo.id)
flight_2 = Flight.find_or_create_by(start_id: sfo.id, finish_id: lga.id)