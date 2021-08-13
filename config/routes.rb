Rails.application.routes.draw do


resources :songs, only: [:index, :show]
resources :super_fans, only: [:destroy] 

# resources :songs, only: [:index, :show] do
#     resources :reviews, only: [:index]
# end

get '/song/top_charts', to: "songs#top_charts"

resources :reviews, only: [:create, :index]
end
