# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(matches)
    matches.map! {|word| word.length == @word.length ? word.split('').sort : word = ""}
    matches = matches.reject {|word| word.empty?}
    @word = @word.split('').sort
    matches = matches.each {|match| word = "" if match != word}
    matches = matches.reject {|word| word.empty?}

  end
end

diaper = Anagram.new('diaper')
diaper.match(%w(hello world zombies pants dipper dipper))
