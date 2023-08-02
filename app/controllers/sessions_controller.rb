class SessionsController < DeviseTokenAuth::SessionsController
    wrap_parameters false

    def sign_in_params
      params.permit(:email, :password)
    end

    def create
        super do
          new_auth_header = @resource.create_new_auth_token
          response.headers['Access-Token'] = new_auth_header['access-token']
          response.headers['Client'] = new_auth_header['client']
          response.headers['Uid'] = @resource.uid
        end
    end
  end