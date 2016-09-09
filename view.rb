module View

  def self.user_input
    # '69-04 229th Street Flushing, NY' #gets.chomp
    '48 East 89th Street, NY'
  end

  def self.display_locations(locations)
    locations.each do |location|
      puts location
    end
  end

  def self.poodr_art
    art = File.read('ascii.txt')
    puts art
  end

end