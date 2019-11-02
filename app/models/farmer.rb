class Farmer
  
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def farms
    Farm.all.select do |farm|
      farm.owner == self
    end
  end

  def self.all
    @@all
  end

end