class Animal

  attr_reader :name, :species
  attr_accessor :farm
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