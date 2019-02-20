

puts "delete db"
Booking.destroy_all
Spaceship.destroy_all
User.destroy_all

puts 'start'

toto = User.create!(first_name:"Toto", last_name:"Titi", email:"toto@gmail.com", password:"secret")
vador = User.create!(first_name:"Vador", last_name:"dark", email:"vador@gmail.com", password:"secret")



Spaceship.create!(title: "Millenium Falcon", description:"Legendary Han and Chewie's spaceship", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", photo: "http://www.igorstshirts.com/blog/conceptships/fred_bastide.jpg" , user: toto)


Spaceship.create!(title: "Nemesis", description:"", seat:"12", price_per_day: 50, address: "34 cours Edouard Vaillant", photo: "https://images.pexels.com/photos/2159/flight-sky-earth-space.jpg?auto=compress&cs=tinysrgb&h=650&w=940
https://images.pexels.com/photos/2159/flight-sky-earth-space.jpg?auto=compress&cs=tinysrgb&h=650&w=940
1x, https://images.pexels.com/photos/2159/flight-sky-earth-space.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", user: toto)


Spaceship.create!(title: "Ariane", description:"", seat:"6", price_per_day: 200, address: "145 cours Alsace-Lorraine", photo: "https://3dexport.com/items/2013/06/18/274615/71288/spaceship_snail_3d_model_c4d_max_obj_fbx_ma_lwo_3ds_3dm_stl_762549_o.jpg" , user: toto)


Spaceship.create!(title: "Soyouz", description:"", seat:"2", price_per_day: 25, address: "78 rue Baudin", photo: "https://cdn.drawception.com/images/panels/2015/3-2/h3ByDPZmm3-6.png", user: vador)
