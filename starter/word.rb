class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def piglatinize
    if @original_word.start_with? 'a', 'e', 'i', 'o', 'u'
      puts "#{@original_word}way"
    else
      first_letter = @original_word[0]
      rest_of_word = @original_word[1..-1]
      puts "#{rest_of_word}#{first_letter}ay"

    end

  end

end

word = Word.new('inbox')
puts word.piglatinize

word = Word.new('go fuck yourself')
puts word.piglatinize
