class TasksController < ApplicationController
  def index
    @task = Task.new
  end

  def show
  end

  def new
  end

  def create
    task = Task.new(task_params)
    task.save! #!マークをつける意味？
    redirect_to tasks_url, notice:"タスクを「#{task.name}」登録しました" #pathとurlの違い？、redirect_toとrenderの違いをはっきりさせよう
  end

  def edit
  end

  private
  
  def task_params
    params.require(:task).permit(:name, :description)
  end
end
