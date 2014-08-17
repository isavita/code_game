module Modules
  class Palindrome
    def self.palindrome?(word)
      !word.nil? && word.length > 1 && word.downcase == word.downcase.reverse
    end

    def self.palindrome_sentence?(sentence)
      return false if sentence.nil?

      # delete all not [a-zA-Z0-9] symbols
      clear_sentence = sentence.gsub(/\W/, '')
      if palindrome? clear_sentence
        return true 
      else
        return false
      end
    end

    def self.find_all_palindrome_words(text)
      return [] if text.nil?

      words = text.scan(/\w+/)
      palindromes = []
      words.each do |word|
        palindromes.push(word) if palindrome? word
      end

      return palindromes
    end

    def self.find_all_palindrome_sentences(text)
      return [] if text.nil?

      sentences = text.scan(/[^!?.]+/)
      palindromes = []
      sentences.each do |sentence|
        palindromes.push(sentence) if palindrome_sentence? sentence
      end

      return palindromes
    end
  end
end