require 'rest-client'

# response = RestClient.get "https://www.bing.com/search?q=facebook"
response = RestClient.get('https://www.bing.com/search?q=facebook').headers

#puts "code:"    + response.code.to_s
#puts "headers:" + response.headers.to_s
#puts "cookies:" + response.cookies.to_s
#puts "history:" + response.history.to_s
#puts "body:"    + response.body

# File.write('body.html', response.body.to_s)
File.write('header.html', response)