class User < ApplicationRecord
  has_many :maps

  has_secure_password
  validates_uniqueness_of :username
end
