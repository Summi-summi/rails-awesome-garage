class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_one :favourite, dependent: :destroy

  validates :brand, :model, :year, presence: true
end
