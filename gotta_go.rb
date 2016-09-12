require 'open-uri'
require 'json'
require 'sinatra'
require 'pry'
require_relative 'view'
require_relative 'toilets_in_parks'
require_relative 'google_api_parser'
require_relative 'controller'



get '/bathrooms' do
  erb :bathrooms
end

post '/bathrooms' do
	nearby_toilets = Controller.new(View, params[:address]).run
	nearby_toilets = nearby_toilets.join("<br>")
      uri = URI.parse(URI.encode(nearby_toilets.strip))
      # binding.pry
	redirect "/bathroom_list?#{uri}"
	erb :bathrooms
end

get '/bathroom_list' do
	stuff = params.keys.first
      @stuff = stuff.split('<br>')
	# binding.pry
	erb :bathroom_list
end

