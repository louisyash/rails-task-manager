class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params[:title], params[:details], params[:completed])
    @task.save
  end

  def new
    @task = Task.new
  end


end
