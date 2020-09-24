class RacesController < ApplicationController
    def index
        @races = Race.all
    end

    def show
        @race = Race.find_by_id(params[:id])
    end

    #def race_params
     #   params.require(:race).permit(:action, :id)
    #end
end
