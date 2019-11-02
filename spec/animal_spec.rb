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

    it 'is instantiated with a name, farm, and species' do
      expect { Animal.new('Errol', @privot_farm, @harry) }.to_not raise_error
    end

  end

  describe '#name' do
    it 'knows its name' do
      expect(@hedwig.name).to eq('Hedwig')
      expect(@hedwig.class).to be(Animal)
    end

    it 'cannot change its name' do
      expect { @hedwig.name = 'Not Hedwig' }.to raise_error(NoMethodError)
    end

  end

  describe '#farm' do
    
    it 'knows what farm it belongs to' do
      expect(@hedwig.farm).to be_an_instance_of(Farm)
      expect(@hedwig.farm).to be(@privot_farm)
    end

    it 'can change its farm' do 
      expect { @hedwig.farm = Farm.new('Diagonally Farms', 'candy', @harry) }.to_not raise_error
    end

  end

  describe '#species' do

    it 'knows what species it is' do
      expect(@hedwig.species).to eq('owl')
    end

    it 'cannot change its species' do
      expect { @hedwig.species = 'Not an owl' }.to raise_error(NoMethodError)
    end
  end

  

end