require "json"
require "open-uri"

puts "Enter github username:"
username = gets.chomp
url = "https://api.github.com/users/#{username}"

user_serialized = URI.open(url).read

user = JSON.parse(user_serialized)

puts "Name: #{user['name']}"
puts "Company: #{user['company']}"
puts "Location: #{user['location']}"
puts "Bio: #{user['bio']}"
