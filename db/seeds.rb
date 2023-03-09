require 'faker'

Review.destroy_all
Restaurant.destroy_all

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )

  3.times do
    review = Review.create!(
      content: Faker::Lorem.sentence,
      rating: rand(0..5),
      restaurant: restaurant
    )
  end
end
