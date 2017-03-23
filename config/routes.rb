Rails.application.routes.draw do
  root 'artists#index'

  resources :songs, only: [:show]
  resources :artists, only: [:edit, :update]

  resources :artists do
              resources :songs, only: [:show, :new, :create, :update]
            end

  resources :photo, only: [:show]

    end
