class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])

    flash[:notice] = 'User deleted'
    @user.destroy
    redirect_to users_path
  end
end