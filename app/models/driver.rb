class Driver < ApplicationRecord
    has_many :races
    has_many :cars, through: :races
    has_secure_password
end
