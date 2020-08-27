Rails.application.routes.draw do
  root 'emails#index'
  resources :emails, only: [:create, :show]
end
