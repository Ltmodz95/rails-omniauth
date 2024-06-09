class SessionsController < ApplicationController
  def index; end

  def omniauth
    user = User.find_or_create_by(name: request.env['omniauth.auth']['info']['name'],
                                  email: request.env['omniauth.auth']['info']['email'],
                                  uid: request.env['omniauth.auth']['uid'],
                                  provider: request.env['omniauth.auth']['provider'])
    redirect_to user_path(user)
  end
end
