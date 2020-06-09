class UsersController < ApplicationController
    
    skip_before_action :authorized, only: [:new, :create]
    
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

            redirect_to users_posts_path
        else
            render :new
        end
    end

    def destroy
        @user = User.find_by(params[:id])
      if @user && @user == current_user
        session[:user_id] = nil
      end
      @user.destroy
  
      redirect_to welcome_path
    end
end
