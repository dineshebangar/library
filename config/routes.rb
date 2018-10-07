Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :searches, only: [:index], :defaults => {:format => 'json'}
      mount_devise_token_auth_for 'User', at: 'auth'
    end 
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
