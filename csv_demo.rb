require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

CSV.foreach(filepath, headers: :first_row) do |row|
  puts "#{row['First Name']} #{row['Last Name']} plays #{row['Instrument']}"
end


matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

filepath = 'data/matrix.csv'

CSV.open(filepath, 'wb') do |csv|
  matrix.each do |row|
    csv << row
  end
end
