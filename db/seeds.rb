# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faker::Config.locale = 'ko'

User.create([
  { email: "asdf@asdf.com", password: "123123" },
  { email: "qwer@qwer.com", password: "123123" },
  { email: "zxcv@zxcv.com", password: "123123" }
])

5.times do
  Post.create(
    title: Faker::Address.state,
    content: Faker::Lorem.words,
    user_id: rand(1..3) # (1..3).to_a.sample()
  )
end

10.times do
  Comment.create(
    content: Faker::Name.name,
    user_id: rand(1..3),
    post_id: rand(1..5)
  )
end
