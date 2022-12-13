class OffsetterSerializer < ActiveModel::Serializer
  attributes :id 

  has_many :carbon_projects
end
