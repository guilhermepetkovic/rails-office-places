class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_one_attached :photo
  after_validation :geocode, if: :will_save_change_to_address?

  validates :photo, :price, :address, :name, :description, presence: true
end
