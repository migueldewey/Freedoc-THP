# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# Reset all data into database
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

# Generate 10 cities
10.times do |city|
  City.create!(name:Faker::Address.city)
  puts "Ville #{city}/10 créée avec succès"
end

# Generate 100 objects into database
i = 1

100.times do
  doctor = Doctor.create!(
      first_name: Faker::Name.first_name_women,
      last_name: Faker::Name.last_name,
      zip_code: Faker::Address.zip_code,
      city: City.all.sample
  )
  patient = Patient.create!(
      first_name: Faker::Name.first_name_women,
      last_name: Faker::Name.last_name,
      city: City.all.sample

  )
  Appointment.create!(
      doctor: doctor,
      patient: patient,
      date: Faker::Date,
      city: City.all.sample
  )
  specialty = Specialty.create!(name: %w[dentiste médecin_généraliste prothésiste chirgurgien].sample)
  JoinTableDoctorsSpecialty.create!(
      doctor: doctor,
      specialty: specialty
  )

  puts "##{i}/100 Objects Doctor, Patient and Appointment were successuflly created"
  i += 1
end