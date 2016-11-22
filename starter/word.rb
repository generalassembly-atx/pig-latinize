class Word
  attr_accessor :original_word

  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def piglatinize
    newWord = original_word
    if newWord[0] =~ /[aeiou]/
      "#{newWord}way"
    else
      first_letter = newWord.slice!(0)
      "#{first_letter}#{newWord}ay"
    end

  end

end

pigWord = Word.new('mapple')
puts pigWord.piglatinize
