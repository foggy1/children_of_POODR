

BASE_URL =
'https://data.cityofnewyork.us/resource/r27e-u3sy.json'

# QUERY_STRING = '?$q=' + View.user_input
class Controller

  def initialize(view)
    @view = view
  end

  def run
    park_list = GoogleApiParser.run(@view.user_input)
    puts 'There are toilets at:'
    all_bathrooms = []
    park_list.map do |park|
      next if /^Park$/.match(park)
      # p '++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
      park_name = park.split(" ").join("%20")
      query_string = '$where=name%20like%20%27%25'+park_name+'%25%27' 
      # p query_string
      # p '++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
      bathrooms = ToiletsInParks.new(BASE_URL, query_string)
      bathrooms.add_toilets
      all_bathrooms << bathrooms.toilets if bathrooms.toilets.length > 0
      locations = bathrooms.location_response
      @view.display_locations(locations)
    end
    # locations = bathrooms.location_response
    # View.display_locations(locations)
    if all_bathrooms.length == 0
      puts 'Sorry, there are no toilets near you!'
    else
    @view.poodr_art

    end


  end



end


# Controller.run











