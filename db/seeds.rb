# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Stylish Apartment in Soho',
  address: '25 Wardour Street, London W1D 6PW',
  description: 'Modern, stylish apartment in the heart of Soho. Great for city explorers and food lovers.',
  price_per_night: 120,
  number_of_guests: 2
)

Flat.create!(
  name: 'Bright Flat with Canal View',
  address: '44 Regent\'s Canal, London NW1 8XL',
  description: 'Enjoy breakfast on the balcony with canal views. Cozy and peaceful, yet central.',
  price_per_night: 95,
  number_of_guests: 4
)

Flat.create!(
  name: 'Luxury Penthouse with Rooftop',
  address: '88 Tower Bridge Road, London SE1 4TP',
  description: 'Top-floor penthouse with rooftop terrace. Great views, luxury interiors and fast WiFi.',
  price_per_night: 250,
  number_of_guests: 5
)

puts "Finished seeding flats!"
