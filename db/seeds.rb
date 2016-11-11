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
{name: "Air Jordan 1 'Chicago' 2015", img_url: "http://images.bigcartel.com/product_images/161016487/image.jpg?auto=format&fit=max&h=1000&w=1000", shoesize: "10 in Mens", price: "$499.99"}
)

lebron.sneakers.create(
{name: "Nike Lebron X (10) EXT Cork", img_url: "http://images.bigcartel.com/product_images/125725833/IMG_0103.JPG?auto=format&fit=max&h=1000&w=1000", shoesize: "9 in Mens", price: "$599.99"}
)

nikerunning.sneakers.create(
{name: "Nike Air Max 90 Infrared 2010", img_url: "http://images.bigcartel.com/product_images/135761412/IMG_0949.JPG?auto=format&fit=max&h=1000&w=1000", shoesize: "10.5 in Mens", price: "$159.99"}
)

nikebasketball.sneakers.create(
{name: "Nike Zoom Rookie HOH Exclusive '666'", img_url: "http://images.bigcartel.com/product_images/135761628/IMG_8178.JPG?auto=format&fit=max&h=1000&w=1000", shoesize: "8 in Mens", price: "$329.99"}
)
