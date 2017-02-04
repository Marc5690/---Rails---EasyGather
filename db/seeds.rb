# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(fname: 'Marc', 
	lname: 'Laffan', 
	email:'marclaffan@gmail.com', 
	password:'password', 
	profile_image:'insert_image.jpg', 
	profile_text:'Im Marc!', 
	gather_points: 10000, 
	privacy:true)

User.create(fname: 'Michael', 
	lname: 'Martinez', 
	email:'mmarti26@alumni.nd.edu', 
	password:'password', 
	profile_image:'insert_image.jpg', 
	profile_text:'Im Michael!', 
	gather_points: 10000, 
	privacy:true)

User.create(fname: 'Xinqi', 
	lname: 'Li', 
	email:'xinqi.li@ucdconnect.ie', 
	password:'password', 
	profile_image:'insert_image.jpg', 
	profile_text:'Im Xinqi!', 
	gather_points: 10000, 
	privacy:true)

Gathering.create(name: 'Rave at the spire', company: 'Dublin Local Government', gather_level:20, x_coords: 1, y_coords: 1)