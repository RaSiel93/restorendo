Rails.application.routes.draw do
  devise_for :restaurants
  root 'session#new'
end
