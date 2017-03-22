Rails.application.routes.draw do
  root 'songs#index'

  resources :songs
  resources :artists


      resources :artists do
        resources :songs
      end

      resources :photos

    end
