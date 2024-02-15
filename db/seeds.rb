# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

Movie.create(title: Faker::Name.name_with_middle, overview: Faker::TvShows::TheFreshPrinceOfBelAir.quote, poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: Faker::ElectricalComponents.passive, overview: Faker::String.random, poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: (Faker::Travel::TrainStation.name(region: 'united_kingdom', type: 'metro')) +" the "+ (Faker::Creature::Bird.emotional_adjective) + " " + (Faker::Creature::Bird.common_name), overview: Faker::TvShows::Seinfeld.quote, poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: Faker::Book.genre, overview: Faker::TvShows::TheITCrowd.quote, poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts "What a terrible collection of films"
