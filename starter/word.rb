class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end
  def first_letter
    @original_word[0]
  end
  def to_pig
    vowels = ["a", "e", "i" , "o", "u"]
    if vowels.include? first_letter
      puts "#{@original_word}way"
    elsif
      original_first_letter = first_letter
      word = @original_word
      word[0] = ''
      puts "#{word}#{original_first_letter}ay"
    end
  end
end
camille = Word.new "helpful"
camille.to_pig
