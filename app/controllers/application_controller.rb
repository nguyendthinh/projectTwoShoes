class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :list_brands, :set_current_user

  def list_brands
    @brands = Brand.all
  end

  def set_current_user
    if User.exists?(session[:user_id])
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def current_order
    if session[:order_id]
      @current_order ||= Order.find(session[:order_id])
    end
      if session[:order_id].nil?
      @current_order = Order.create!
      session[:order_id] = @current_order.id
    end
  @current_order
  end

end
