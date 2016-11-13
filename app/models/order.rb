class Order < ApplicationRecord
  has_many :sneakers
  belongs_to :users
end
