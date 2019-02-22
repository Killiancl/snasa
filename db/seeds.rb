puts "delete db"
Booking.destroy_all
Spaceship.destroy_all
User.destroy_all

puts 'start'

toto = User.create!(first_name:"Toto", last_name:"Titi", email:"toto@gmail.com", password:"secret")
vador = User.create!(first_name:"Vador", last_name:"dark", email:"vador@gmail.com", password:"secret")



Spaceship.create!(title: "Millenium Falcon", description:"Legendary Han and Chewie's spaceship", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", photo: "https://publigeekaire.com/wp-content/uploads/2015/09/faucon-millenium.jpg" , user: toto)


Spaceship.create!(title: "Nemesis", description:"", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", photo: "https://static3.srcdn.com/wordpress/wp-content/uploads/2018/11/Amazing-Star-Citizen-Spaceship-in-Asteroids.jpg", user: toto)


Spaceship.create!(title: "Ariane", description:"", seat:"6", price_per_day: 200, address: "145 cours Alsace-Lorraine", photo: "https://www.usinenouvelle.com/mediatheque/4/9/6/000632694/ariane-6-airbus.jpg" , user: toto)


Spaceship.create!(title: "Soyouz", description:"", seat:"2", price_per_day: 25, address: "78 rue Baudin", photo: "https://media.ouest-france.fr/v1/pictures/260b4457710c1b23f7e33693913a5c41-le-nouveau-satellite-espion-francais-lance-par-une-soyouz-russe.jpg?width=1260&height=712&fill=0&focuspoint=74%2C46&cropresize=1&client_id=cmsfront&sign=d8f8ec4b318f28201bacb4507b9a4b894221ab8f164c8659383116c5bc862216", user: vador)

