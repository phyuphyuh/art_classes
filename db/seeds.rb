# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# CATEGORIES ["Oil Painting", "Pottery", "Watercolor", "Manga", "Sculpture", "DIY", "Acryllic", "Still Life", "Sketching", "Other"]

ArtClass.destroy_all
User.destroy_all
# Reservation.destroy_all

james = User.create!(name: "James Smith", email: "jamesSmith@gmail.com", password: "123123")
paula = User.create!(name: "Paula Ortega", email: "paulaOrtega@gmail.com", password: "123123")
User.create!(name: "Frederick Elias", email: "frederickElias@gmail.com", password: "123123")
User.create!(name: "Rebecca Thompson", email: "rebeccaThompson@gmail.com", password: "123123")
User.create!(name: "Mathew James", email: "mathewJames@gmail.com", password: "123123")
sakura = User.create!(name: "Sakura Itou", email: "sakuraItou@gmail.com", password: "123123")
User.create!(name: "David Landers", email: "davidLanders@gmail.com", password: "123123")
User.create!(name: "Stephanie Hlaing", email: "stephanieHlaing@gmail.com", password: "123123")
pedro = User.create!(name: "Pedro Gonzales", email: "pedroGonzales@gmail.com", password: "123123")
User.create!(name: "Elsa Disney", email: "elsaDisney@gmail.com", password: "123123")
User.create!(name: "Greg Masters", email: "gregMasters@gmail.com", password: "123123")
User.create!(name: "Claudia Ordonez", email: "claudiaOrdonez@gmail.com", password: "123123")
claudia = User.last


ArtClass.create!(title: "Pottery Garden", description: "A nice class under the bright sun", price: 2000, category: "Pottery", location: "Tokyo", dates: "24/12/25", user: claudia)

ArtClass.create!(title: "Blue Watercolors", description: "Who doesn't like color blue? Join us just using that pretty color in our original class", price: 2500, category: "Watercolor", location: "Kyoto", dates: "25/02/27", user: pedro)

ArtClass.create!(title: "Shonen as old times", description: "Does anybody remember the good classics? Astroboy, Akira, Dororo... let's bring those times back in this workshop! ", price: 5000, category: "Manga", location: "Kyoto", dates: "25/02/27", user: sakura)

ArtClass.create!(title: "Yarn and smiles", description: "Winter is coming soon and presents are a headache. Won't you prefer saving some money making your own sweaters? Join us!", price: 1800, category: "DIY", location: "Kyoto", dates: "25/02/27", user: james)

ArtClass.create!(title: "Firefighters", description: "This is very exclusive event where you'll have the opportunity to scupt some good boddies", price: 1800, category: "DIY", location: "Kyoto", dates: "25/02/27", user: paula)


Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: paula).shuffle.first, user: paula, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: pedro).shuffle.first, user: pedro, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: sakura).shuffle.first, user: sakura, status: "pending")
