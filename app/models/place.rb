class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_many_attached :photos
  after_validation :geocode, if: :will_save_change_to_address?
end
