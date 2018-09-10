class TaskSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :description, :due_date, :completed, :sub_tasks
end
