class SolutionsController < ApplicationController
  include SolutionsHelper

  def create
    if solution_of_level_one? params[:solution][:text]
      @solution = Solution.new(solution_params)      
      render 'levels/two' if @solution.save   
    else     
      # TODO: show infromation that the solution wasn't correct 
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
end