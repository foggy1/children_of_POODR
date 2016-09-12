require 'open-uri'
require 'json'
require 'sinatra'
require_relative 'view'
require_relative 'toilets_in_parks'
require_relative 'google_api_parser'
require_relative 'controller'




post '/bathrooms' do
	nearby_toilets = Controller.new(View, params[:address]).run
	nearby_toilets = nearby_toilets.join("<br>")
	redirect "/bathrooms?#{nearby_toilets}"
	erb :bathrooms
end

get '/bathrooms' do
	@stuff = params.keys.first
	# binding.pry
	erb :bathrooms
end
