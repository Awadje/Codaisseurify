Rails.application.routes.draw do
  root 'artists#index'

  resources :songs, only: [:show, :delete]
  resources :artists, only: [:edit, :update]

  resources :artists do
              resources :songs, only: [:show, :new, :create, :update, :edit]
            end

  resources :photo, only: [:show]

    end
