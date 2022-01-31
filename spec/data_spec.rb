require 'data'

describe Data do

  x = '[{"name": "Homer Simpson", "location": "Springfield", "date_of_birth": "1956-05-12"},{"name": "Frank Reynolds", "location": "Philadelphia","date_of_birth": "1944-11-17"}, {"name": "Diane Nguyen","location": "Los Angeles","date_of_birth": "1980-03-19"},{"name": "Krusty the Clown", "location": "Springfield","date_of_birth": "1957-10-29"}]'
    
  subject(:test) {Data.new('springfield', x)}

  describe "#recognise location" do 
    it "should return location in lowercase" do
      expect(test.location).to eq "springfield"
    end
  end

  describe "#parsing data" do 
    it "should return the number of models available based on data" do 
      test.parse_data
      expect(test.result.length).to eq 2
    end

    it "should return available models based on data" do 
      test.parse_data
      expect(test.result).to eq ["Homer Simpson", "Krusty the Clown"]
    end

  end


end 