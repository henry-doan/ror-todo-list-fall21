Rails.application.routes.draw do
  # api endpoints 
  # all routes in the api namespace, 
  # allow rails and react to communicate to each other
  # no more nav route 
  # no root route 

  namespace :api do

    resources :todos do
      resources :comments
    end

    resources :comments do
      resources :likes 
    end
  end

  get '*other', to: 'static#index'

end
