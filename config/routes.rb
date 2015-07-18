Rails.application.routes.draw do

  # Authentication

  devise_for :users

  # Static Pages

  root "pages#home"

  resources :paths do
    resources :practice_sessions
  end

  resources :practice_sessions, only: [:new, :create, :show]
  resources :paths, only: [:show]
  resources :user_exercises, only: [:new, :create]

  get "exercises/:id/start" => "user_exercises#new", as: "start_user_exercise"

end
