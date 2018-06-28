# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(words)
    words = words.split(' ')
    words.map! {|word| word.split('')}
  end
end