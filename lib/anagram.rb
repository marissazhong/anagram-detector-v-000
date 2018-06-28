# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(matches)
    @word = @word.split('').sort
    matches = matches.map! {|word|
      word = 'no match' if word.split('').sort != @word
    }
    puts matches
    matches = matches.reject {|word| word == 'no match'}
    #puts matches
  end
end

diaper = Anagram.new('diaper')
diaper.match(%w(hello world zombies pants diaper dipper))
