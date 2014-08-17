class SolutionsController < ApplicationController
  include SolutionsHelper

  def new 
    @solution = Solution.new
  end

  def create
    if solution? params[:solution][:text]
      @solution = Solution.new(solution_params)      
      render 'levels/two' if true #@solution.save   
    else     
      # TODO: show infromation that the solution wasn't correct 
      redirect_to levels_one_path
    end
  end

  private
  def solution_params
    solution = {
      email: current_user[:email] || 'none', # TODO: raise error in this case
      level: 1,
      completed: true
    }
  end
end