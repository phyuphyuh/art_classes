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

#Seeds for users

james = User.create!(name: "James Smith", email: "jamesSmith@gmail.com", password: "123123")
paula = User.create!(name: "Paula Ortega", email: "paulaOrtega@gmail.com", password: "123123")
frederick = User.create!(name: "Frederick Elias", email: "frederickElias@gmail.com", password: "123123")
rebecca = User.create!(name: "Rebecca Thompson", email: "rebeccaThompson@gmail.com", password: "123123")
mathew = User.create!(name: "Mathew James", email: "mathewJames@gmail.com", password: "123123")
sakura = User.create!(name: "Sakura Itou", email: "sakuraItou@gmail.com", password: "123123")
david = User.create!(name: "David Landers", email: "davidLanders@gmail.com", password: "123123")
stephanie = User.create!(name: "Stephanie Hlaing", email: "stephanieHlaing@gmail.com", password: "123123")
pedro = User.create!(name: "Pedro Gonzales", email: "pedroGonzales@gmail.com", password: "123123")
elsa = User.create!(name: "Elsa Disney", email: "elsaDisney@gmail.com", password: "123123")
greg = User.create!(name: "Greg Masters", email: "gregMasters@gmail.com", password: "123123")
claudia = User.create!(name: "Claudia Ordonez", email: "claudiaOrdonez@gmail.com", password: "123123")

#Seeds for art classes

pottery = ArtClass.create!(title: "Beginner’s Wheel Throwing", description: "Learn the fundamentals of pottery on the wheel. This class introduces centering clay, shaping bowls, and basic glazing techniques. Perfect for beginners with no prior experience.", price: 5000, category: "Pottery", location: "Tokyo", dates: "24/12/25", user: stephanie)
file = URI.parse("https://img.activityjapan.com/wi/tokyo-ceramics-plan_thumb.jpg?202407240214&cf_origin").open
pottery.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery.save

pottery2 = ArtClass.create!(title: "Hand-Building Techniques", description: "Explore the art of hand-building pottery using slab, coil, and pinch methods. Create unique ceramic pieces while learning texturing and sculpting techniques. Ideal for all skill levels.", price: 4500, category: "Pottery", location: "Tokyo", dates: "24/12/26", user: claudia)
file = URI.parse("https://img.activityjapan.com/wi/tokyo-ceramics-plan_thumb.jpg?202407240214&cf_origin").open
pottery2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery2.save

pottery3 = ArtClass.create!(title: "Advanced Glazing and Decoration", description: "Dive into advanced techniques for decorating and glazing your pottery. Experiment with underglazes, carving, and intricate designs to create stunning finished pieces. Designed for intermediate to advanced students.", price: 7000, category: "Pottery", location: "Tokyo", dates: "24/12/20", user: greg)
file = URI.parse("https://img.activityjapan.com/wi/tokyo-ceramics-plan_thumb.jpg?202407240214&cf_origin").open
pottery3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery3.save

pottery4 = ArtClass.create!(title: "Sculptural Pottery", description: " Develop your artistic skills by creating sculptural pieces with clay. Focus on structure, balance, and design to bring your creative visions to life. Suitable for all levels.", price: 6000, category: "Pottery", location: "Tokyo", dates: "24/12/28", user: claudia)
file = URI.parse("https://img.activityjapan.com/wi/tokyo-ceramics-plan_thumb.jpg?202407240214&cf_origin").open
pottery4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery4.save

pottery5 = ArtClass.create!(title: "Pottery for Kids", description: "A fun and engaging pottery class designed specifically for children. Kids will learn basic hand-building techniques and create imaginative ceramic pieces in a playful environment.", price: 3500, category: "Pottery", location: "Tokyo", dates: "25/01/10", user: greg)
file = URI.parse("https://img.activityjapan.com/wi/tokyo-ceramics-plan_thumb.jpg?202407240214&cf_origin").open
pottery5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery5.save

watercolors = ArtClass.create!(title: "Introduction to Watercolor Painting", description: "Start your journey into watercolor painting with this beginner-friendly class. Learn basic brush techniques, color mixing, and simple washes to create stunning landscapes and abstract art.", price: 3500, category: "Watercolor", location: "Tokyo", dates: "25/02/17", user: pedro)
file = URI.parse("https://shop.emilylex.com/cdn/shop/products/I8gPkvBRXqDjVGADkmC8_fruit.jpg?v=1714015839&width=1445").open
watercolors.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
watercolors.save

watercolors2 = ArtClass.create!(title: "Botanical Watercolor Art", description: "Explore the beauty of nature with botanical watercolor painting. Focus on creating vibrant flowers, leaves, and plants while mastering blending and layering techniques. Suitable for all skill levels.", price: 4000, category: "Watercolor", location: "Tokyo", dates: "25/02/27", user: sakura)
file = URI.parse("https://shop.emilylex.com/cdn/shop/products/I8gPkvBRXqDjVGADkmC8_fruit.jpg?v=1714015839&width=1445").open
watercolors2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
watercolors2.save

