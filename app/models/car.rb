class Car < ApplicationRecord
    has_many :races
    has_many :driver, through: :races
    validates :year, presence: :true
    validates :model, presence: :true
end
