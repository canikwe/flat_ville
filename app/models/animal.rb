class Animal

  attr_reader :name, :farm, :species
  @@all = []
  
  def initialize(name, species, farm)
    @name = name
    @species = species
    @farm = farm
    self.class.all << self
  end

  def self.all
    @@all
  end
end