# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Order.destroy_all
Brand.destroy_all
Sneaker.destroy_all

adminny = User.create!(username: "admin", password:"admin", name:"minny", admin: true )

airjordan = Brand.create(
  {name: "Air Jordan"}
)

lebron = Brand.create(
{name: "Lebron"}
)

nikebasketball = Brand.create(
{name: "Nike Basketball"}
)

nikerunning = Brand.create(
{name: "Nike Running"}
)

airjordan.sneakers.create(
{name: "Air Jordan 1 Retro High OG 'Black Toe'", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nike_jordan_1_black_toe_blitz1.jpg", shoesize: "11 in Mens", price: 350}
)
airjordan.sneakers.create(
{name: "Air Jordan 1 Retro High 'Unsupreme'", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/j/aj_1_black_cement_blitz1.jpg", shoesize: "9.5 in Mens", price: 80}
)
airjordan.sneakers.create(
{name: "Air Jordan 1 Retro High OG 'David Letterman'", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/j/o/jordan_1_letterman_blitz1.jpg", shoesize: "10.5 in Mens", price: 100}
)

lebron.sneakers.create(
{name: "Nike Lebron X EXT Cork QS", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/f/sf1a1311_blitz1.jpg", shoesize: "10 in Mens", price: 800}
)
lebron.sneakers.create(
{name: "Nike Lebron 9 P.S. Elite", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/l/e/lebron_miamibb_blitz6.jpg", shoesize: "11 in Mens", price: 500}
)
lebron.sneakers.create(
{name: "Nike Lebron XII Elite SP/Pigalle", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/j/o/jordan_20lebron_20pigalle_20blitz1.jpg", shoesize: "10 in Mens", price: 250}
)

nikerunning.sneakers.create(
{name: "Nike Air Max 90 OG 'Infrared'", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nike_airmaxredblack_blitz6_1.jpg", shoesize: "9.5 in Mens", price: 180}
)
nikerunning.sneakers.create(
{name: "Nike Air Max 95 OG 'Neon'", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/m/am95_20og_202015_20blitz1.jpg", shoesize: "8 in Mens", price: 220}
)
nikerunning.sneakers.create(
{name: "Nike Air Max 1 Ultra LOTC QS 'Paris'", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/m/am1_20lotc_20prem_20paris_20blitz1.jpg", shoesize: "7 in Womens", price: 200}
)

nikebasketball.sneakers.create(
{name: "Nike Air More Uptempo 2012", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nike_20uptempo_20penny_20blitz1.jpg", shoesize: "9.5 in Mens", price: 250}
)
nikebasketball.sneakers.create(
{name: "Nike Air Pressure", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/i/air_pressure_blitz1.jpg", shoesize: "10 in Mens", price: 300}
)
nikebasketball.sneakers.create(
{name: "Nike Foamposite One Gold", img_url: "http://www.projectblitz.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/u/surpeme_goldfoam_blitz1.jpg", shoesize: "8 in Mens", price: 300}
)
