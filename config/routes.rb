Rails.application.routes.draw do
  
  devise_for :users
  root to: 'items#index'
  
  resources :items do
    post :purchase, on: :collection
  end
  resources :items, only: :index
  resources :cards, only: [:new, :index]
end