watercolors3 = ArtClass.create!(title: "Watercolor Portraits", description: "Learn to paint expressive portraits in watercolor. This class covers facial proportions, skin tone blending, and capturing emotions with soft washes and bold details. Designed for intermediate learners.", price: 5500, category: "Watercolor", location: "Tokyo", dates: "25/02/10", user: pedro)
file = URI.parse("https://shop.emilylex.com/cdn/shop/products/I8gPkvBRXqDjVGADkmC8_fruit.jpg?v=1714015839&width=1445").open
watercolors3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
watercolors3.save

watercolors4 = ArtClass.create!(title: "Urban Sketching with Watercolors", description: "Combine pen-and-ink drawing with watercolor techniques to create vibrant urban sketches. Learn to capture architecture, street scenes, and dynamic cityscapes. Great for travelers and artists alike.", price: 4500, category: "Watercolor", location: "Tokyo", dates: "25/01/08", user: greg)
file = URI.parse("https://shop.emilylex.com/cdn/shop/products/I8gPkvBRXqDjVGADkmC8_fruit.jpg?v=1714015839&width=1445").open
watercolors4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
watercolors4.save

watercolors5 = ArtClass.create!(title: "Advanced Watercolor Techniques", description: "Push your watercolor skills further by exploring wet-on-wet, glazing, and texturing techniques. Experiment with unique effects to create professional-level artwork. Perfect for experienced artists.", price: 6000, category: "Watercolor", location: "Tokyo", dates: "25/02/02", user: mathew)
file = URI.parse("https://shop.emilylex.com/cdn/shop/products/I8gPkvBRXqDjVGADkmC8_fruit.jpg?v=1714015839&width=1445").open
watercolors5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
watercolors5.save

manga = ArtClass.create!(title: "Manga Drawing Basics", description: "Dive into the world of manga by learning the basics of character design, facial expressions, and proportions. This beginner-friendly class is perfect for aspiring manga artists.", price: 4000, category: "Manga", location: "Tokyo", dates: "25/02/18", user: sakura)
file = URI.parse("https://www.metier.org/wp-content/uploads/2022/06/realisation-dessins-manga.jpeg").open
manga.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
manga.save

manga2 = ArtClass.create!(title: "Dynamic Poses and Action Scenes", description: "Bring your characters to life with dynamic poses and thrilling action scenes. Learn anatomy, foreshortening, and perspective to create visually impactful manga panels.", price: 5500, category: "Manga", location: "Tokyo", dates: "24/12/17", user: claudia)
file = URI.parse("https://www.metier.org/wp-content/uploads/2022/06/realisation-dessins-manga.jpeg").open
manga2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
manga2.save

manga3 = ArtClass.create!(title: "Storyboarding for Manga", description: "Develop the skills to create compelling manga storyboards. This class covers panel layouts, pacing, and visual storytelling techniques to craft engaging narratives.", price: 4800, category: "Manga", location: "Tokyo", dates: "25/01/13", user: frederick)
file = URI.parse("https://www.metier.org/wp-content/uploads/2022/06/realisation-dessins-manga.jpeg").open
manga3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
manga3.save

manga4 = ArtClass.create!(title: "Inking and Tonal Techniques", description: "Master inking techniques and learn to use screen tones to add depth and emotion to your manga artwork. Suitable for intermediate and advanced artists.", price: 6000, category: "Manga", location: "Tokyo", dates: "25/02/21", user: sakura)
file = URI.parse("https://www.metier.org/wp-content/uploads/2022/06/realisation-dessins-manga.jpeg").open
manga4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
manga4.save

manga5 = ArtClass.create!(title: "Creating Your Manga One-Shot", description: "Master inking techniques and learn to use screen tones to add depth and emotion to your manga artwork. Suitable for intermediate and advanced artists.", price: 6000, category: "Manga", location: "Tokyo", dates: "25/02/27", user: james)
file = URI.parse("https://www.metier.org/wp-content/uploads/2022/06/realisation-dessins-manga.jpeg").open
manga5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
manga5.save

diy = ArtClass.create!(title: "DIY Candle Making", description: "Learn how to make beautiful, scented candles at home! This class covers basic wax melting techniques, adding fragrances, and creating unique designs for any occasion.", price: 3000, category: "DIY", location: "Tokyo", dates: "24/12/03", user: frederick)
file = URI.parse("https://blog.trazy.com/wp-content/uploads/2020/11/diy-class-thumb-scaled-1200x720.jpg").open
diy.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
diy.save

diy2 = ArtClass.create!(title: "Handmade Jewelry Workshop", description: "Design and create your own jewelry! Explore wire wrapping, beadwork, and basic metalworking techniques to craft necklaces, earrings, and bracelets.", price: 4500, category: "DIY", location: "Tokyo", dates: "24/12/03", user: claudia)
file = URI.parse("https://blog.trazy.com/wp-content/uploads/2020/11/diy-class-thumb-scaled-1200x720.jpg").open
diy2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
diy2.save

