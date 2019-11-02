class Farm
  
  attr_reader :name, :type
  attr_accessor :owner
  @@all = []

  def initialize(name, type, owner)
    @name = name
    @type = type
    @owner = owner
    self.class.all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |animal|
      animal.farm == self
    end
  end

  def species
    all_species = self.animals.map do |animal|
      animal.species
    end
    
    all_species.uniq
  end

end