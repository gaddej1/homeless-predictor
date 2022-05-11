# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create the global configuration
# create! makes the object and automatically saves it to the database
# the ! means that if something goes wrong and cannot save, throw an exception
AppConfig.create!(name: 'MyApp', logo_url: 'hhhhhhh')

if Rails.env.development?

  # We're in a development mode, so making fake, insecure data is fine
  # Create two user profiles, admin and unprivledged user
  # Right now, there is no difference between the accounts
  # If your project needs it, add a boolean field to user for administrator
  admin = User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  user = User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')

  #Parses the file that contains the data to initialize the database with
  #and adds it to the homeless shelters table.
  csv_text = File.read(Rails.root.join('lib', 'seeds', 'homeless_shelters.csv'))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
  csv.each do |row|
    t = HomelessShelter.new
    t.name = row['Name']
    t.contact = row['Contact']
    t.address = row['Address']
    t.county = row['County']
    t.save!
  end

elsif Rails.env.production?

  # We're in a production application! Stay secure! No accounts with password!

end
