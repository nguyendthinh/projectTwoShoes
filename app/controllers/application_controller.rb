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
    @current_user.current_order if @current_user.present?
  end

end
