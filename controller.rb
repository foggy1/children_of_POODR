require 'open-uri'
require 'json'
require_relative 'view'
require_relative 'model'


BASE_URL =
'https://data.cityofnewyork.us/resource/r27e-u3sy.json'

QUERY_STRING = '?$q=' + View.user_input



toilets = ToiletsInParks.new(BASE_URL, QUERY_STRING)

json_string = toilets.json_string_response

p toilets.ruby_hash_response(json_string)







