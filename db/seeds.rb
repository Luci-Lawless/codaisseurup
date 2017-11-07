User.destroy_all

#Users

luci = User.create!(
  email: 'luci@gmail3.com',
  password: '123456'
)

nina = User.create!(
  email: 'nina@gmail3.com',
  password: '123456'
)

#Events

event = Event.create!(
  name: "MMA Event",
  description: "After previously contesting three events in Macau (a Special administrative region of China) since 2012, the event will mark the first that the promotion will hold on Mainland China.",
  location: "Shanghai, China",
  price: 1000,
  capacity: 16_000,
  includes_food: false,
  includes_drinks: true,
  starts_at: '2017-12-11',
  ends_at: '2017-12-14',
  active: true,
  user_id: luci
)





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
