puts "delete db"
Booking.destroy_all
Spaceship.destroy_all
User.destroy_all

puts 'start'

toto = User.create!(first_name:"Toto", last_name:"Titi", email:"toto@gmail.com", password:"secret")
vador = User.create!(first_name:"Vador", last_name:"dark", email:"vador@gmail.com", password:"secret")



Spaceship.create!(title: "Millenium Falcon", description:"Legendary Han and Chewie's spaceship", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", photo: "https://publigeekaire.com/wp-content/uploads/2015/09/faucon-millenium.jpg" , user: toto)


Spaceship.create!(title: "Nemesis", description:"Megatron and his crew of Decepticons used the Nemesis to chase Optimus Prime and his crew of Autobots out into deep space. Eventually, the Decepticons boarded the Ark, the Autobots' ship, and left the Nemesis orbiting Earth. The Ark then crashed into Earth with all the Transformers on board, deactivating them and leaving the Nemesis in orbit with Shockwave to watch it.", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", photo: "https://static3.srcdn.com/wordpress/wp-content/uploads/2018/11/Amazing-Star-Citizen-Spaceship-in-Asteroids.jpg", user: toto)


Spaceship.create!(title: "Ariane", description:"Arianespace’s Ariane 5 is the world reference for heavy-lift launchers, able to carry payloads weighing more than 10 metric tons to geostationary transfer orbit (GTO) and over 20 metric tons into low-Earth orbit (LEO) – with a high degree of accuracy mission after mission. This performance ensures that Ariane 5 will be able to loft the heaviest spacecraft either in production or on the drawing boards, and enables Arianespace to match up most telecommunications satellites for highly efficient dual launches – a capability that has been proven by the company in Ariane-series missions since the 1980s.", seat:"6", price_per_day: 200, address: "145 cours Alsace-Lorraine", photo: "https://www.usinenouvelle.com/mediatheque/4/9/6/000632694/ariane-6-airbus.jpg" , user: toto)



Spaceship.create!(title: "Soyouz", description:"The Soyuz succeeded the Voskhod spacecraft and was originally built as part of the Soviet manned lunar programs. The Soyuz spacecraft is launched on a Soyuz rocket, the most reliable launch vehicle in the world to date.", seat:"2", price_per_day: 25, address: "78 rue Baudin", photo: "https://media.ouest-france.fr/v1/pictures/260b4457710c1b23f7e33693913a5c41-le-nouveau-satellite-espion-francais-lance-par-une-soyouz-russe.jpg?width=1260&height=712&fill=0&focuspoint=74%2C46&cropresize=1&client_id=cmsfront&sign=d8f8ec4b318f28201bacb4507b9a4b894221ab8f164c8659383116c5bc862216", user: vador)

Spaceship.create!(title: "Excelsior", description:"Excelsior from the 1918 Danish film Himmelskibet (A Trip to Mars), the film that marked the beginning of the space opera subgenre of science fiction.", seat:"8", price_per_day: 70, address: "57 rue de bruges", photo: "https://i.pinimg.com/originals/41/c4/ca/41c4caa529b8f9ea817f35d0f9f745d1.jpg" , user: toto)
Spaceship.create!(title: "Station-Mir", description:"Trop stylé hein Pesquet !", seat:"12", price_per_day: 5, address: "38 cours Balguerie Stuttenberg", photo: "https://timedotcom.files.wordpress.com/2017/09/gettyimages-907630.jpg" , user: toto)

Spaceship.create!(title: "USSC Discovery One", description:"I know I've made some very poor decisions recently, but I can give you my complete assurance that my work will be back to normal. I've still got the greatest enthusiasm and confidence in the mission. And I want to help you.", seat:"30", price_per_day: 1000, address: "Place des quinconces", photo: "http://orig02.deviantart.net/908a/f/2008/190/6/1/spacecraft_discovery_by_trekkie5000.jpg" , user: toto)
Spaceship.create!(title: "X-SWING", description:"Legendary Killian's personnal spaceship", seat:"1", price_per_day: 10, address: "35 avenue de la république", photo: "https://cdn.shopify.com/s/files/1/1191/7384/products/STAR-WARS-X-WING-FIGHTERS-OVER-THE-OCEAN-poster-WEB.jpg?v=1535362197" , user: toto)
Spaceship.create!(title: "Normandy", description:"Guillaume's Roche spaceship", seat:"60", price_per_day: 200, address: "Pyongyang", photo: "https://i.pinimg.com/originals/c8/09/8a/c8098a20b02c5e415513eaa8c8aee906.jpg" , user: toto)
