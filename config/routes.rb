Rails.application.routes.draw do
  root to: 'makes#index'

  resources :models, only: [:index]
end
