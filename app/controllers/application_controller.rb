class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :list_brands, :set_current_user

  # you might need every controller inheriting from this, in a strict sense, but I like this solution to making all the brands availabel across multiple controllers
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


  # really impressed how you've tackled a complex ERD, at the visual appearance, and also just in general how polished your project is!
end
