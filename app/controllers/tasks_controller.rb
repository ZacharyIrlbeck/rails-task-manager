class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy toggle_done]
  def index
    @tasks = Task.all
  end

  def toggle_done
    @task.completed = !@task.completed
    @task.save
    redirect_to "/tasks"
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(tasks_params)
    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params)

    redirect_to "/tasks/#{@task.id}"
  end

  def destroy
    @task.destroy
    redirect_to '/tasks'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:title, :details)
  end
end
