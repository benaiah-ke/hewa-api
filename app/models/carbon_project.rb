class CarbonProject < ApplicationRecord
    belongs_to :offsetter

    validates :avarage_age, length: {maximum: 19}
end
