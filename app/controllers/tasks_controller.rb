class TasksController < ApplicationController
  def index
  end
  def show
    @task=Task.find(current_task[:id])
  end
  def new 
    @task=Task.new
  end
  def create
    @task=Task.new(task_params)
    if @task.save
      redirct_to index    
    elsif 
      render show
    end
  end
  def edit   
    @task=Task.find(current_task[:id])
end
def update
    @task=Task.find(current_task[:id])
    #byebug
    if @task.update(task_params)
        redirect_to "/tasks/show"
    else
        render :edit
    end
end
def destroy 
  @book=Book.find(current_task[:id]).destroy
end
   private
  def task_params
    params.require(:task).permit(:title,:description,:status,:category)
  end
end
