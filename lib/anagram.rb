# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(words)
    words.map! {|word| word.length == @word.length ? word.split('').sort : words.delete(word)}
    #
  end
end

diaper = Anagram.new('diaper')
diaper.match(%w(hello world zombies pants dipper))
