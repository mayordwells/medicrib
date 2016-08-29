class Practitioner < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments 

  geocoded_by :address
  after_validation :geocode
end
