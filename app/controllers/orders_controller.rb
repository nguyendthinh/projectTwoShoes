class OrdersController < ApplicationController
before_action :set_session, :total

  def set_session
    session[:order] ||= []
  end

  def index
    @order = session[:order]
  end

  def update
    @sneaker = Sneaker.find(params[:sneaker_id])
    session[:order].push(@sneaker)
    redirect_to sneaker_path(@sneaker)
  end

  def clear
    session[:order] = []
    @order = session[:order]
    redirect_to orders_path
  end

    def total
      @total = []
      session[:order].each do |sneaker|
        # think you just need @total.push(sneaker.price)--just this one line rather than those below

        @allPrices = sneaker["price"]
        # remove debugging statements in master branch
        # puts "*" * 50
        # puts @allPrices
        # puts "*" * 50
        @total << @allPrices
      end
      @totalprice = @total.inject(0, :+) #yoooo sick inject
    end

  def destroy
    session[:order].delete_if {|sneaker| sneaker["id"] == params[:sneaker_id].to_i} #super elegant
    redirect_to orders_path
  end

end
