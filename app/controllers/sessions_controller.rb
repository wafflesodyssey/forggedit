class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user
    session[:user_id] = @user.id
    redirect_to root_path(@user)
    else
      redirect_to new_user_path
    end
  end
end
