class Word
  attr_accessor :original_word

  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def piglatinize()
    if (@original_word.start_with? 'a', 'e', 'i', 'o', 'u')
      puts "#{@original_word}ay"
    else
      puts @original_word
    end
  end

end

new_word = Word.new('ok')

puts new_word.piglatinize
