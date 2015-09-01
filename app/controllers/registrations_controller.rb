class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    params.require(:user).permit(:password, :website_url, :name, :email)
  end

  def account_update_params
    params.require(:user).permit(:password, :website_url, :name, :email, :current_password)
  end
    
  end