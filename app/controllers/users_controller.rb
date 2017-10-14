class UsersController < ApplicationController
    before_action :require_login, only: [:show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            log_in @user
            redirect_to @user
        else
            redirect_to(controller: 'users', action: 'new')
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation, :height, :nausea, :happiness, :tickets, :admin)
    end


end
