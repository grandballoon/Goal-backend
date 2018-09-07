class SubTask < ApplicationRecord
  belongs_to :task
  belongs_to :user, through: :task
end
