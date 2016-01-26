module FunWithStrings

  def palindrome?
    word = self.downcase.scan(/\w/)
    word == word.reverse
  end

  def count_words
    words = self.downcase.scan(/\w+/)
    array = Hash.new
    words.each do |word|
      if word.length == 0
        next
      end
      if array.has_key?(word)
        array[word] += 1
      else
        array[word] = 1
      end
    end
    array
  end

  def anagram_groups
    words = self.split
    return words.group_by { |word| word.downcase.chars.sort }.values
  end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
