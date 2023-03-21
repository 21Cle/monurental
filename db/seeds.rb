# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Monument.destroy_all
User.destroy_all

puts "going to create monuments"
user1 = User.create!(email: "user@gmail.com", password: "123456")
monument1 = Monument.create!(name: "Big Ben", address: "London SW1A 0AA, United Kingdom", price_per_night: 2500, capacity:200, description: "It's a big clock named Ben", rating: 4.2, theme: "neo-gothic", city: "London", country: "England", user_id: user1.id)
monument2 = Monument.create!(name: "Tour Eiffel", address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", price_per_night: 2800, capacity: 2000, description: "That big metal thingy in the middle of Paris", rating: 3.8, theme: "baroque", city: "Paris", country: "France", user_id: user1.id)
monument3 = Monument.create!(name: "Taj Mahal", address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India", price_per_night: 8200, capacity: 5000, description: "The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra.", rating: 4.9, theme: "mausoleum", city: "Agra", country: "India", user_id: user1.id)
monument4 = Monument.create!(name: "The Great Pyramid of Giza", address: "Al Haram, Nazlet El-Semman, Al Giza Desert, Giza Governorate 3512201, Egypt", price_per_night: 3700, capacity: 930, description: "The Great Pyramid of Giza is the largest Egyptian pyramid and the tomb of Fourth Dynasty pharaoh Khufu", rating: 4.8, theme: "antiquity", city: "Giza", country: "Egypt", user_id: user1.id)
monument5 = Monument.create!(name: "Château de Versailles", address: "Place d'Armes, 78000 Versailles", price_per_night: 8600, capacity: 5700, description: "The Palace of Versailles is a former royal residence built by King Louis XIV located in Versailles, about 12 miles west of Paris, France.", rating: 3.1, theme: "baroque", city: "Versailles", country: "France", user_id: user1.id)
# Monument.create!(name:, address:, price_per_night:, capacity:, description:, rating:, theme:, city:, country:, user_id: user1.id)
# Monument.create!(name:, address:, price_per_night:, capacity:, description:, rating:, theme:, city:, country:, user_id: user1.id)
# Monument.create!(name:, address:, price_per_night:, capacity:, description:, rating:, theme:, city:, country:, user_id: user1.id)
# Monument.create!(name:, address:, price_per_night:, capacity:, description:, rating:, theme:, city:, country:, user_id: user1.id)

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679406348/cloudibigben_j2z2fm.jpg")
monument1.photo.attach(io: file, filename: "bigben.png", content_type: "image/png")
monument1.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679407277/cloudieiffel_iiztbv.jpg")
monument2.photo.attach(io: file, filename: "toureiffel.png", content_type: "image/png")
monument2.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679407277/clouditajmahal_lcrx5g.jpg")
monument3.photo.attach(io: file, filename: "tajmahal.png", content_type: "image/png")
monument3.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679407277/cloudipyramide_emzub8.jpg")
monument4.photo.attach(io: file, filename: "pyramid.png", content_type: "image/png")
monument4.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679407277/cloudiversailles_frr6jd.jpg")
monument5.photo.attach(io: file, filename: "versailles.png", content_type: "image/png")
monument5.save

puts "monuments created!"
