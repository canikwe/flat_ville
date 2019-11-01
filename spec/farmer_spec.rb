RSpec.describe Farmer do

  let(:george) { Farmer.new('George') }

  describe '#initialize' do
    it 'can instantiate correctly when given a name' do 
      expect(george.class).to be(Farmer)
    end
  end

  describe '#name' do
    it "Knows their own name" do
      expect(george.name).to eq('George')
    end
  end

  describe '#name=' do
    it "Can change their own name" do
      george.name = 'Fred'

      expect(george.name).to eq('Fred')
    end
  end

end