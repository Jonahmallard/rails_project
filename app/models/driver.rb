class Driver < ApplicationRecord
    has_many :races
    has_many :cars, through: :races
    validates :username, presence: true
    validates :username, uniqueness: true
    has_secure_password

    def self.from_omniauth(auth)
        find_or_create_by(username: auth[:info][:email]) do |user|
            user.password = SecureRandom.hex(15)
        end
    end
end
