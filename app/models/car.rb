class Car < ApplicationRecord
    has_many :races
    has_many :driver, through: :races
end