diy3 = ArtClass.create!(title: "DIY Home Decor Projects", description: "Get creative with DIY projects for your home. Learn to make stylish wall hangings, personalized coasters, and decorative items that add charm to your space.", price: 3800, category: "DIY", location: "Tokyo", dates: "24/12/03", user: james)
file = URI.parse("https://blog.trazy.com/wp-content/uploads/2020/11/diy-class-thumb-scaled-1200x720.jpg").open
diy3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
diy3.save

diy4 = ArtClass.create!(title: "Custom T-Shirt Printing", description: "Express your creativity by designing and printing your own custom T-shirts. This class covers basic screen printing techniques and tips for vibrant designs.", price: 4000, category: "DIY", location: "Tokyo", dates: "24/12/03", user: claudia)
file = URI.parse("https://blog.trazy.com/wp-content/uploads/2020/11/diy-class-thumb-scaled-1200x720.jpg").open
diy4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
diy4.save

diy5 = ArtClass.create!(title: "Upcycling Furniture and Decor", description: "Transform old furniture and decor items into stunning new pieces. Learn painting, stenciling, and refinishing techniques to breathe new life into your belongings.", price: 5500, category: "DIY", location: "Tokyo", dates: "24/12/03", user: david)
file = URI.parse("https://blog.trazy.com/wp-content/uploads/2020/11/diy-class-thumb-scaled-1200x720.jpg").open
diy5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
diy5.save

sculpture = ArtClass.create!(title: "Clay Sculpting Basics", description: "Discover the fundamentals of clay sculpting. This class covers basic techniques for shaping, carving, and smoothing clay to create simple sculptures like bowls or figurines.", price: 4000, category: "DIY", location: "Tokyo", dates: "25/01/11", user: paula)
file = URI.parse("https://bpb-us-w2.wpmucdn.com/blogs.sjsu.edu/dist/a/54/files/2020/12/20201105-142-0020-WSQ_Learning_Together_Series-Hands-On_Classes_in_a_COVID-19_World-Ceramic_Sculpture_RCBain_web.jpg").open
sculpture.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sculpture.save

sculpture2 = ArtClass.create!(title: "Abstract Sculptures", description: "Explore your creativity by designing and building abstract sculptures. Learn how to manipulate clay and mixed materials to craft visually striking, modern art pieces.", price: 5500, category: "DIY", location: "Tokyo", dates: "25/01/12", user: paula)
file = URI.parse("https://bpb-us-w2.wpmucdn.com/blogs.sjsu.edu/dist/a/54/files/2020/12/20201105-142-0020-WSQ_Learning_Together_Series-Hands-On_Classes_in_a_COVID-19_World-Ceramic_Sculpture_RCBain_web.jpg").open
sculpture2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sculpture2.save

sculpture3 = ArtClass.create!(title: "Human Figure Sculpting", description: "Dive into the intricacies of human anatomy with figure sculpting. Learn to capture lifelike proportions, muscles, and poses using clay and professional tools.", price: 6800, category: "DIY", location: "Tokyo", dates: "25/01/13", user: paula)
file = URI.parse("https://bpb-us-w2.wpmucdn.com/blogs.sjsu.edu/dist/a/54/files/2020/12/20201105-142-0020-WSQ_Learning_Together_Series-Hands-On_Classes_in_a_COVID-19_World-Ceramic_Sculpture_RCBain_web.jpg").open
sculpture3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sculpture3.save

sculpture4 = ArtClass.create!(title: "Wood Carving for Beginners", description: "Start your wood carving journey by learning essential techniques for whittling, carving, and sanding. Create stunning wooden sculptures or functional items like spoons.", price: 4500, category: "DIY", location: "Tokyo", dates: "25/01/14", user: paula)
file = URI.parse("https://bpb-us-w2.wpmucdn.com/blogs.sjsu.edu/dist/a/54/files/2020/12/20201105-142-0020-WSQ_Learning_Together_Series-Hands-On_Classes_in_a_COVID-19_World-Ceramic_Sculpture_RCBain_web.jpg").open
sculpture4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sculpture4.save

sculpture5 = ArtClass.create!(title: "Mixed Media Sculpture", description: "Combine various materials like clay, metal, and found objects to create unique mixed-media sculptures. This class emphasizes experimentation and artistic expression.", price: 7000, category: "DIY", location: "Tokyo", dates: "25/01/15", user: paula)
file = URI.parse("https://bpb-us-w2.wpmucdn.com/blogs.sjsu.edu/dist/a/54/files/2020/12/20201105-142-0020-WSQ_Learning_Together_Series-Hands-On_Classes_in_a_COVID-19_World-Ceramic_Sculpture_RCBain_web.jpg").open
sculpture5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sculpture5.save


Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: frederick).shuffle.first, user: frederick, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: sakura).shuffle.first, user: sakura, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: james).shuffle.first, user: james, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: james).shuffle.first, user: james, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: elsa).shuffle.first, user: elsa, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: greg).shuffle.first, user: greg, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: frederick).shuffle.first, user: frederick, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: stephanie).shuffle.first, user: stephanie, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: pedro).shuffle.first, user: pedro, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
Reservation.create!(art_class: ArtClass.where.not(user: claudia).shuffle.first, user: claudia, status: "pending")
