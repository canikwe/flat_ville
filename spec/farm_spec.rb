RSpec.describe Farm do
  describe '#name' do
    crook_shack = Farm.new("Crook's Shack")

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