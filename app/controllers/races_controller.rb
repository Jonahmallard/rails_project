class RacesController < ApplicationController
    before_action :set_race, only: [:show, :edit, :update, :destroy]
    before_action :set_car

    def new
        @car = Car.find_by_id(params[:car_id]) if params[:car_id]
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
            @races = Race.find_by_car_id(params[:car_id])
        else 
            @races = Race.all
        end
    end

    def edit
        if @race.driver == current_driver
        else
            flash[:alert] = "You can only edit your own race"
            
        end
    end

    def update
        if @race.driver == current_driver
            @race.update(race_params)
            redirect_to race_path(@race)
        else 

        end
    end

    def destroy
        if @race.driver == current_driver
            @race.destroy
            redirect_to races_path
        else

        end
    end

    private

    def race_params
        params.require(:race).permit(:race_type, :location, :date, :placement, :car_id, car_attributes: [:year, :make, :model])
    end

    def set_race
        @race = Race.find_by_id(params[:id])
    end

    def set_car
        @car = Car.find_by_id(params[:id])
    end
end
