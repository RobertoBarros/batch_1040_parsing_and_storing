require "json"
require "open-uri"

puts "Qual o CEP?"
cep = gets.chomp
url = "https://viacep.com.br/ws/#{cep}/json/"

result = JSON.parse(URI.open(url).read)

puts "logradouro: #{result['logradouro']}"
puts "localidade: #{result['localidade']}"
puts "UF: #{result['uf']}"
