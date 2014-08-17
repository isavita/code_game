module SolutionsHelper  
  def solution?(solution)
    return false if solution.nil? || solution.empty?

    solution_words = convert_to_array(solution)
    text = Task.first[:content]
    words = Modules::Palindrome.find_all_palindrome_words(text)    
    return words.sort == solution_words.sort
  end

  private
  def convert_to_array(array_in_qoutes)
    array_in_qoutes.gsub(/\[|\]|"/, "").split(",").map(&:strip)
  end
end
