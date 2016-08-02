class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end
  def piglatinize
    if @original_word.start_with?('a', 'e', 'i', 'o', 'u')
      @original_word << 'way'
      puts @original_word
    else
      first_letter = @original_word[0]
      @original_word.slice!(0)
      puts @original_word + first_letter + "ay"
    end
  end
end
















