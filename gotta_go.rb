require 'open-uri'
require 'json'
require_relative 'view'
require_relative 'toilets_in_parks'
require_relative 'google_api_parser'
require_relative 'controller'

Controller.new(View).run