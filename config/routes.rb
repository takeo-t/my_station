Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth',controllers: {
    registrations: 'registrations',
    sessions: 'sessions'
  }
  namespace :api do
    namespace :v1 do
      resources :stations, only: [:index]

      resources :users do
        resources :favorite_stations, only: [:index, :create, :destroy]
      end
    end
  end

  namespace :api do
    namespace :v2 do
      resources :stations, only: [:index]

      resources :users do
        resources :favorite_stations, only: [:index, :create, :destroy]
      end
    end
  end
end
