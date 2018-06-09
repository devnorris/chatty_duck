# on vagrant run bin/rails s -b 0.0.0.0 to start server
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index,:create,:show]
      resources :messages, only: [:index, :create]
      resources :chatrooms, only: [:index, :create]
      resources :trips, only: [:index, :create, :show]
      resources :locations, only: [:index, :create]
      resources :events, only: [:index, :create]
      resources :trips_user, only:[:show]
      mount ActionCable.server => '/cable'
    end
  end
  post 'authenticate', to: 'authentication#authenticate'
end
