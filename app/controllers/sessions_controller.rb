class SessionsController < DeviseTokenAuth::SessionsController
    def sign_in_params
      params.permit(:email, :password)
    end
    wrap_parameters false
  end