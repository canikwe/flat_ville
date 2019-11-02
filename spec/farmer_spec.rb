RSpec.describe Farmer do

  before do
    @george = Farmer.new('George') 
    @awesome_farm = Farm.new("My Awesome Farm", "dairy", @george)
    @crook_shack = Farm.new("Crook's Shack", "Animal Farm", @george)
  end

  after do
    Farmer.all.clear
    Farm.all.clear
  end

  describe '#initialize' do
    it 'can instantiate correctly when given a name' do 
      expect(@george.class).to be(Farmer)
    end
  end

  describe '#name' do
    it "Knows their own name" do
      expect(@george.name).to eq('George')
    end
  end

  describe '#name=' do
    it "Can change their own name" do
      @george.name = 'Fred'

      expect(@george.name).to eq('Fred')
    end
  end

  describe '#farms' do
    it 'returns all farms for a specific farmer' do
      expect(@george.farms.count).to eq(2)
    end
  end

end