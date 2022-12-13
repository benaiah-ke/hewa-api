class User < ApplicationRecord
    has_many :offsetters
    has_many :emmitters
end
