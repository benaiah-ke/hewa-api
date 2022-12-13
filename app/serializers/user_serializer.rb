class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :location

  has_many :emmitters, :offsetters
end
