class CallbacksController < Devise::OmniauthCallbacksController
  
  ####TODO: use dynamic methods to generate this code. ####
  def google
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end
  def twitter
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end
end