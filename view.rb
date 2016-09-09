module View

  def self.user_input
    '4Lior Cohen, PT, 4 East 84th Street New York, NY' #gets.chomp
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