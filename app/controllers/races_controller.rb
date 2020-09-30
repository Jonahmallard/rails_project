class RacesController < ApplicationController
    before_action :set_race, only: [:show, :edit, :update, :destroy]

    def new
        @car_id = Car.find_by_id([:car_id]) if params[:car_id]
        @race = Race.new
    end

    def create
        @race = current_driver.races.build(race_params)
        if @race.save
            redirect_to race_path(@race)
        else
            render :new
        end
    end

    def show; end

    def index
        if params[:car_id]
            @races = Race.find_by_car_id([:car_id])
        else 
            @races = Race.all
        end
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
        params.require(:race).permit(:race_type, :location, :date, :placement, :car_id, car_attributes: [:year, :make, :model])
    end

    def set_race
        @race = Race.find_by_id(params[:id])
    end
end
