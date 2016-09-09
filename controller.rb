require 'open-uri'
require 'json'
require_relative 'view'
require_relative 'toilets_in_parks'
require_relative 'google_api_parser'

BASE_URL =
'https://data.cityofnewyork.us/resource/r27e-u3sy.json'

# QUERY_STRING = '?$q=' + View.user_input
class Controller

  # def initialize()
  #   bathrooms = nil
  # end

  def self.run
    park_list = GoogleApiParser.run(View.user_input)
    park_list.each do |park|
      p park
      query_string = '$where=name%20like%20%27%25'+park+'%25%27'
      bathrooms = ToiletsInParks.new(BASE_URL, query_string)
      bathrooms.add_toilets
      locations = bathrooms.location_response
      View.display_locations(locations)
    end
    # locations = bathrooms.location_response
    # View.display_locations(locations)

    View.poodr_art
  end



end


Controller.run











