class DriversController < ApplicationController

    def new
        @driver = Driver.new
    end

    def create
        @driver = Driver.new(driver_params)
        if  @driver.save
            session[:driver_id] = @driver.id 
            redirect_to cars_path
        else
            render :new
        end
    end

    def show
        @driver = Driver.find_by_id(params[:id])
    end

    private

    def driver_params
        params.require(:driver).permit(:username, :password)
    end
end
