# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(matches)
    @word = @word.split('').sort
    matches.map! {|word| word.split('').sort != @word ? word = 'no match' : word}
    matches = matches.reject {|word| word == 'no match'}
  end
end

diaper = Anagram.new('diaper')
diaper.match(%w(hello world zombies pants diaper dipper))
