class User < ApplicationRecord
    has_secure_password

    has_one :offsetters
    has_one :emmitters
end
