Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show] do
   resources :sleep_records, only: [:index,:create]
   resources :friendships, only: [:index]
  end
   resources :friendships, only: [:create, :destory]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
