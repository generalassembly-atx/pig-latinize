class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end
  def piglatinize
    if (@original_word.start_with? 'a', 'e', 'i', 'o', 'u')
      "#{@original_word}way"
    else
      first_letter_group = @original_word[0..first_vowel-1]
      rest_of_word = @original_word[first_vowel..-1]
      "#{rest_of_word}#{first_letter_group}ay"
    end
  end

  def first_vowel
    @original_word.index(/[aeiou]/)
  end
end

Word.new("bald").piglatinize
Word.new("eagle").piglatinize
Word.new("BIRD").piglatinize
