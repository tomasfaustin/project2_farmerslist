class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:login][:email])
    if user && user.authenticate(params[:login][:password])
      # set a cookie, so our browser knows
      # we are who we say we are
    else
      # give them another shot at logging
      # perhaps by redirecting back to the login form
    end
  end

  def destroy
  end
end
