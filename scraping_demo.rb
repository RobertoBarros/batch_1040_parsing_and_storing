require "open-uri"
require "nokogiri"

url = "https://www.bbcgoodfood.com/search/recipes?q=chocolate"

html = URI.open(url).read
html_doc = Nokogiri::HTML(html)

html_doc.search('.standard-card-new__article-title').first(5).each_with_index do |element, index|
  puts "#{index + 1} - #{element.text.strip}"
  puts 'https://www.bbcgoodfood.com' + element.attribute('href').value
end
