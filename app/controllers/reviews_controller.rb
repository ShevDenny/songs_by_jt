class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, include: :songs
    end
end
