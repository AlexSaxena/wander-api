Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    resources :trails, only: [:index, :create, :show]
    mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
  end
end