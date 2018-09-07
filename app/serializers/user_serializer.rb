class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :tasks
end
