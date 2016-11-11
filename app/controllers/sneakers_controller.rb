class SneakersController < ApplicationController
  def index
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def edit
  end

  def new
  end
end
