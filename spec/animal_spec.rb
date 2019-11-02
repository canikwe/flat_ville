RSpec.describe Animal do
  
  before do
    @harry = Farmer.new('Harry')
    @privot_farm = Farm.new('Privot Drive', 'dairy', @harry)
    @hedwig = Animal.new('Hedwig', "owl", @privot_farm)
  end

  after do
    Farmer.all.clear
    Farm.all.clear
    Animal.all.clear
  end

  describe '#initiaize' do

    it 'is instantiated with a name' do
      expect(@hedwig.name).to eq('Hedwig')
      expect(@hedwig.class).to be(Animal)
    end
    
    it 'is instantiated with a farm' do
      expect(@hedwig.farm).to be_an_instance_of(Farm)
      expect(@hedwig.farm).to be(@privot_farm)
    end

    it 'is instantiated with a species' do
      expect(@hedwig.species).to eq('owl')
    end
  end

  

end