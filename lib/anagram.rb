# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(words)
    words = words.map_with_index {|word, index| word.length == @word.length ? word.split('').sort : words.delete_at(index)}
    puts words
  end
end

diaper = Anagram.new('diaper')
diaper.match(%w(hello world zombies pants dipper))
