class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end
  def pig
    "way"
  end
  def to_s
    puts @original_word + pig
  end
end

word = Word.new "inbox"

word.to_s

class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def to_pig_latin
    # IF VOWEL, ADD WAY
    if @original_word.start_with?('a', 'e', 'i', 'o', 'u')
      "#{@original_word}way"
    # IF NOT VOWEL, MOVE FIRST LETTER AND ADD AY
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

puts Word.new("egg").to_pig_latin
puts Word.new("HELLO").to_pig_latin
puts Word.new("Strike").to_pig_latin



word.to_s
