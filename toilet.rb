class Toilet
  attr_reader :location, :borough, :name, :open_year_round

  def initialize(args={})
    @borough = args.fetch("borough", nil)
    @location = args.fetch("location", nil)
    @name = args.fetch("name", nil)
    @open_year_round = args.fetch("open_year_round", nil)
  end

  def display_location
    puts "There is a toilet at #{self.location} in #{self.name} in #{self.borough}."
  end

end
