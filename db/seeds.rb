require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.destroy_all
Flat.destroy_all
User.destroy_all

raph = User.new({ first_name: "raph", email: "raph@gmail.com", password: "PASSWORD", password_confirmation: "PASSWORD" })
raph.save!

odeon = Flat.new({ name: "odeon", adress: "Rue de Seine", rooms: 4, price: 150 })
odeon.user = raph
odeon.save!
# file = URI.open("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dsrealestate.fr%2Ffr%2Fvente-location-appartement-maison-paris%2Fref-ds1-1565%2Fvente-duplex-4-pieces-2-chambres-paris-75006%2F&psig=AOvVaw2y-iLcsP1oA2F3lp3wlQma&ust=1647702020780000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNDsqb_2z_YCFQAAAAAdAAAAABAD")
rennes = Flat.new({ name: "rennes", adress: "Rue du regard", rooms: 4, price: 150 })
rennes.user = raph
rennes.save!
