# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guitar.create(brand: "Gibson", model: "Les Paul", price: 6500, image_url: "https://c1.zzounds.com/media/productmedia/fit,600by800/quality,85/1_Full_Straight_Front_40878-415561e4d53a9ab83db782d02d3487bf.jpg")
Guitar.create(brand: "Schecter", model: "Omen 6", price: 350, image_url: "https://m.media-amazon.com/images/I/71ZlrIEmxOL._AC_SY879_.jpg")
puts "SEEDED"