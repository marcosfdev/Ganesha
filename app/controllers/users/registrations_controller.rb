class Users::RegistrationsController < Devise::RegistrationsController
layout "reg"
  def resource_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :image)
  end
  private :resource_params
end