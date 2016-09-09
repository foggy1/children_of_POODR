class View

  def self.user_input
    "Alley"#gets.chomp
  end

  def self.display_locations(locations)
    locations.each do |location|
      puts location
    end
  end

end