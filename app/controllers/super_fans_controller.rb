class SuperFansController < ApplicationController
4    def index
        superfans = SuperFan.all
        render json: superfans, include: song
    end

    def destroy
        # //  superFan = SuperFan.find(params[:id])
        superFan = SuperFan.find_by(id: params[:id])
        if superFan
            superFan.destroy
            head :no_content
        else
            render json: { error: "Superfan not found"}, status: :not_found
        end
    end
end
