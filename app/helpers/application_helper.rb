module ApplicationHelper

    def render_navigation
        if session[:driver_id] 
            link_to "Logout", '/logout', method: 'delete'
        else 
            link_to 'Login', '/login'
        end 
    end

    
end
