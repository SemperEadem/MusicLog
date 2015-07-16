Rails.application.routes.draw do

  get 'paths/show'

  devise_for :users

  root "pages#home"

  resources :paths do
    resources :practice_sessions
  end

  resources :practice_sessions, only: [:new]
  resources :paths, only: [:show]

end
