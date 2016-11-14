class UsersController < ApplicationController
  include ActiveModel::SecurePassword
  include ActiveModel::Validations
  validates :username, presence: true
  validates :password, presence: true

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to brands_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :name)
  end

end
