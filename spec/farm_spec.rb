RSpec.describe Farm do
  
  before do
    @fred = Farmer.new('Fred')
    @george = Farmer.new('George')
    @awesome_farm = Farm.new("My Awesome Farm", "dairy", @fred)
    @crook_shack = Farm.new("Crook's Shack", "Animal Farm", @fred)
  end

  after do
    Farm.all.clear
    Farmer.all.clear
  end

  describe '#initialize' do

    it "can instantiate with a name, a type, and an owner." do
      expect(@awesome_farm.class).to be(Farm)
      expect(@awesome_farm.name).to eq('My Awesome Farm')
      expect(@awesome_farm.type).to eq('dairy')
      expect(@awesome_farm.owner.class).to be(Farmer)
    end
  end

  describe '#name' do

    it "knows it's name" do
      expect(@crook_shack.name).to eq("Crook's Shack")
    end

    it "cannot change it's own name" do
      expect do
        @crook_shack.name = "My Awesome Farm"
      end.to raise_error(NoMethodError)
    end

  end

  describe '#type' do

    it "knows its type" do
      expect(@awesome_farm.type).to eq('dairy')
    end

    it "cannot change it's type" do
      expect { @awesome_farm.type = 'fruit' }.to raise_error(NoMethodError)
    end
  end

  describe '#owner' do

    it "knows its owner" do
      expect(@awesome_farm.owner.name).to eq('Fred')
    end

    it "can change it's owner" do
      expect(@awesome_farm.owner = @george).to be(@george)
    end
  end

  describe '#animals' do
    
    it 'returns all animals currently on the farm' do
      @hedwig = Animal.new('Hedwig', 'owl', @awesome_farm)
      @pigwidgeon = Animal.new('Pigwidgeon', 'owl', @awesome_farm)
      @prongs = Animal.new('James', 'human', @crook_shack)
      
      expect(@awesome_farm.animals.count).to eq(2)
      expect(@awesome_farm.animals.include?(@hedwig)).to be(true)
      expect(@awesome_farm.animals.include?(@prongs)).to be(false)
    end
    
    it 'returns Animal instances, not their attributes' do
      @crookshanks = Animal.new('Crookshanks', 'surly cat', @awesome_farm)

      expect(@awesome_farm.animals[0]).to be_a(Animal)
    end
  end

  describe '#species' do

    it 'returns all the species on currently on the farm' do
      @hedwig = Animal.new('Hedwig', 'owl', @awesome_farm)
      @pigwidgeon = Animal.new('Pigwidgeon', 'owl', @awesome_farm)
      @crookshanks = Animal.new('Crookshanks', 'surly cat', @awesome_farm)
      @prongs = Animal.new('James', 'human', @crook_shack)

      expect(@awesome_farm.species.include?('owl')).to be(true)
      expect(@awesome_farm.species.include?('surly cat')).to be(true)
      expect(@awesome_farm.species.include?('human')).to be(false)
    end

    it 'does not repeat any species on the fame' do
      @hedwig = Animal.new('Hedwig', 'owl', @awesome_farm)
      @pigwidgeon = Animal.new('Pigwidgeon', 'owl', @awesome_farm)
      @crookshanks = Animal.new('Crookshanks', 'surly cat', @awesome_farm)

      expect(@awesome_farm.species.count).to eq(2)
    end
  end

end