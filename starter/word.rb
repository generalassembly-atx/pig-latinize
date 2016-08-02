class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end
  def piglatinize(original_word) #why can't I pass @original_word?
    vowels = ["a", "e", "i", "o", "u"]
    vowels.each do |i|#why does it stop at first element?
      if original_word.chars.first == i
        return "#{original_word}ay"
      elsif
        first_letter = original_word[0]
        original_word.slice!(0)
        return "#{original_word}#{first_letter}ay"
      end
    end
  end

end

new_word = Word.new("ames")

new_word.piglatinize "atts"
