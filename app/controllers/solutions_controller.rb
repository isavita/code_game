class SolutionsController < ApplicationController
  def new 
    @solution = Solution.new
  end

  def create
    #redirect_to levels_one_path unless solution? params[:solution][:text]

    @solution = Solution.new(solution_params)
    if @solution.save
       render 'levels/two'
    else      
      redirect_to levels_one_path
    end
  end

  private
  def solution_params
    solution = {
      email: current_user[:email] || 'none',
      level: 1,
      completed: true
    }
  end

  def solution?(text)
    # to add function from the static class
    false
  end
end
