class ProjectCli::Trail
  attr_accessor :name, :county, :region
  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list_all_trails
    trail_1 = self.new
    trail_1.name = "JD"
    trail_1.county = "Indiantown"
    trail_1.region = "Central"
    self.all.each do |trail|
      puts trail.name
    end
  end

  def self.search_by_county(input)
    self.all.select {|i| i.county.capitalize == input.capitalize}
  end
end
