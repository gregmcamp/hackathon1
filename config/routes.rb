Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }
  root "homes#index"

  resources :user do
    resources :languages
    resources :profiles
  end
end
