Rails.application.routes.draw do
  root 'songs#index'
  
  resources :songs do
    resources :artists
  end

      resources :artists do
        resources :songs
      end
    end
