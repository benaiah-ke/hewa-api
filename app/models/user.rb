class User < ApplicationRecord
    has_secure_password

    has_many :offsetters
    has_many :emmitters
end
