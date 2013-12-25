# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d1 = Director.create :name => "Danny Boyle", :birthday => Date.new(1956, 10, 20)
d2 = Director.create :name => "James Wan", :birthday => Date.new(1977, 2, 27)
d3 = Director.create :name => "Clint Eastwood", :birthday => Date.new(1930, 5, 31)

m1 = Movie.new :name => "127 Hours", :year => 2010, :runtime => 94, :studio => "Fox Searchlight Pictures"
m2 = Movie.new :name => "Saw", :year => 2004, :runtime => 102, :studio => "Lionsgate"
m3 = Movie.new :name => "Gran Torino", :year => 2008, :runtime => 116, :studio => "Warner Bros."

d1.movies << m1
d2.movies << m2
d3.movies << m3

m1.roles.create :name => "Aron Ralston"

m2.roles.create :name => "Dr. Lawrence Gordon"
m2.roles.create :name => "John Kramer"
m2.roles.create :name => "Adam Stanheight"