class Order < ApplicationRecord
  has_many :sneakers
  belongs_to :user, optional: true
  before_action :total

  def total
    session[:order].each do |sneaker|
      @allPrices = sneaker["price"].to_i
      puts @allPrices
      @total += @allPrices
    end
    @total
  end

end
