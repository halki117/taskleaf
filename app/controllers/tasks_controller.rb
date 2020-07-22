class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task =  Task.new
  end

  def create
    task = Task.new(task_params)
    task.save! #!マークをつける意味？
    redirect_to tasks_url, notice:"タスクを「#{task.name}」登録しました" #pathとurlの違い？、redirect_toとrenderの違いをはっきりさせよう
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    redirect_to task_url, notice: "タスク「#{task.name}」を更新しました"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to root_path, notice: "タスク「#{task.name}」を削除しました"
  end

  private
  
  def task_params
    params.require(:task).permit(:name, :description)
  end
end
