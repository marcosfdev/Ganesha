class Users::PasswordsController < Devise::PasswordsController
 layout "reg"
  def resource_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  private :resource_params
end