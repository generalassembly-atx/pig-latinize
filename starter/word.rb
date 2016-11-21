class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def piglatinize
    first_letter = @original_word.slice(0)

    if (first_letter =~ /[aeiou]/)

      "#{@original_word}way"

    else

      @original_word.slice!(1, @original_word.length) + first_letter + "ay"

    end
  end
end

word = Word.new('eight')
sentence = gets.chomp

def piglatinize(original_word)
  first_letter = original_word.slice(0)
  second_letter = original_word.slice(1)

  if (first_letter =~ /[aeiou]/)

    "#{original_word}way"

  elsif (second_letter =~ /[aeiou]/)

    original_word.slice!(1, original_word.length) + first_letter + "ay"

  else

    original_word.slice!(2, original_word.length) + first_letter + second_letter + "ay"

  end
end

entencesay = sentence.split.map {|word| piglatinize(word)}

puts entencesay.join(' ')
