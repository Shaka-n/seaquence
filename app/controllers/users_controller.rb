class UsersController < ApplicationController
    skip_before_action :authenticate_user, only: [:new, :create, :index]
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        @users = User.search(params[:search])
        if @users && @users.length == 0
            @err = "No User Found."
        end
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

    def follow!(followed)
        relationships.create!(:followed_id => followed.id)
    end

    def destroy
        @user.destroy
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :title, :country, :bio, :profile_img, :search)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
