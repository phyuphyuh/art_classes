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

User.create!(name: "James Smith", email: "jamesSmith@gmail.com", password: "123123")
User.create!(name: "Paula Ortega", email: "paulaOrtega@gmail.com", password: "123123")
User.create!(name: "Frederick Elias", email: "frederickElias@gmail.com", password: "123123")
User.create!(name: "Rebecca Thompson", email: "rebeccaThompson@gmail.com", password: "123123")
User.create!(name: "Mathew James", email: "mathewJames@gmail.com", password: "123123")
User.create!(name: "Sakura Itou", email: "sakuraItou@gmail.com", password: "123123")
User.create!(name: "David Landers", email: "davidLanders@gmail.com", password: "123123")
User.create!(name: "Stephanie Hlaing", email: "stephanieHlaing@gmail.com", password: "123123")
User.create!(name: "Pedro Gonzales", email: "pedroGonzales@gmail.com", password: "123123")
User.create!(name: "Elsa Disney", email: "elsaDisney@gmail.com", password: "123123")
User.create!(name: "Greg Masters", email: "gregMasters@gmail.com", password: "123123")
User.create!(name: "Claudia Ordonez", email: "claudiaOrdonez@gmail.com", password: "123123")
