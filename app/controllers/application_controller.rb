class ApplicationController < ActionController::Base
    helper_method :current_driver

    private 

    def current_driver
        @driver ||= Driver.find_by_id(session[:driver_id])
    end
end
