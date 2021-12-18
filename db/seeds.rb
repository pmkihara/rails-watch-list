require 'open-uri'
require 'json'
require 'faker'


# DELETES EXISTING RECORDS
# print 'Deleting existing Bookmarks...'
# Bookmark.destroy_all
# puts ' ...deleted!'
# print 'Deleting existing Movies...'
# Movie.destroy_all
# puts ' ...deleted!'
# print 'Deleting existing Lists...'
# List.destroy_all
# puts ' ...deleted!'

# print 'Get top rated movies from API...'
# top_url = 'http://tmdb.lewagon.com/movie/top_rated'
# top_serialized = URI.open(top_url).read
# top_movies = JSON.parse(top_serialized)
# puts '... received!'

# print 'Creating top movies...'
# top_movies['results'].each do |movie|
#   title = movie['title']
#   overview = movie['overview']
#   poster_url = "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
#   rating = movie['vote_average'].to_f

#   Movie.create!(title: title, overview: overview, poster_url: poster_url, rating: rating)
# end
# puts ' ...created!'

# print 'Creating more movies...'
# Movie.create!(title: 'The Dark Knight', overview: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', poster_url: '	https://m.media-amazon.com/images/M/MV5BMTMxNTMwOD…TcwODAyMTk2Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg', rating: 9.0)
# Movie.create!(title: 'The Lord of the Rings: The Return of the King', overview: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.", poster_url: 'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZW…XVyNzkwMjQ5NzM@._V1_QL75_UX380_CR0,0,380,562_.jpg', rating: 8.9)
# Movie.create!(title: 'Pulp Fiction', overview: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', poster_url: 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZT…XVyNzkwMjQ5NzM@._V1_QL75_UY562_CR3,0,380,562_.jpg', rating: 8.9)
# Movie.create!(title: 'The Good, the Bad and the Ugly', overview: 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', poster_url: 'https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MT…TgwNDQ4ODE5MDE@._V1_QL75_UX380_CR0,8,380,562_.jpg', rating: 8.8)
# Movie.create!(title: 'The Lord of the Rings: The Fellowship of the Ring', overview: 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', poster_url: '	https://m.media-amazon.com/images/M/MV5BN2EyZjM3Nz…XVyNDUzOTQ5MjY@._V1_QL75_UX380_CR0,1,380,562_.jpg', rating: 8.8)
# Movie.create!(title: 'The Lord of the Rings: The Two Towers', overview: "While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.", poster_url: 'https://m.media-amazon.com/images/M/MV5BZGMxZTdjZm…VyNjU0OTQ0OTY@._V1_QL75_UX380_CR0,14,380,562_.jpg', rating: 8.7)
# Movie.create!(title: 'Inception', overview: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', poster_url: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3Nj…TcwNTI5OTM0Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg', rating: 8.8)
# Movie.create!(title: 'Star Wars: Episode V - The Empire Strikes Back', overview: 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.', poster_url: 'Star Wars: Episode V - The Empire Strikes Back', rating: 8.7)

# puts '...created!'

# https://coolors.co/0b090a-1f1f1e-7a7160-ffffff-e5383b-ba181b-a30000

print 'Creating 1 list...'
List.create!(name: 'To watch')
puts ' ...created!'

