class TodosController < ApplicationController
  def index
    @todo = Todo.new
    @todos = Todo.all
  end
  
  def create
    Todo.create(params[:todo])
    redirect_to todos_path
  end
end
