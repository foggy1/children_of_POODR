require 'open-uri'
require 'json'
require_relative 'view'
require_relative 'toilets_in_parks'



BASE_URL =
'https://data.cityofnewyork.us/resource/r27e-u3sy.json'

QUERY_STRING = '?$q=' + View.user_input


bathrooms = ToiletsInParks.new(BASE_URL, QUERY_STRING)

bathrooms.add_toilets


locations = bathrooms.location_response

View.display_locations(locations)










