require 'open-uri'
require 'json'

class ToiletsInParks

  def initialize(base_url, query_string)
    @base_url = base_url
    @query_string = query_string
    
  end

  def json_string_response
    open(@base_url + @query_string).read
  end

  def ruby_hash_response(json_string)
    JSON.parse(json_string_response)
  end

end