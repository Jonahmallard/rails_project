class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def show
        @car = Car.find_by_id(params[:id])
    end

    def new
        @car = Car.new
    end

    def create
        car = Car.create(car_params)
        redirect_to car_path(car)
    end

    def edit
        @car = Car.find_by_id(params[:id])
    end

    def update
        @car = Car.find_by_id(params[:id])
        @car.update(car_params)
        redirect_to car_path(@car)
    end

    private

    def car_params
        params.require(:car).permit(:year, :make, :model)
    end
end
