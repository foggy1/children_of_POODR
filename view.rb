module View

  def self.user_input
    puts 'What is your location?'
    gets.chomp
    # '69-04 229th Street Flushing, NY' 
    # '48 East 89th Street, NY'
  end

  def self.display_locations(locations)
    location_list = ''
    locations.each do |location|
      location_list += "#{location}\n"
    end
    location_list
  end

  def self.poodr_art
    art = File.read('ascii.txt')
    puts art
  end

  def self.location_response(toilet)
    toilet_string = "#{toilet.location} in #{toilet.name} in #{toilet.borough}"
    toilet_string.gsub(/[&]/, 'and')
  end

end