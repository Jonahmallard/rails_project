class Race < ApplicationRecord
    belongs_to :driver
    belongs_to :car
    validates :date, presence: :true
    validates :location, presence: :true
    validates :placement, inclusion: 1..300 
    accepts_nested_attributes_for :car

    def car_attributes=(car_attributes)
        car = Car.find_or_create_by(car_attributes)
        self.car = car
        save
    end
end
