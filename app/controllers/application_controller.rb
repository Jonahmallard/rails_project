class ApplicationController < ActionController::Base
    def current_driver
        @driver ||= Driver.find_by_id(session[:driver_id])
    end
end
