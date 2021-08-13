class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, include: :songs, except: [:created_at, :updated_at]
    end
end
