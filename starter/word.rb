class Word
  attr_accessor :original_word
  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def piglatinize
    if original_word.start_with?("a","e","i","o","u", "y")
      new_word = original_word + 'yay'
    else
      new_word = (original_word.split(/([aeiouy].*)/)).reverse.join + 'ay'
    end
    puts new_word
  end

end

word = Word.new("rhythm")
word.piglatinize
