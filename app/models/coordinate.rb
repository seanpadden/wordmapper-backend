class Coordinate < ApplicationRecord
  belongs_to :map
  validates :lat, :lng, :map_id, presence: true

end
