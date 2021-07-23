Rails.application.routes.draw do


resources :songs, only: [:show]

# resources :songs, only: [:index, :show] do
#     resources :reviews, only: [:index]
# end

# get '/songs/:id/reviews'

resources :super_fans, only: [:index, :destroy] do
    resources :songs, only: [:index]
end

resources :reviews, only: [:create, :index]
end
