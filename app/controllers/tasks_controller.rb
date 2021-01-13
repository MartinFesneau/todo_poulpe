class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def show
    authorize @task
  end

  def index
    # @tasks = Task.where(user: current_user).order(priority: :desc)
    @tasks = policy_scope(Task).order(priority: :asc)
  end

  # def new
  #   @task = Task.new
  #   authorize @task
  # end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    authorize @task

    if @task.save
      redirect_to tasks_path
    else
      flash.alert("Content can not be blank")
      redirect_to tasks_path
    end
  end

  


  def edit
    authorize @task
  end

  def update
    authorize @task
    if @task.update(task_params)
      respond_to do |format|
        format.html { redirect_to tasks_path }
        format.js
      end
    else 
      flash.alert("Content can not be blank")
      respond_to do |format|
        format.html { render :edit }
        format.js
      end
    end
  end

  def destroy
    @task.delete
    authorize @task
    redirect_to tasks_path
  end

  def change_task_status
    @task = Task.find(params[:id].to_i)
    authorize @task
    @task.done = !@task.done
    @task.save
  end

  private 

  def task_params
    params.require(:task).permit(:id, :description, :deadline, :priority, :done)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
