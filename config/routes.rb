Rails.application.routes.draw do
  root "songs#index"

  get "songs" => "songs#index"
  get 'songs/new' => "songs#new", as: :new_song
  get "songs/:id" => "songs#show", as: :song
  post "songs" => "songs#create"
end
