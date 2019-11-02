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

end