Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show] do
   resources :sleep_records, only: [:create]
   resources :friendships, only: [:index,:create, :destroy]
  end
   resources :sleep_records, only: [:index]
   get "users/:id/friend_records", to: "users#friend_records"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show] do
        resources :sleep_records, only: [:create]
        resources :friendships, only: [:index,:create,:destroy]
      end
      resources :sleep_records, only: [:index]
      get "users/:id/friend_records", to: "users#friend_records"
    end

  end

end
