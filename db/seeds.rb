Photo.destroy_all
Attendance.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all
Category.destroy_all

#Users

luci = User.create!(
  email: 'luci@gmail.com',
  password: '123456'
)

nina = User.create!(
  email: 'nina@gmail.com',
  password: '123456'
)
#Categories
music = Category.create(name: "Music")
sports = Category.create(name: "Sports")
games = Category.create(name: "Games")

#Events

events = Event.create!([{
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
  user: luci,
  categories: [sports] },
  {
    name: "Hellfest",
    description: "Extreme metal festival.",
    location: "Clisson, France",
    price: 200,
    capacity: 16_000,
    includes_food: false,
    includes_drinks: true,
    starts_at: '2017-12-11',
    ends_at: '2017-12-14',
    active: true,
    user: luci,
    categories: [music, games]
  }])

#Photos

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/di7m4tijz/image/upload/v1510230806/Poster-UFC-China-Anderson-Silva-Kelvin-Gastelum-620x895_hmjcvv.jpg", event: Event.first)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/di7m4tijz/image/upload/v1510230806/7e8abec7d5b5e3c58dc4cd1127a640e7--hard-rock-realm_gq3osg.jpg", event: Event.last)

#Attendance
Attendance.create!(event: event1, user: luci, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Attendance.create!(event: event1, user: nina, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
