class TasksController < ApplicationController
  def index
    # byebug
  end
  def show
    @tasks=Task.where('user_id=?',current_user.id)
    @cat=params[:category]
  end
  def new 
    @task=Task.new
  end
  def create
    @task=Task.new(task_params)
    #byebug
    if @task.save
      redirect_to tasks_all_path   
    elsif 
       render :new
    end
  end
  def edit   
    @task=Task.find(params[:id])
end
def update
  # byebug
    @task=Task.find(params[:id])
    #byebug
    if @task.update(task_params)
      # byebug
        redirect_to "/tasks/show"
    else
        render :edit
    end
end
def destroy 
  byebug
  @task=Task.find(params[:id]).destroy
  redirect_to root_path
end
def all
  @tasks=Task.all
  #byebug
end
   private
  def task_params
    params.require(:task).permit(:id,:title,:description,:status,:category,:user_id)
  end
end
