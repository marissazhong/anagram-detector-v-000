# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(words)
    words = words.each_with_index.map {|word, index| word.length == @word.length ? word.split('').sort : word = ""}
    words = words.reject {|word| word.empty?}
  end
end

diaper = Anagram.new('diaper')
diaper.match(%w(hello world zombies pants dipper))
