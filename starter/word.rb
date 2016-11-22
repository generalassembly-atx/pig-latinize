class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def piglatinize
    new_word = @original_word
    if (@original_word[0].match(/a|e|i|o|u/).nil?)
      new_word = new_word + new_word[0] + "way"
      new_word.slice!(0)
      return new_word
    else
      new_word = new_word+"way"
    end
  end

end

word = Word.new('headcase')
puts word.piglatinize
