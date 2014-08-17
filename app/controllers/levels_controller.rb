class LevelsController < ApplicationController
  def one
    @task = Task.find(1)
  end

  def two
    #@task = Task.find(2)
  end
end
