class User < ApplicationRecord
    has_secure_password

    # user validation
    validates :username, uniqueness: true, presence: true

    # relationships
    has_many :recipes
end
