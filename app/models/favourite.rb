class Favourite < ApplicationRecord
  belongs_to :car
  # Ensure that each car can be favourited only once
  validates :car_id, uniqueness: true
end
