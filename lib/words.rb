class Word
  @@words = []

  attr_reader(:word, :definition)

  define_method(:initialize) do |word|
    @word = word
    @definition = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |word|
    found_word = nil
    @@words.each do |val|
      if val.word() == word
        found_word = val
      end
    end
    found_word
  end
end
