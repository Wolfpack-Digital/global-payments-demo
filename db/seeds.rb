# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.create(
  {
    name: 'Test product',
    price: 100,
    currency: 'EUR',
    customer_first_name: 'Florin',
    customer_last_name: 'Ionce',
    customer_email: 'florin@wolfpack-digital.com',
    customer_phone: '44|754480853',
    work_phone: '44|754480853',
    billing_address_city: 'London',
    billing_address_address_1: 'Abbwey Wood',
    billing_address_address_2: '12',
    billing_address_address_3: '15',
    billing_address_state: 'Whales',
    billing_address_country: 'United Kingdon',
    billing_address_zip: 'LS2 7E1',
    address_match: true
  }
)
