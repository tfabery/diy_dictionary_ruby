require('rspec')
require('definitions')

describe('Definition') do
  describe('#initialize') do
    it "initialize a new Definition object" do
      test_definition = Definition.new('a word that something or someone is described or goes by')
      expect(test_definition.definition()).to(eq('a word that something or someone is described or goes by'))
    end
  end
end
