class Order < ApplicationRecord
  has_many :sneakers
  belongs_to :user, optional: true

end
