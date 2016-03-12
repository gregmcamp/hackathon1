Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root "home#index"

  resources :user do
    resources :language
    resources :profile
  end
end
