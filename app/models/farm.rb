class Farm
  
  attr_reader :name, :type
  attr_accessor :owner

  def initialize(name, type, owner)
    @name = name
    @type = type
    @owner = owner
  end

end