class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :guitars
end
