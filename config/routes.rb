Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }
  root "homes#index"

  resources :users do
    resources :languages
    resources :profiles, only: [:show, :edit, :update]
  end
end
