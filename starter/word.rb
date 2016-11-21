class Word
  def initialize(original_word)
    @original_word = original_word.downcase
  end

  def piglatinize
    
  end

end


test1 = Word.new('egg')
puts "Expected: eggway"
puts "Got: #{test1.piglatinize}"
test2 = Word.new('inbox')
puts "Expected: inboxway"
puts "Got: #{test2.piglatinize}"
test3 = Word.new('eight')
puts "Expected: eightway"
puts "Got: #{test3.piglatinize}"

test4 = Word.new('happy')
puts "Expected: appyhay"
puts "Got: #{test4.piglatinize}"
test5 = Word.new('duck')
puts "Expected: uckday"
puts "Got: #{test5.piglatinize}"
test6 = Word.new('glove')
puts "Expected: oveglay"
puts "Got: #{test6.piglatinize}"

test7 = Word.new('yellow')
puts "Expected: ellowyay"
puts "Got: #{test7.piglatinize}"
test8 = Word.new('rhythm')
puts "Expected: ythmrhay"
puts "Got: #{test8.piglatinize}"

test9 = Word.new('queen')
puts "Expected: eenquay"
puts "Got: #{test9.piglatinize}"
test10 = Word.new('squeal')
puts "Expected: ealsquay"
puts "Got: #{test10.piglatinize}"
