require 'faker'

20.times do
  user = User.create!(
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone, 
    description: Faker::Lorem.sentence
  )
end

10.times do
  city = City.create!(
    name: Faker::Address.city, 
    zip_code: Faker::Address.zip_code
  )
end

50.times do 
  listing = Listing.create!(
    admin_id: Faker::Number.within(range: 1..20),
    city_id: Faker::Number.within(range: 1..10),
    available_beds: Faker::Number.non_zero_digit, 
    price: Faker::Number.non_zero_digit, 
    description: Faker::Lorem.sentence,
    has_wifi: Faker::Boolean.boolean, 
    welcome_message: Faker::TvShows::Friends.quote
  )
end