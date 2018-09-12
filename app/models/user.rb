class User < ApplicationRecord
  has_many :tasks
  has_many :sub_tasks, through: :tasks
  validates :user_name, {presence: true, uniqueness: true}

end
