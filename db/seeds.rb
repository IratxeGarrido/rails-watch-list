# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'rest-client'

Movie.destroy_all
List.destroy_all
Review.destroy_all

response = RestClient.get 'https://tmdb.lewagon.com/movie/top_rated'
movies = JSON.parse(response)

conf_url = RestClient.get 'https://tmdb.lewagon.com/configuration'
conf = JSON.parse(conf_url)
base_url = conf['images']['base_url']
file_size = conf['images']['poster_sizes'][4]

movies['results'].each do |movie|
  poster_url = base_url + file_size + movie['poster_path']
  Movie.create(title: movie['original_title'],
               overview: movie['overview'],
               poster_url: poster_url,
               rating: movie['vote_average'].round(1))
end

res = RestClient.get 'https://tmdb.lewagon.com/movie/popular'
popular_movies = JSON.parse(res)

popular_movies['results'].each do |movie|
  poster_url = base_url + file_size + movie['poster_path']
  Movie.create(title: movie['original_title'],
               overview: movie['overview'],
               poster_url: poster_url,
               rating: movie['vote_average'].round(1))
end
