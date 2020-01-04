Rails.application.routes.draw do
  
  root to: 'items#index'
  resources :items do
    post :purchase, on: :collection
  end
  resources :items, only: :index
end
