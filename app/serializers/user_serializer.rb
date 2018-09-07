class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name
  has_many :tasks, include_nested_associations: true
end
