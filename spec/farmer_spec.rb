# require and load the environment file
require_relative '../config/environment'

# type 'rspec spec/farmer_spec.rb --format doc' in terminal to run test suite

RSpec.describe Farmer do
  george = Farmer.new('George')

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