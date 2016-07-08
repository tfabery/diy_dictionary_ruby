require('rspec')
require('words')
require('definitions')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#initialize') do
    it "initialize a new Word object" do
      test_word = Word.new('name')
      expect(test_word.word()).to(eq('name'))
    end
  end

  describe(':save') do
    it "save a Word object into @@words class variable" do
      test_word = Word.new('name')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.find') do
    it "find a word from @@words class variable" do
      test_word = Word.new('name')
      test_word.save()
      expect(Word.find('name')).to(eq(test_word))
    end
  end
end
