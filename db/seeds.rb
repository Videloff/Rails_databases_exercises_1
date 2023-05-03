# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

genre_tab = ["action", "horreur", "comédie", "drame"]

100.times do
  movie_test = Movie.create!(name: Faker::Movie.title, year: rand(1900..2020), genre: genre_tab[rand(0..3)], synopsis: Faker::Markdown.emphasis, director: Faker::Name.name, allocine_rating: rand(0..5), my_rating: nil, already_seen: false)
end