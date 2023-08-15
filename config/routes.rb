Rails.application.routes.draw do

  devise_for :users 
  resources :users, only: [:index, :show] do
    resources :groups do
      resources :entities
    end
  end
  
end
