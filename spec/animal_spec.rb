RSpec.describe Animal do
  
  let(:harry) { Farmer.new('Harry') }
  let(:privot_farm) { Farm.new('Privot Drive', 'dairy', harry) }
  let(:hedwig) { Animal.new('Hedwig', privot_farm) }

  describe '#initiaize' do

    it 'is instantiated with a name' do
      expect(hedwig.name).to eq('Hedwig')
      expect(hedwig.class).to be(Animal)
    end
    
    it 'is instantiated with a farm' do
      expect(hedwig.farm).to be_an_instance_of(Farm)
      expect(hedwig.farm).to be(privot_farm)
    end
  end
  

end