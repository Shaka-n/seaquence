class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user.create(user_params)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def show
    end

    def destroy
        @user.destroy
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :title, :country, :bio, :profile_img)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
