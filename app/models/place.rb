class Place < ApplicationRecord
  paginates_per 5
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, length: {minimum: 3}, presence: true
  validates :address, presence: true
  validates :description, length: {minimum: 10, maximum: 200 }, presence: true
end
