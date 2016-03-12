Rails.application.routes.draw do
  get 'profiles/index'

  get 'profiles/show'

  get 'profiles/new'

  get 'profiles/edit'

  get 'languages/index'

  get 'languages/show'

  get 'languages/new'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'homes/index'

  devise_for :users
  root "home#index"

  resources :user do
    resources :language
    resources :profile
  end
end
