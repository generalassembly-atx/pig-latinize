class Word
  attr_accessor :word

   def initialize(word)
     @word = word.downcase
   end

  def piglatinize()
    if (@word.start_with? 'a', 'e', 'i', 'o', 'u')
      puts "#{@word}ay"
    else
      puts @word
    end
  end

 end

new_word = Word.new('ok')

puts new_word.piglatinize
