class UsersController < ApplicationController
  include ActiveModel::SecurePassword
  include ActiveModel::Validations
  # Awesome!!! ActiveModel has a ton of useful functionalities enclosed within it!
  validates :username, presence: true
  validates :password, presence: true
  # I think you want this stuff in models/user.rb though

  def index
    # in production this should probably only be viewable by an admin, but I think you have that base covered
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
