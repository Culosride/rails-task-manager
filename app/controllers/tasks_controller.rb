class TasksController < ApplicationController
  before_action :select_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_par)
    # raise
    @task.save
    redirect_to task_path(@task)
  end

  private

  def task_par
    params.require(:task).permit(:title, :details)
  end

  def select_task
    @task = Task.find(params[:id])
  end
end
