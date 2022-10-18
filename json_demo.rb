require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)

beatles = JSON.parse(serialized_beatles)

p beatles


person = {
  name: 'Roberto',
  age: 22
}

filename = 'data/person.json'

File.open(filename, 'wb') do |file|
  file.write(JSON.generate(person))
end
