class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :location

  has_many :offsetters
end
