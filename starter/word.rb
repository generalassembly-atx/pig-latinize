class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def to_pig_latin
    if @original_word[0]=="a"|| @original_word[0]=="e"|| @original_word[0]=="i"||@original_word[0]=="o"|| @original_word[0]=="u"
      #"#{@original_word}way"
        @original_word +"way"
    else
      first_letter=@original_word[0]
      rest_of_word = @original_word[1..-1]
      "#{rest_of_word}#{first_letter}ay"
    end
  end
end

Word.new("egg").to_pig_latin
Word.new("wgg").to_pig_latin
