class Sneaker < ApplicationRecord
  belongs_to :brand
  validates_presence_of :brand_id
  has_secure_password
  belongs_to :order, optional: true
end
