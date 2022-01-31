require 'json'

class Data 

  attr_reader :location, :json_data

  def initialize(location)
    @location = location.downcase
    @result = []
    @json_data = ""


    #x = '[{"name": "Homer Simpson", "location": "Springfield", "date_of_birth": "1956-05-12"},{"name": "Frank Reynolds", "location": "Philidelphia","date_of_birth": "1944-11-17"}, {"name": "Diane Nguyen","location": "Los Angeles","date_of_birth": "1980-03-19"},{"name": "Krusty the Clown", "location": "SpringField","date_of_birth": "1957-10-29"}]'
  end

  

  def parse_data 
    x = '[{"name": "Homer Simpson", "location": "Springfield", "date_of_birth": "1956-05-12"},{"name": "Frank Reynolds", "location": "Philidelphia","date_of_birth": "1944-11-17"}, {"name": "Diane Nguyen","location": "Los Angeles","date_of_birth": "1980-03-19"},{"name": "Krusty the Clown", "location": "Springfield","date_of_birth": "1957-10-29"}]'
    #my_hash = JSON.parse('{"hello": "goodbye"}')
    #puts x
    ruby_array = JSON.parse(x)

    ruby_array.each{
      |el|
      if el["location"].downcase == "springfield"
        @result << el["name"]
      end
    }
    
    puts @result


  end 


end