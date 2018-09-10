class Api::V1::TasksController < ApplicationController
  before_action :find_task, only: [:update, :show, :destroy]

 def index
   @tasks = Task.all
   render json: @tasks
 end

 def show
   render json: @task
 end

 def update
   @task.update(task_params)
   if @task.save
     render json: @task, status: :accepted
   else
     render json: { errors: @task.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task
    end
  end

 def destroy
   @task.destroy
 end

 private

 def task_params
   params.permit(:title, :description, :user_id, :due_date, :completed)
 end

 def find_task
   @task = Task.find(params[:id])
 end

end
