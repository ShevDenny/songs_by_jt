class SongsController < ApplicationController

    def index
        songs = Song.all
        render json: songs 
        # except: [:created_at, :updated_at]
    end

    def show
        song = Song.find_by(id: params[:id])

        if song
            render json: song.with_reviews
        else 
            render json: { error: "song not found"}, status: :not_found
        end
    end

    def top_charts
        top_song = Song.most_popular

        render json: top_song.json_obj
    end
end
