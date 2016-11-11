class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :list_brands

  def list_brands
    @brands = Brand.all
  end
end
