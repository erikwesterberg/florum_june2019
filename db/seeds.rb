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
    title = Faker::Name.name
    text = Faker::Lorem.paragraph
  
    User.first.posts.create!(
      title: title,
      text: text)
    puts "created post #{n+1}"
end

    

  6.times do |n|
        name = Faker::Name.name
        details = Faker::Name.name
        price = Faker::Number.number(2)
        category = Faker::Name.name
        quantity = Faker::Number.number(2)

    User.last.plants.create(
      name: name,
      details: details,
      price: price,
      category: category,
      quantity: quantity)
      puts "created plants #{n+1}"
  end
  