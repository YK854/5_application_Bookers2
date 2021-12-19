class UsersInfoController < ApplicationController

    def new
      @user = UserInfo.new
    end

    def create
    user = UserInfo.new(user_params)
    user.save
    redirect_to users_info_index_path
    end


    def index
      @users = UserInfo.all
    end

    private

    def user_params
      params.require(:user_info).permit(:name, :introduction, :profile_image)
    end
end
