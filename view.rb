module View

  def self.user_input
    '48 East 89th Street, NY' #gets.chomp
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