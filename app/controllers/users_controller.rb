class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.permit(:email, :name, :uid, :provider)
  end
end
