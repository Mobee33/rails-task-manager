class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Tasks.new(params[:task])
    @task.save
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task = Task.update(params[:task])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to restaurants_path
  end
end
