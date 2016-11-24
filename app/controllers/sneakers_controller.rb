class SneakersController < ApplicationController

  # you can DRY up some of your controller code with the code below
  
  # before_action :set_sneaker, only: [:edit, :update, :show, :destroy]
  # def set_sneaker
  #   @sneaker = Sneaker.find(params[:id])
  # end

  def index # dont think you need this method, since you're showing sneakers via brands
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
