class ApplicationController < ActionController::Base
    layout false

    def welcome
        render 'layouts/welcome'
    end

    def current_driver
        @current_driver ||= Driver.first
    end
end
