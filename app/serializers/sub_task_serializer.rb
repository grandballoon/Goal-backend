class SubTaskSerializer < ActiveModel::Serializer
  attributes :id, :task_id, :description, :due_date, :completed, :order
end
