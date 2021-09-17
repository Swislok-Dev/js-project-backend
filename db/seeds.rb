# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Users
user01 = User.create(username: "Swislok")
user02 = User.create(username: "cma")
user03 = User.create(username: "CAM")
user01.guitars.create(style: "electric", brand: "Gibson", model: "Les Paul Standard", image_url: "https://c1.zzounds.com/media/productmedia/fit,600by800/quality,85/1_Full_Straight_Front_40878-415561e4d53a9ab83db782d02d3487bf.jpg")
# Create Electric guitars
Guitar.create(style: "electric", user_id: 2, brand: "Schecter", model: "Omen 6", image_url: "https://m.media-amazon.com/images/I/71ZlrIEmxOL._AC_SY879_.jpg")
Guitar.create(style: "electric", user_id: 3, brand: "Gibson", model: "Les Paul Standard", image_url: "https://c1.zzounds.com/media/productmedia/fit,600by800/quality,85/1_Full_Straight_Front_40878-415561e4d53a9ab83db782d02d3487bf.jpg")
Guitar.create(style: "electric", user_id: 3, brand: "Jackson", model: "JS Series RR Minion JS1X", image_url: "https://m.media-amazon.com/images/I/51dk8encHuL._AC_SL1200_.jpg")
Guitar.create(style: "electric", user_id: 1, brand: "Kramer", model: "EVH's 1982 Frankenstein", image_url: "https://image.invaluable.com/housePhotos/profilesinhistory/44/428244/H3257-L48251857.jpg")
Guitar.create(style: "electric", user_id: 2, brand: "Fender", model: "Stratocaster", image_url: "http://fosterfollynews.net/wp-content/uploads/2021/01/fender-guitar.jpg")
Guitar.create(style: "electric", user_id: 1, brand: "Ibanez", model: "RG470AHM", image_url: "https://www.bhphotovideo.com/images/images2500x2500/ibanez_rg470ahmbmt_rg_standard_6_string_electric_1311754.jpg")
Guitar.create(style: "electric", user_id: 1, brand: "Epiphone", model: "Les Paul Classic", image_url: "https://taodangmusic.com/14439-thickbox_default/-epiphone-les-paul-classic-worn-ebony.jpg")
Guitar.create(style: "electric", user_id: 3, brand: "ESP", model: "LTD Viper 50", image_url: "http://static.keymusic.com/products/80420/XL/esp-ltd-viper-50-black.jpg")


# Create Acoustic guitars
# Guitar.create(style: "acoustic", brand: "", model: "", price: , image_url: "")

# Create Acoustic electric guitars
# Guitar.create(style: "acoustic-electric", brand: "", model: "", price: , image_url: "")

puts "SEEDED"