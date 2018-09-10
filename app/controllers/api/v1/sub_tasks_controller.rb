class Api::V1::SubTasksController < ApplicationController
  before_action :find_sub_task, only: [:update, :show, :destroy]

 def index
   @sub_tasks = SubTask.all
   render json: @sub_tasks
 end

 def update
   @sub_task.update(sub_task_params)
   if @sub_task.save
     render json: @sub_task, status: :accepted
   else
     render json: { errors: @sub_task.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def show
   render json: @sub_task
 end

 def create
    @sub_task = SubTask.new(sub_task_params)
    if @sub_task.save
      render json: @sub_task
    end
  end

 def destroy
   @sub_task.destroy
 end

 private

 def sub_task_params
   params.permit(:description, :task_id, :due_date, :completed)
 end

 def find_sub_task
   @sub_task = SubTask.find(params[:id])
 end
end
