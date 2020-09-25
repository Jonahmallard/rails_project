class Driver < ApplicationRecord
    has_many :races
    has_many :cars, through: :races
    validates :user_name, presence: true
    validates :user_name, uniqueness: true
    has_secure_password
end
