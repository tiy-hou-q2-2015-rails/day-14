text = File.read './gettysburg.txt'

# get downcased words, ignores all punctuation
#    http://www.rubular.com/r/omNepEJMiq
words = text.downcase.split(/\W+/)

excluded_words = %w( that the to a and can of here have it in is not)

words.reject! {|word| excluded_words.include? word }


counted = words.inject({}) do |hash, word|
  hash[word] = hash[word].to_i + 1
  hash
end

counted
  .keys
  .sort_by{|word| counted[word]}
  .reverse
  .take(5)
  .each do |word|
    puts "#{word}: #{counted[word]}"
  end
  
puts "😎"
