# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


6.times do |n|
    name = Faker::Name.name
    email = Faker::Internet.email
    password = "password"
        User.create!(
        name: name,
        email: email,
        password: password,
        password_confirmation: password)
    puts "created user #{n+1}"
    end

    users = User.all

6.times do |n|
    title = Faker::Title.title
    text = Faker::Text.text
  
    User.first.post.create(
      title: text,
      text: text)
    puts "created post #{n+1}"
    end

    posts = Post.all

#   6.times do

#         name = Faker::Name.name
#         details = Faker::Details.details
#         price = Faker::Price.price
#         category = Faker::Category.category
#         quantity = Faker::Quantity.quantity

#     User.last.plants.create(
#       name: name,
#       details: details,
#       price: price,
#       category: category,
#       quantity: quantity
#     )
#   end
  