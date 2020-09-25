class RacesController < ApplicationController
    before_action :set_race, only: [:show, :edit, :update, :destroy]

    def index
        @races = Race.all
    end

    def show; end

    def new
        @race = Race.new
    end

    def create
        race = Race.create(race_params)
        redirect_to race_path(race)
    end

    def edit; end

    def update
        @race.update(race_params)
        redirect_to race_path(@race)
    end

    def destroy
        @race.destroy
        redirect_to races_path
    end

    private

    def race_params
        params.require(:race).permit(:race_type, :location, :date, :placement)
    end

    def set_race
        @race = Race.find_by_id(params[:id])
    end
end
