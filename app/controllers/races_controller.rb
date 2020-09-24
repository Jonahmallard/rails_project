class RacesController < ApplicationController
    def index
        @races = Race.all
    end

    def show
        @race = Race.find_by_id(params[:id])
    end

    def new
        
    end
end
