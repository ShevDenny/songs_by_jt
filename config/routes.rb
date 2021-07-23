Rails.application.routes.draw do
resources :songs, only: [:index, :show]
resources :super_fans, only: [:index, :destroy]
resources :reviews, only: [:create]
end
