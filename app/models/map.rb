class Map < ApplicationRecord
  belongs_to :user
  validates :word_name, :etymology, :lat, :lng, :user_id, presence: true
end
