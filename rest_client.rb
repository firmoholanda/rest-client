require 'rest-client'
require 'nokogiri'

response = RestClient.get "https://www.bing.com/search?q=rails"

#puts "code:"    + response.code.to_s
#puts "headers:" + response.headers.to_s
#puts "cookies:" + response.cookies.to_s
#puts "history:" + response.history.to_s
#puts "body:"    + response.body

# write file dump file to local dir
File.write('body.html', response.body.to_s)

# parse html with nokogiri
parsed_data = Nokogiri::HTML.parse(response.body.to_s)

# get search title
puts parsed_data.title

# get all lins from response.body
nodeset = parsed_data.xpath('//a')      
puts nodeset.map {|element| element["href"]}.compact
