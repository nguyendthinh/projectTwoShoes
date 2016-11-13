class Sneaker < ApplicationRecord
  belongs_to :brand, optional: true
  belongs_to :order, optional: true
end
