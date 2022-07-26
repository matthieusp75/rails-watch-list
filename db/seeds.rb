require "json"
require "open-uri"

url = "https://tmdb.lewagon.com/movie/top_rated"
movie_serialized = URI.open(url).read
movie = JSON.parse(movie_serialized)

movies = movie["results"].first(5)

movies.each do |element|
  Movie.create(title: element["title"], overview: element["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{element["poster_path"]}", rating: element["vote_average"])
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

list_1 = List.create(name: "Drama")
list_2 = List.create(name: "Comedy")
list_3 = List.create(name: "Theatre")
