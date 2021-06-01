# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all


8.times do 
    article = Article.create!(
      title: Faker::Book.title,
      content: Faker::Lorem.sentence,
      users_id: rand(1..5),
    )
  end

  10.times do 
    User.create(email: Faker::Internet.email, password:'12345678')
end