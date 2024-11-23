# db/seeds.rb

# Create Categories
espresso = Category.create(name: 'Espresso')
latte = Category.create(name: 'Latte')
cappuccino = Category.create(name: 'Cappuccino')
americano = Category.create(name: 'Americano')

# Create Coffees and Attach Images
coffee1 = Coffee.create(
  name: 'Dark Roast Espresso',
  description: 'A bold and strong espresso made with dark roasted beans. Perfect for those who love a rich and intense flavor.',
  price: 12.99,
  origin: 'Colombia',
  roast_level: 'Dark',
  stock_quantity: 50,
  category: espresso
)
coffee1_picture = File.open(Rails.root.join('app/assets/images/dark_roast.jpg'))
coffee1.picture.attach(io: coffee1_picture, filename: 'dark_roast.jpg', content_type: 'image/jpg')

coffee2 = Coffee.create(
  name: 'Classic Latte',
  description: 'A smooth and creamy latte made with rich espresso and steamed milk.',
  price: 7.50,
  origin: 'Brazil',
  roast_level: 'Medium',
  stock_quantity: 30,
  category: latte
)
coffee2_picture = File.open(Rails.root.join('app/assets/images/latte.jpg'))
coffee2.picture.attach(io: coffee2_picture, filename: 'latte.jpg', content_type: 'image/jpg')

coffee3 = Coffee.create(
  name: 'Cappuccino Delight',
  description: 'A creamy cappuccino with frothy milk foam on top, perfect for a midday pick-me-up.',
  price: 8.99,
  origin: 'Italy',
  roast_level: 'Medium',
  stock_quantity: 20,
  category: cappuccino
)
coffee3_picture = File.open(Rails.root.join('app/assets/images/cappuccino.jpg'))
coffee3.picture.attach(io: coffee3_picture, filename: 'cappuccino.jpg', content_type: 'image/jpg')

coffee4 = Coffee.create(
  name: 'Americano Bliss',
  description: 'A classic Americano made with hot water and espresso for a strong, smooth flavor.',
  price: 6.00,
  origin: 'Ethiopia',
  roast_level: 'Light',
  stock_quantity: 15,
  category: americano
)
coffee4_picture = File.open(Rails.root.join('app/assets/images/americano.jpg'))
coffee4.picture.attach(io: coffee4_picture, filename: 'americano.jpg', content_type: 'image/jpg')

coffee5 = Coffee.create(
  name: 'Iced Latte',
  description: 'A refreshing iced latte made with espresso, milk, and ice. Perfect for a hot summer day.',
  price: 9.50,
  origin: 'Brazil',
  roast_level: 'Medium',
  stock_quantity: 10,
  category: latte
)
coffee5_picture = File.open(Rails.root.join('app/assets/images/iced_latte.jpg'))
coffee5.picture.attach(io: coffee5_picture, filename: 'iced_latte.jpg', content_type: 'image/jpg')

coffee6 = Coffee.create(
  name: 'Caramel Macchiato',
  description: 'A sweet and creamy caramel macchiato made with espresso, steamed milk, and caramel syrup.',
  price: 10.00,
  origin: 'Brazil',
  roast_level: 'Medium',
  stock_quantity: 25,
  category: latte
)
coffee6_picture = File.open(Rails.root.join('app/assets/images/caramel_macchiato.jpg'))
coffee6.picture.attach(io: coffee6_picture, filename: 'caramel_macchiato.jpg', content_type: 'image/jpg')

coffee7 = Coffee.create(
  name: 'Vanilla Latte',
  description: 'A smooth and creamy vanilla latte made with rich espresso, steamed milk, and vanilla syrup.',
  price: 8.50,
  origin: 'Brazil',
  roast_level: 'Medium',
  stock_quantity: 30,
  category: latte
)
coffee7_picture = File.open(Rails.root.join('app/assets/images/vanilla_latte.jpg'))
coffee7.picture.attach(io: coffee7_picture, filename: 'vanilla_latte.jpg', content_type: 'image/jpg')

coffee8 = Coffee.create(
  name: 'Mocha Latte',
  description: 'A rich and indulgent mocha latte made with espresso, steamed milk, and chocolate syrup.',
  price: 9.00,
  origin: 'Brazil',
  roast_level: 'Medium',
  stock_quantity: 20,
  category: latte
)
coffee8_picture = File.open(Rails.root.join('app/assets/images/mocha_latte.jpg'))
coffee8.picture.attach(io: coffee8_picture, filename: 'mocha_latte.jpg', content_type: 'image/jpg')

