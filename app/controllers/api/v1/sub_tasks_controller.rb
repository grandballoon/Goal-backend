class Api::V1::SubTasksController < ApplicationController
  before_action :find_sub_task, only: [:update, :show, :destroy]

 def index
   @sub_tasks = Task.all
   render json: @sub_tasks
 end

 def update
   @sub_task.update(note_params)
   if @sub_task.save
     render json: @sub_task, status: :accepted
   else
     render json: { errors: @sub_task.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def destroy
   @sub_task.destroy
 end

 private

 def sub_task_params
   params.permit(:title, :description, :user_id, :due_date)
 end

 def find_sub_task
   @sub_task = SubTask.find(params[:id])
 end
end
