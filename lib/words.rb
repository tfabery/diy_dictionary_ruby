class Word
  attr_reader(:word, :definition)

  define_method(:initialize) do |word|
    @word = word
    @definition = []
  end
end
