# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all

restaurant1 = Restaurant.create!(name: "Barbounia", teaser: "Middle Eastern cuisine at its finest.", address: "611 Park Ave.", 
  neighborhood: "Flatiron District", price: "$$$$", summary: "A pleasant experience for lunch or dinner.", 
  menu: "hummus, shish-ka-bobs, cous-cous, and more", timeslots: 2)

restaurant2 = Restaurant.create!(name: "Turks & Frogs", teaser: "Drinks and food we can all enjoy.", address: "72 Greenwich Ave.",
  neighborhood: "Tribeca", price: "$$$$", summary: "Delicious food and wonderful folks.", 
  menu: "fish, chips, burgers, and beer", timeslots: 5)

restaurant3 = Restaurant.create!(name: "the Odeon", teaser: "Downtown food at its best", address: "1443 W. Broadway", 
  neighborhood: "Tribeca", price: "$$$$", summary: "A great date night", menu: "Steak, chicken, fish, fun", 
  timeslots: 7)



