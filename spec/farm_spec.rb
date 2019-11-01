RSpec.describe Farm do
  ted = Farmer.new('Ted')

  describe '#initialize' do

    it "should be instantiated with a name, a type, and an owner." do
      expect do
        Farm.new("My Awesome Farm", "dairy", ted)
      end.to_not raise_error(ArgumentError)
    end
  end

  describe '#name' do
    crook_shack = Farm.new("Crook's Shack", "Animal Farm", ted)

    it "Knows it's name" do
      expect(crook_shack.name).to eq("Crook's Shack")
    end

    it "Cannot reset it's own name" do
      expect do
        crook_shack.name = "My Awesome Farm"
      end.to raise_error(NoMethodError)
    end
  end

end