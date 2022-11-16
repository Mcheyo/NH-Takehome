# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Doctor.destroy_all 
Appointment.destroy_all
luke = Doctor.create(first_name: "Luke", last_name: "Skywalker")
anakin =Doctor.create(first_name: "Anakin", last_name: "Skywalker")
ben = Doctor.create(first_name: "Ben", last_name: "Solo")
Appointment.create(patient_first_name: "Darth", patient_last_name:"Vader", kind:"New Patient", doctor:luke, date:  Time.new(2022,5,8,01,30,00) )
Appointment.create(patient_first_name: "Padme", patient_last_name:"Amidala", kind:"Follow up", doctor:anakin, date: Time.new(2022,6,7,03,40,00) )
Appointment.create(patient_first_name: "Han", patient_last_name:"Solo", kind:"New Patient", doctor:ben, date: Time.new(2022,7,7,01,20,00) )