class Map < ApplicationRecord
  belongs_to :user
  has_many :coordinates
  validates :word_name, :etymology, :user_id, presence: true
end
