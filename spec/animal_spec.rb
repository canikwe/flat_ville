RSpec.describe Animal do

  describe '#initiaize' do
    privot = Farm.new('Privot Drive')

    it 'is called with a name' do
      expect do
        Animal.new('Hedwig', privot)
      end.to_not raise_error

      expect(Animal.new('Hedwig', privot).name).to eq('Hedwig')

    end
    
    it 'is called with an instance of a farm' do
      expect(Animal.new('Hedwig', privot).farm).to be_an_instance_of(Farm)
    end
  end

end