class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      flash[:notice] = "account created successfully!"
      session[:user_id] = @user.id
      redirect_to new_post_path
    else
      flash.now.alert = "oops, couldn't create account. please make sure you are using a valid email and password and try again."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
