class PalindromeSolver < ActiveRecord::Base
  def self.palindrome?(word)
    !word.nil? && word.length > 1 && word == word.reverse
  end

  def self.find_all_palindrome(text)
    return [] if text.nil?

    words = text.scan(/\w+/)
    palindromes = []
    words.each do |word|
      palindromes.push(word) if palindrome? word
    end

    return palindromes
  end
end