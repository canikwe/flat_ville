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

  def buy_farm(name, type)
    Farm.new(name, type, self)
  end

end