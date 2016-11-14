class SneakersController < ApplicationController
  def index
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.create!(sneaker_params)
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
