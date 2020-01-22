require 'rest-client'

# retrieve the keyword from the user
# search for it
# return the results

class BingSearch
  URL = "https://www.bing.com/search?q="  

  def user_input
    puts "Enter the keyword you want to search for: "
    @@key_word = gets.chomp
  end
  
  def search
    word = "#{URL}#{@@key_word}"
    puts RestClient.get word
  end
end

test = BingSearch.new
puts test.user_input
puts test.search