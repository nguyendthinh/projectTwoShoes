class OrdersController < ApplicationController
before_action :set_session

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

end
