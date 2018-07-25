require 'faker'

10.times do |index|
  user = User.create(email: Faker::Internet.email)
end

10.times do |index|
  a = rand(1..10)
  pin = Pin.create(url: Faker::Internet.url, user_id: a)
end

10.times do |index|
  a = rand(1..10)
  b = rand(1..10)
  comment = Comment.create(content: Faker::ChuckNorris.fact, user_id: a, pin_id: b)
end
