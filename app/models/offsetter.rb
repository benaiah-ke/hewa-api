class Offsetter < ApplicationRecord
    belongs_to :user
    has_many :carbon_projects
end
