class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :practitioners, through: :appointments

  geocoded_by :address
  after_validation :geocode
end
