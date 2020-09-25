class Race < ApplicationRecord
    belongs_to :driver
    belongs_to :car
    validates :date, presence: :true
    validates :location, presence: :true
    validates :placement, inclusion: 1..300 
end
