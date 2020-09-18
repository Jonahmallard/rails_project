class ApplicationController < ActionController::Base
    def current_driver
        @current_driver ||= Driver.first
    end
end
