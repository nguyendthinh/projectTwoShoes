class BrandsController < ApplicationController

  def index
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
    redirect_to brands_path
  end

end
