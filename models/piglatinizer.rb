class PigLatinizer

  def piglatinize(word)
    vowels = ['a','e','i','o','u']
    if vowels.include?(word.downcase[0])
      word + "way"
    else
      split_word = word.split(/(?=[aeiou])/)
      split_word << split_word.shift
      split_word << "ay"
      split_word.join()
    end
  end

  def to_pig_latin(sentence)
    array = sentence.split()
    array.collect {|word| piglatinize(word)}.join(' ')
  end


end
