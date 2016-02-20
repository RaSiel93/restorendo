Rails.application.routes.draw do
  devise_for :restaurants, path: 'auth'

  root to: 'restaurants#show'

  resources :restaurants do
    resources :categories do
      resources :dishes do
        resources :toppings
      end
    end
  end

end
