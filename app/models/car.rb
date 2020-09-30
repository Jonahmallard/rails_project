class Car < ApplicationRecord
    has_many :races
    has_many :drivers, through: :races
    validates :year, presence: :true
    validates :model, presence: :true

    def full_name
        "#{year} #{make} #{model}" 
    end
end
