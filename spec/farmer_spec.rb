RSpec.describe Farmer do

  before do
    @george = Farmer.new('George') 

  end

  after do
    Farmer.all.clear
    Farm.all.clear
  end

  describe '#initialize' do
    it 'can instantiate correctly when given a name' do
      expect { Farmer.new('Farmer Fred') }.to_not raise_error
      expect(@george.class).to be(Farmer)
    end
  end

  describe '#name' do
    it "knows their own name" do
      expect(@george.name).to eq('George')
    end

    it "can change their own name" do
      @george.name = 'Fred'

      expect(@george.name).to eq('Fred')
    end
  end

  describe '#farms' do

    it 'returns all farms for a specific farmer' do
      @fred = Farmer.new("Fred")
      @awesome_farm = Farm.new("My Awesome Farm", "dairy", @george)
      @crook_shack = Farm.new("Crook's Shack", "Animal Farm", @george)
      @not_my_farm = Farm.new("Fred's Farm", "Veggie Farm", @fred)

      expect(@george.farms.count).to eq(2)
      expect(@george.farms.include?(@awesome_farm)).to be(true)
      expect(@george.farms.include?(@not_my_farm)).to be(false)
    end
  end

  describe '#buy_farm' do

    it 'can buy a farm that is an instance of the Farm class' do
      expect(@george.farms.count).to eq(0)
      expect(@george.buy_farm("Another Cool Farm", "meat")).to be_a(Farm)
      expect(@george.farms.count).to eq(1)
    end
  end

end