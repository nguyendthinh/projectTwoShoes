class User < ApplicationRecord
  has_one :order

  def current_order
    if self.order.empty?
      self.order.create!
    end
    self.order
  end
  
end
