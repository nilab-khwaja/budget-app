# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

10.times do |index|
  User.create(
    name: Faker::Name.name
    # email: "email#{index}@email.com",
    # password: "abcdef"
  )
end

50.times do
  Category.create(
    name: Faker::Food.dish,
    icon: Faker::Avatar.image,
    user_id: User.all.sample.id
  )
end

50.times do
  Transaction.create(
    name: Faker::Food.ingredient,
    author: User.all.sample,
    amount:Faker::Number.between(from: 1, to: 100),
  )
end

50.times do
  CategoryTransaction.create(
    expense: Transaction.all.sample,
    category_id: Category.all.sample.id,
  )
end

puts  "#{Transaction.count} transactions, #{Category.count} categories, #{User.count} users and #{CategoryTransaction.count} category transactions are successfully created"
