class RidesController < ApplicationController

    def new
        @ride = Ride.new
    end

    def create
        @ride = Ride.create(user_id: params[:user_id], attraction_id: params[:attraction_id])
        @user = @ride.user
        redirect_to user_path(@user), alert: "#{@ride.take_ride}"
    end


end
