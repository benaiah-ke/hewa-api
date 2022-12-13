class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :location

  has_one :emmitters, :offsetters
end
