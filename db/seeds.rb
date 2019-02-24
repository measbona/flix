# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies = Movie.create([{ title: 'Star Wars',total_gross: 0 }, { title: 'Lord of the Rings',total_gross: 0 }])
  Character.create(name: 'Luke', movie: movies.first)

  movie= Movie.new(titel:"Hwllo ", total_gross: 0)
  movie.save 	
