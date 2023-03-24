require "open-uri"

Booking.destroy_all
Monument.destroy_all
User.destroy_all

puts "going to create monuments"
user1 = User.create!(first_name: "Ndwali", email: "user@gmail.com", password: "123456")
user2 = User.create!(first_name: "Clémence", email: "user2@gmail.com", password: "123456")
monument1 = Monument.create!(name: "Big Ben", address: "London SW1A 0AA, United Kingdom", price_per_night: 2500, capacity:200, description: "It's a big clock named Ben", rating: 4.2, utilities: "pool", theme: "Clock", city: "London", country: "England", user_id: user1.id)
monument2 = Monument.create!(name: "Tour Eiffel", address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", price_per_night: 2800, capacity: 2000, description: "That big metal thingy in the middle of Paris", rating: 3.8, theme: "Antenna", city: "Paris", country: "France", user_id: user1.id)
monument3 = Monument.create!(name: "Taj Mahal", address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India", price_per_night: 8200, capacity: 5000, description: "Would Mumtaz Mahal and Shah Jahan approve of you partying in their last resting place? Probably not. But we won't tell if you don't.", rating: 4.9, theme: "Mausoleum", city: "Agra", country: "India", user_id: user1.id)
monument4 = Monument.create!(name: "The Great Pyramid of Giza", address: "Al Haram, Nazlet El-Semman, Al Giza Desert, Giza Governorate 3512201, Egypt", price_per_night: 3700, capacity: 930, description: "Big Triangular Tomb of a guy named Khufu. We do not take responsibility if you get lost in there.", rating: 4.8, theme: "Tomb", city: "Giza", country: "Egypt", user_id: user2.id)
monument5 = Monument.create!(name: "Palace of Versailles", address: "Place d'Armes, 78000 Versailles", price_per_night: 8600, capacity: 5700, description: "Some guy named Louis used to party in there. He doesn't have all of his head now so he can't anymore, But you can!", rating: 3.1, theme: "Pompous Castle", city: "Versailles", country: "France", user_id: user2.id)
monument6 = Monument.create!(name: "The Great Wall of China", address: "Huairou District, China", price_per_night: 7200, capacity: 8000, description: "The Great Wall of China, one of the most iconic landmarks in the world, is the ultimate party destination. Imagine celebrating on top of one of the Seven Wonders of the World, with a view that goes on for miles.
  The Great Wall of China, which stretches over 13,000 miles, is a testament to the Chinese people's incredible engineering skills and perseverance. The Wall, which dates back to the 7th century BC, is not just a wonder of ancient architecture but also a symbol of China's rich history and culture. As the owner of this magnificent structure, I can attest to the magic that it brings to any event.
  When you book your event at the Great Wall of China, you can choose to celebrate at different sections of the wall, each with its own unique charm. You can have a small gathering at Mutianyu or Jinshanling, both of which are less crowded and offer breathtaking views of the surrounding landscape. Alternatively, you can choose to celebrate at the most popular section of the wall, Badaling, which offers an electrifying atmosphere and a chance to be part of history.
  To make your event at the Great Wall of China truly unforgettable, we offer a range of amenities that will make your guests feel like royalty. Our sound system will keep the party going, while our lighting will create an ambiance that will elevate your event to the next level. Our catering options will ensure that your guests are treated to the best in Chinese cuisine, while our VIP seating will make them feel like they are the most important people at the party.
  The Great Wall of China is a symbol of China's incredible history and culture. It is a testament to human ingenuity and perseverance, and it is a perfect location to make your party unforgettable. Book now and experience the magic of the Great Wall of China!", rating: 4.8, utilities: ["sound system", "lighting", "catering", "VIP seating", "photographer", "security", "bartender", "wait staff", "parking", "stage", "decorations", "projection screens", "smoke machines", "confetti cannons", "fireworks", "karaoke machine", "photo booth", "strobe lights", "uplighting"], theme: "Ancient Architecture", city: "Huairou", country: "China", user_id: user1.id)

monument7 =  Monument.create!(name: "The Colosseum", address: "Piazza del Colosseo, 1, 00184 Roma RM, Italy", price_per_night: 4300, capacity: 3000, description: "The Colosseum, one of the most recognizable landmarks in the world, is the perfect location for a party that will go down in history.
As the owner of the Colosseum, I can assure you that there is no better location to host your event than this ancient amphitheater that dates back to 80 AD. The Colosseum was originally built to host public spectacles, including gladiatorial contests and animal hunts. Today, it stands as a symbol of the power and grandeur of the Roman Empire, and its beauty and history make it an ideal location for an unforgettable party.

When you book your event at the Colosseum, you'll be transported back in time to an era of gladiators and emperors. The awe-inspiring architecture of the Colosseum will provide a perfect backdrop for your event, whether you're hosting an intimate gathering or a grand celebration. Our team is dedicated to making your event one to remember, and we offer a range of amenities that will make your guests feel like they are part of ancient Rome.

Our sound system will keep the party going, while our lighting will create an atmosphere that will transport your guests back in time. Our catering options will ensure that your guests are treated to the best of Roman cuisine, while our VIP seating will make them feel like they are part of the show. We also offer a range of services, such as photographer, security, bartender, wait staff, and parking, so that you can enjoy your event without any worries.

At the Colosseum, you can choose to celebrate in the lower levels of the amphitheater, where the gladiators once fought for their lives, or on the upper levels, where you can take in the breathtaking views of the surrounding city. You can also choose to celebrate in the arena itself, where you'll stand in the footsteps of the great gladiators of ancient Rome.

The Colosseum is a symbol of the glory and grandeur of the Roman Empire. It is a testament to human ingenuity and perseverance, and it is a perfect location to make your party unforgettable. Book now and experience the magic of the Colosseum!", rating: 4.7, utilities: ["Jacuzzi", "Sauna", "Disco ball", "Sound system", "Karaoke", "BBQ grill", "Billiards", "Ping-pong table", "Fitness center", "Swimming pool", "Hot tub", "Bar", "Dance floor", "Movie projector", "Fire pit", "Board games", "Video games", "Piano", "Wine cellar", "Private chef"], theme: "Ancient Arena", city: "Rome", country: "Italy", user_id: user2.id)

monument8 = Monument.create!(name: "Machu Picchu", address: "08680, Peru", price_per_night: 6500, capacity: 2500, description: "Machu Picchu, the iconic Incan citadel nestled in the Andes Mountains, is the ultimate party destination for those who want to celebrate in a unique and magical location.
  As the owner of this amazing structure, I can attest to the magic that it brings to any event. The history and majesty of Machu Picchu create a mystical and romantic atmosphere that will make your party unforgettable.

  When you book your event at Machu Picchu, you can choose to celebrate in different parts of the citadel, each with its own unique charm. You can have a small gathering at the Sun Gate, which offers breathtaking views of the surrounding mountains and valleys, or at the Temple of the Sun, where you'll stand among the ancient ruins of the Incan civilization.

  To make your event at Machu Picchu truly unforgettable, we offer a range of amenities that will make your guests feel like they are part of the Incan royalty. Our sound system will keep the party going, while our lighting will create an ambiance that will elevate your event to the next level. Our catering options will ensure that your guests are treated to the best in Peruvian cuisine, while our VIP seating will make them feel like they are the most important people at the party.

  Machu Picchu is a symbol of the Incan civilization and a testament to human ingenuity and perseverance. It is a perfect location to make your party unforgettable. Book now and experience the magic of Machu Picchu!", rating: 4.9, utilities: ["sound system", "lighting", "catering", "VIP seating", "photographer", "security", "bartender", "wait staff", "parking", "stage", "decorations", "projection screens", "smoke machines", "confetti cannons", "fireworks", "karaoke machine", "photo booth", "strobe lights", "uplighting"], theme: "Incan Citadel", city: "Cusco", country: "Peru", user_id: user1.id)

monument9 = Monument.create!(name: "Angkor Wat", address: "Krong Siem Reap, Cambodia", price_per_night: 4500, capacity: 1500, description: "Party like a Khmer king in the largest religious monument in the world!", rating: 4.5, theme: "Temple", city: "Siem Reap", country: "Cambodia", user_id: user1.id, utilities: ["Jacuzzi", "Sauna", "Disco ball", "Sound system", "Karaoke", "BBQ grill", "Billiards", "Ping-pong table", "Fitness center", "Swimming pool", "Hot tub", "Bar", "Dance floor", "Movie projector", "Fire pit", "Board games", "Video games", "Piano", "Wine cellar", "Private chef"])
monument10 = Monument.create!(name: "Petra", address: "Wadi Musa, Ma'an Governorate, Jordan", price_per_night: 6200, capacity: 1200, description: "Have a desert oasis party in the ancient city carved in sandstone rock!", rating: 4.7, theme: "Nabatean City", city: "Wadi Musa", country: "Jordan", user_id: user1.id, utilities: ["Infinity pool", "Camel rides", "Hookah lounge", "Live music", "Belly dancing show", "Stargazing", "Traditional Bedouin tent", "Sandboarding", "Hiking", "Cocktail bar", "Hot air balloon ride", "Fireworks display", "Horse carriage ride", "Dune buggy tour", "Spa services", "Outdoor cinema", "Virtual reality experience", "Sightseeing tours", "Night photography class", "Archery"])
monument11 = Monument.create!(name: "The Alhambra", address: "Calle Real de la Alhambra, s/n, 18009 Granada, Spain", price_per_night: 3200, capacity: 800, description: "Experience the Moorish architectural masterpiece with a flamenco party!", rating: 4.3, theme: "Palace", city: "Granada", country: "Spain", user_id: user1.id, utilities: ["Outdoor terrace", "Tapas bar", "Flamenco show", "Spanish guitar performance", "Henna tattoo artist", "Hookah lounge", "Wine tasting", "Paella cooking class", "Art workshop", "Yoga class", "Outdoor games", "Meditation corner", "Tango dance class", "Salsa dance class", "Photo booth", "Spanish language lessons", "Tarot card reading", "Bike tours", "Horse carriage ride", "Segway tours"])
monument12 = Monument.create!(name: "Stonehenge", address: "Salisbury SP4 7DE, United Kingdom", price_per_night: 3200, capacity: 500, description: "Come to Stonehenge and party like it's 3000 BC!", rating: 4.0, theme: "Ancient Monument", city: "Salisbury", country: "England", user_id: user2.id, utilities: ["Dance Floor", "Hot Tub", "BBQ Grill", "Disco Ball", "Live DJ"])
monument13 = Monument.create!(name: "Acropolis of Athens", address: "Athens 105 58, Greece", price_per_night: 5000, capacity: 800, description: "Bring your toga and get ready to party like a Greek god at the Acropolis!", rating: 4.7, theme: "Historic Citadel", city: "Athens", country: "Greece", user_id: user1.id, utilities: ["Infinity Pool", "Catering Services", "Outdoor Sound System", "Projector", "Cocktail Bar"])
monument14 = Monument.create!(name: "Chichen Itza", address: "Yucatán, Mexico", price_per_night: 4200, capacity: 1500, description: "Party like the Mayans did at Chichen Itza, and dance the night away under the stars!", rating: 4.3, theme: "Mayan Ruins", city: "Yucatán", country: "Mexico", user_id: user2.id, utilities: ["Live Mariachi Band", "Tequila Tasting", "Pool Party", "Private Cabanas", "Late Night Taco Bar"])
monument15 = Monument.create!(name: "Christ the Redeemer", address: "Parque Nacional da Tijuca, Alto da Boa Vista, Rio de Janeiro - RJ, 22241-330, Brazil", price_per_night: 5000, capacity: 1000, description: "Celebrate with Jesus on top of the Corcovado mountain, overlooking the beautiful city of Rio de Janeiro.", rating: 4.6, theme: "Statue", city: "Rio de Janeiro", country: "Brazil", user_id: user1.id, utilities: ["Sound system", "Lighting", "Catering", "VIP seating", "Photographer", "Security", "Bartender", "Wait staff", "Parking", "Stage", "Decorations", "Projection screens", "Smoke machines", "Confetti cannons", "Fireworks", "Karaoke machine", "Photo booth", "Strobe lights", "Uplighting", "Virtual reality experience", "Live music", "Brazilian dance class", "Cocktail bar", "Giant Jenga game", "Outdoor cinema", "Brazilian BBQ grill", "Caipirinha bar", "Samba dance party"])
monument16 = Monument.create!(name: "Statue of Liberty", address: "Liberty Island, New York, NY 10004, United States", price_per_night: 3200, capacity: 1000, description: "A colossal neoclassical statue located on Liberty Island in New York Harbor in the United States, commemorating the country's independence.", rating: 4.5, theme: "Statue", city: "New York City", country: "United States", user_id: user2.id)


file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679581650/bigben1920x1080_nu1tdg.jpg")
monument1.photo.attach(io: file, filename: "bigben.png", content_type: "image/png")
monument1.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679581660/eiffel-tower-hd-hf-1920x1080_ddy5dr.jpg")
monument2.photo.attach(io: file, filename: "toureiffel.png", content_type: "image/png")
monument2.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679581688/tajmahal1920x1080_kxuzdj.jpg")
monument3.photo.attach(io: file, filename: "tajmahal.png", content_type: "image/png")
monument3.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679581672/pyramid1920x1080_l2nx2g.webp")
monument4.photo.attach(io: file, filename: "pyramid.png", content_type: "image/png")
monument4.save

file = URI.open("https://res.cloudinary.com/dfi1s3ujq/image/upload/v1679581689/versailles1920x1080_vt8v4n.jpg")
monument5.photo.attach(io: file, filename: "versailles.png", content_type: "image/png")
monument5.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606421/SyZwaWQ9QXBp_ycjfgd.jpg")
monument6.photo.attach(io: file, filename: "greatwall.png", content_type: "image/png")
monument6.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606450/aWxfMjAwNy5qcGc_ed6w0s.jpg")
monument7.photo.attach(io: file, filename: "colos.png", content_type: "image/png")
monument7.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606467/LTQuanBn_hg4sid.jpg")
monument8.photo.attach(io: file, filename: "machu.png", content_type: "image/png")
monument8.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606490/OCZwaWQ9QXBp_lmg6cy.jpg")
monument9.photo.attach(io: file, filename: "angkor.png", content_type: "image/png")
monument9.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606504/MyZwaWQ9QXBp_qikswo.jpg")
monument10.photo.attach(io: file, filename: "petra.png", content_type: "image/png")
monument10.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606525/ODY4MDUuanBn_kuafoo.jpg")
monument11.photo.attach(io: file, filename: "alh.png", content_type: "image/png")
monument11.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679650019/YWxsJnNzbD0x_exewel.jpg")
monument12.photo.attach(io: file, filename: "stone.png", content_type: "image/png")
monument12.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606576/OSZwaWQ9QXBp_jqlwak.jpg")
monument13.photo.attach(io: file, filename: "acro.png", content_type: "image/png")
monument13.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679606613/NyZwaWQ9QXBp_rsv23j.jpg")
monument14.photo.attach(io: file, filename: "chichen.png", content_type: "image/png")
monument14.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679649437/X3JldHdlZXQ_zvp75c.jpg")
monument15.photo.attach(io: file, filename: "christ.png", content_type: "image/png")
monument15.save

file = URI.open("https://res.cloudinary.com/ddd2hwkfz/image/upload/v1679598889/VVkxNA_mzjqbs.jpg")
monument16.photo.attach(io: file, filename: "statue.png", content_type: "image/png")
monument16.save

puts "monuments created!"
