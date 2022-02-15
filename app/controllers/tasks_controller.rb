class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  # Show details of task
  def show
    @task = Task.find(params[:id])
  end

  # Add a new task
  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task)
  end

  # Edit a task (mark as completed / update title & details)
  #def edit
    #@task = Task.find(params[:id])
  #end

  # remove/ delete a task
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
