class UsersController < ApplicationController
  def create
    User.create(user_params)
  end

  private

  def user_params
    params.permit(:email, :uid, :provider)
  end
end
