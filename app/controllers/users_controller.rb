class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = "You have successfully signed up!"
        redirect_to users_path
      else
        flash.now.alert = 'Invalid login credentials - try again!'
        render :new
      end
    end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
