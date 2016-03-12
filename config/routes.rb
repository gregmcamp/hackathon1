Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :user do 
    resources :language
    resources :profile
  end 
end
