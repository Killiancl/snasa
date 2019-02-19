

puts "delete db"
Booking.destroy_all
Spaceship.destroy_all
User.destroy_all

puts 'start'

toto = User.create!(first_name:"Toto", last_name:"Titi", email:"toto@gmail.com", password:"secret")


Spaceship.create!(title: "Millenium Falcon", description:"Legendary Han and Chewie's spaceship", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", user: toto)


Spaceship.create!(title: "Nemesis", description:"", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", user: toto)


Spaceship.create!(title: "Ariane", description:"", seat:"6", price_per_day: 200, address: "145 cours Alsace-Lorraine", user: toto)


Spaceship.create!(title: "Soyouz", description:"", seat:"2", price_per_day: 25, address: "145 avenue Stalingrad", user: toto)


Spaceship.create!(title: "Super Dimension Fortress Macross", description:"", seat:"150", price_per_day: 300, address: "43 rue de Tokyo", user: toto)


Spaceship.create!(title: "Aurora CL", description:"", seat:"5", price_per_day: 35, address: "69 cours de Verdun", user: toto)


Spaceship.create!(title: "P52 Merlin", description:"", seat:"8", price_per_day: 70, address: "73 rue Sainte-Catherine", user: toto)

puts'db ok'
