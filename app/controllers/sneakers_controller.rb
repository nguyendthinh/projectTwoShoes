class SneakersController < ApplicationController
  def index
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def new
    @brand = Brand.find(params[:brand_id])
    @sneaker = @brand.sneakers.new
  end

  def create
    @brand = Brand.find(params[:brand_id])
    @sneaker = @brand.sneakers.create(sneaker_params)
    redirect_to @sneaker
  end

  def edit
    @sneaker = Sneaker.find(params[:id])
  end

  def update
    @sneaker = Sneaker.find(params[:id])
    @sneaker.update(sneaker_params)
    redirect_to @sneaker
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
    redirect_to brands_path
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:name, :img_url, :price, :shoesize, :brand_id)
  end


end
