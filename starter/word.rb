class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end
  #if original word begins with a, e, i, o, u add way
  def to_pig_latin
    if @original_word.start_with? 'a', 'e', 'i', 'o', 'u'
      "#{@original_word}way"
  #else take first letter of string move to the end
  #add ay
    else
      original_letter_group = @original_word[0..first_vowel-1]
      rest_of_word = @original_word[first_vowel..-1]
      puts "#{rest_of_word}#{original_letter_group}ay"
    end
  end

  def first_vowel
    @original_word.index(/[aeiou]/)
  end
end

Word.new("egg").to_pig_latin
Word.new("susannah").to_pig_latin



