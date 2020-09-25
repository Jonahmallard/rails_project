class CarsController < ApplicationController
    before_action :set_car, only: [:show, :edit, :update, :destroy]

    def index
        @cars = Car.all
    end

    def show; end

    def new
        @car = Car.new
    end

    def create
        car = Car.create(car_params)
        redirect_to car_path(car)
    end

    def edit; end

    def update
        @car.update(car_params)
        redirect_to car_path(@car)
    end

    def destroy
        @car.destroy
        redirect_to cars_path
    end

    private

    def car_params
        params.require(:car).permit(:year, :make, :model)
    end

    def set_car
        @car = Car.find_by_id(params[:id])
    end
end
