# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
print "creating products..."

Product.destroy_all

p1 = Product.create!(
  name: 'Original Sugar Scrub',
  price: 20,
  description: 'Sugar body scrub contains the elements of almond sweet oil, soya bean oil, aloe vera and coconut oil which contains lots of Vitamin E in help with anti- aging and anti wrinkles. The scrub that deeply cleanse your skin as well as moisturizer your skin.',
  ingredients: 'Almond sweet oil, Vitamin E, Soya bean oil, Aloe Vera',
  image: 'IMG_nobg-original.png',
  image2: 'IMG_originalout.jpg'
)

p2 = Product.create!(
  name: 'Minty Citrus Sugar Scrub',
  price: 20,
  description: 'Sugar body scrub contains the elements of peppermint oil, soya bean oil, aloe vera and coconut oil which contains lots of Vitamin E in help with anti- aging and anti wrinkles. The scrub that deeply cleanse your skin as well as moisturizer your skin.',
  ingredients: 'Peppermint Oil, Vitamin E, Soya bean oil, Aloe Vera',
  image: 'IMG_nobg-citrus.png',
  image2: 'IMG_mintycitrusout.jpg'
)

p3 = Product.create!(
  name: 'Vanilla Body Milk',
  price: 23,
  description: 'Hydrate and soothe your skin with our delectably smooth body milk! A light and luscious moisturiser with Jojoba and Avocado Oil to nourish your skin and leave it feeling soft, silky and repaired.',
  ingredients: 'Macadamia Oil, Jojoba Oil, Avocado Oil',
  image: 'IMG_nobg-lotion.png',
  image2: 'IMG_lotion2.jpg'
)


puts "created #{Product.count} product."

###############################################


print "creating users..."

User.destroy_all

u1 = User.create!(
  first_name: 'Phoebe',
  last_name: 'Tsoi',
  email: 'phoebe@hotmail.com',
  phone: '0411111111',
  address: '51 Pens Rd, Roselands, 2196',
  password: 'chicken'
)

u2 = User.create!(
  first_name: 'Frankie',
  last_name: 'Tsoi',
  email: 'frankie@hotmail.com',
  phone: '0422222222',
  address: '52 Pens Rd, Roselands, 2196',
  password: 'chicken'
)

puts "created #{User.count} users."


#####################################################

# Cart.destroy_all


#######################################################

print "creating order..."

Order.destroy_all

o1 = Order.create!(
  user_id: u1.id,
  first_name: 'Phoebe',
  last_name: 'Tsoi',
  email: 'phoebe@hotmail.com',
  address: '51 Pens Rd, Roselands, 2196',
  payment: 'card'
)

puts "created #{Order.count} orders."

#######################################################

print "creating order line items..."

OrderLineItem.destroy_all

oli1 = OrderLineItem.create!(
  product_id: p1.id,
  order_id: o1.id,
  qty: 1
)

oli2 = OrderLineItem.create!(
  product_id: p3.id,
  order_id: o1.id,
  qty: 3
)

oli3 = OrderLineItem.create!(
  product_id: p2.id,
  order_id: o1.id,
  qty: 4
)

puts "created #{OrderLineItem.count} order line items."

#######################################################