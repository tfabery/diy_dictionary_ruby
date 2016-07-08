require('rspec')
require('words')
require('definitions')

describe('Word') do
  describe('#initialize') do
    it "initializes a new Word object" do
      test_word = Word.new('name')
      expect(test_word.word()).to(eq('name'))
    end
  end
end
