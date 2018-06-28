# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(matches)
    matches.map! {|word| puts word.split("").sort }
    #if word.split("").sort != @word.split("").sort
    matches = matches.reject {|word| word.empty?}
    puts matches
  end
end

diaper = Anagram.new('diaper')
diaper.match(%w(hello world zombies pants dipper dipper))
