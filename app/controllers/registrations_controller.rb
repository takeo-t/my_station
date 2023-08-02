class RegistrationsController < DeviseTokenAuth::RegistrationsController
    private
    wrap_parameters false
    def sign_up_params
        params.permit(:email, :password, :password_confirmation)
    end

    def account_update_params
      params.permit(:name, :email, :password, :password_confirmation)
    end
end