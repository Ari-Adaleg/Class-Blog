class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new
        @user.name = params[:user][:name]
        @user.email = params[:user][:email]
        @user.password = params[:user][:password]
        @user.password_confirmation = params[:user][:password_confirmation]

        if @user.save
            flash[:success] = "Welcome #{@user.name} to BlogOn!"
            redirect_to welcome_path
        else
            render :new
        end
    end
end
