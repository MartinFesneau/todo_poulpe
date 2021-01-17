class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def show
    authorize @task
  end

  def index
    @tasks = policy_scope(Task).order(done: :asc, priority: :asc, deadline: :asc, updated_at: :desc)
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    authorize @task

    if @task.save
      redirect_to tasks_path
    else
      respond_to do |format|
        format.html { render :new }
        format.js { render :task_error_create }
      end
    end
  end

  def edit
    authorize @task
  end

  def update
    authorize @task
    if @task.update(task_params)
      respond_to do |format|
        format.html { redirect_to task_path(@task) }
        format.js { :update} 
      end
    else 
      respond_to do |format|
        format.html { render :edit }
        format.js { render :task_error_update }
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
