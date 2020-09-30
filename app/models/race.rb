class Race < ApplicationRecord
    belongs_to :driver
    belongs_to :car
    validates :date, presence: :true
    validates :location, presence: :true
    validates :placement, inclusion: 1..300 
    accepts_nested_attributes_for :car, reject_if: :all_blank

    def self.find_by_car_id(id)
        where(car_id: id)
    end
end
