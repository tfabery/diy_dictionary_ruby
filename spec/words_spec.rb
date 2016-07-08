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

  describe('#add_definition') do
    it "add a inutted definition into definition attribute of a Word object" do
      test_word = Word.new('name')
      test_definition = Definition.new('a word that something or someone is described or goes by')
      test_word.add_definition(test_definition)
      expect(test_word.definition()).to(eq([test_definition]))
    end
  end
end
