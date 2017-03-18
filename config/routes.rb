Rails.application.routes.draw do
  root 'songs#index'
  root 'artists#index'

 resources :songs
 resources :artists
end
