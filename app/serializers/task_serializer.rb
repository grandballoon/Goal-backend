class TaskSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :description, :due_date, :sub_tasks
end
