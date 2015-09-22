class RegistrationsController < Devise::RegistrationsController

  def after_update_path_for(resource)
    user_path(resource)
  end

  def sign_up_params
    params.require(:user).permit(:password, :website_url, :name, :bio, :email)
  end

  def account_update_params
    params.require(:user).permit(:password, :website_url, :name, :bio, :email, :current_password)
  end
    
  end