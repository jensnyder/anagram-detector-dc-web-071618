require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array_of_possible_anagrams)
    #return all matches in an array
    #if no matches, return an empty array
    anagrams = []
    array_of_possible_anagrams.each do |possible_anagram|
      if possible_anagram.split("").sort == word.split("").sort
        anagrams << possible_anagram
      end
    end
    anagrams
  end

end
