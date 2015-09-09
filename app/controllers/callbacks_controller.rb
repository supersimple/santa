class CallbacksController < Devise::OmniauthCallbacksController
  
  #generate instance methods for each auth provider in the config
  OMNIAUTH_CONFIG.keys.each do |method_name|
    define_method method_name do
      @user = User.from_omniauth(request.env["omniauth.auth"])
      sign_in_and_redirect @user
    end
  end
    
end