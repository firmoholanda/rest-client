require 'rest-client'
require 'nokogiri'

# response = RestClient.get "https://www.bing.com/search?q=facebook"
response = RestClient.get('https://www.bing.com/search?q=facebook').headers

#puts "code:"    + response.code.to_s
#puts "headers:" + response.headers.to_s
#puts "cookies:" + response.cookies.to_s
#puts "history:" + response.history.to_s
#puts "body:"    + response.body


# File.write('body.html', response.body.to_s)
File.write('header.html', response)

# write file dump file to local dir
File.write('body.html', response.body.to_s)

# parse html with nokogiri
parsed_data = Nokogiri::HTML.parse(response.body.to_s)

# get search title
puts parsed_data.title

# get all lins from response.body
nodeset = parsed_data.xpath('//a')      
puts nodeset.map {|element| element["href"]}.compact

