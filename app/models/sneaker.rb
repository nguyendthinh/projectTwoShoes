class Sneaker < ApplicationRecord
  belongs_to :brand
  validates_presence_of :brand_id # I think rails 5 has this validaion by default unless you have optional: true
  belongs_to :order, optional: true
end
