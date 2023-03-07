class TasksController < ApplicationController
  def index
  end
  def show
    # byebug
    @task=Task.find(current_user[:id])
  end
  def new 
    @task=Task.new
  end
  def create
    @task=Task.new(task_params)
    #byebug
    if @task.save
      redirct_to index    
    # elsif 
    #   render show
    end
  end
  def edit   
    @task=Task.find(current_user[:id])
end
def update
    @task=Task.find(current_user[:id])
    #byebug
    if @task.update(task_params)
        redirect_to "/tasks/show"
    else
        render :edit
    end
end
def destroy 
  @task=Task.find(current_task[:id]).destroy
end
def all
  @tasks=Task.all
end
   private
  def task_params
    params.require(:task).permit(:id,:title,:description,:status,:category,:user_id)
  end
end
