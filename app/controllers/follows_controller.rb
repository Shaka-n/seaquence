class FollowsController < ApplicationController
    def new
        @follow = Follow.new
        @users = User.all
        @locations = Location.all
    end
    
    def create
        byebug
        follow = Follow.create(follow_params)
        redirect_to user_path(follow.user)
    end

    
    private
    def follow_params
        params.require(:follow).permit(:user_id, :location_id)
    end

end
