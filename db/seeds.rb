# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroy...'
Flat.destroy_all

1.upto(5) do |i|
  Flat.create!(
    name: Faker::Address.city,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price_per_night: rand(50..180),
    number_of_guests: rand(1..4)
  )
  puts "Creating#{i}"
end

puts 'end of seeds...'
