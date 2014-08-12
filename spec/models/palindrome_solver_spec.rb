require 'spec_helper'

describe PalindromeSolver do

  it "is palindrome" do
    solver = PalindromeSolver.new
    solver.palindrome?("rotor").should be_true
  end

  it "is not palindrome" do
    solver = PalindromeSolver.new
    solver.palindrome?("work").should be_false
  end

  #xit
  it "is find all palindrome" do
    solver = PalindromeSolver.new
    palindromes = [ "eye", "radar", "pip", "toot" ]
  end

  it "is invalid without an input" do
    solver = PalindromeSolver.new
    solver.find_all_palindrome().should_not be_valid
  end

end