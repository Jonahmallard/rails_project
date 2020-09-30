class SessionsController < ApplicationController
    def new; end

    def create
        driver = Driver.find_by(username: params[:driver][:username])
        if  driver&.authenticate(params[:driver][:password])
            session[:driver_id] = driver.id
            redirect_to cars_path
        else
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to '/'
    end
end
