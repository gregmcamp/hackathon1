Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :user do
    resoureces :language
    resoureces :profile
  end
end
