class Driver < ApplicationRecord
    has_many :races
    has_many :cars, through: :races
    validates :username, presence: true
    validates :username, uniqueness: true
    has_secure_password
end
