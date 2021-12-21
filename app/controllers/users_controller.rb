class UsersController < ApplicationController

  def new
    @user =  User.new
  end

  def create
    @user = User.new(user_params)
    @user.profile_image_id = current_user.id
    @user.save
  end

  def index
    @user = User.all
  end

  def show
    @user = User.find_by(params[:id])
  end

  def edit
    @user = User.find_by(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
