# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Running instructions 

1.) Run `bundle install` to install all dependecies 
2.) Run `rails db:create` , `rails db:migrate`, `rails db:seed` to create the databse, migrate the columns and then seed
2.) Run `rails server` to start the web server



Available Commands using localhost 

Get Requests: 

Get all doctors => "http://localhost:3000/doctors"
Get all appointments for a doctor => http://localhost:3000/doctors/`name of doctor`/appointments
Get all appointments for a date => http://localhost:3000/appointment/date/`enter date in YYYY/MM/DD format`


Delete Requests 

Delete an appointment => "http://localhost:3000/appointments/`id of appointment to delete`"


Post Requests 
Add an appointment to a doctors schedule => "http://localhost:3000/appointments"
* The body request must have the doctors first name and be formatted like below* 
Example : 
{"patient_first_name" : "Yoda",
"patient_last_name": "Puppet",
"kind": "New Patient",
 "date": "September 20 2022 12:45",
 "doctor": "Luke" 
}