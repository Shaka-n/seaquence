class SessionsController < ApplicationController
    skip_before_action :authenticate_user, only: [:new, :create]

    def new
    end

    def create
        @user = User.find_by(username: params[:session][:username])
        if @user && @user.authenticate(params[:session][:password])
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else 
          flash[:error] = "Username or Password not right"
          redirect_to new_login_path
        end 
      end 
    
      def destroy
        session[:user_id] = nil
        # session.delete(:user_id)
    
        redirect_to users_path
      end 
end
