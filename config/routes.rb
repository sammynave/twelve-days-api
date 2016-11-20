Rails.application.routes.draw do
  resources :songs, only: [:create, :index, :show]
end
